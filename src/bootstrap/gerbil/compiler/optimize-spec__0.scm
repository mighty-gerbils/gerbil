(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708210944)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl242684_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247879 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl242684_ __tmp247879))
           (let ()
             (declare (not safe))
             (table-set! _tbl242684_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242684_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242684_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242684_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl242684_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx242667_ . _args242669_)
        (let ((__tmp247881
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242669_)
                     (gxc#compile-e__0 _stx242667_)
                     (let ((_arg1242674_ (car _args242669_))
                           (_rest242676_ (cdr _args242669_)))
                       (if (null? _rest242676_)
                           (gxc#compile-e__1 _stx242667_ _arg1242674_)
                           (let ((_arg2242679_ (car _rest242676_))
                                 (_rest242681_ (cdr _rest242676_)))
                             (if (null? _rest242681_)
                                 (gxc#compile-e__2
                                  _stx242667_
                                  _arg1242674_
                                  _arg2242679_)
                                 (apply gxc#compile-e
                                        _stx242667_
                                        _arg1242674_
                                        _arg2242679_
                                        _rest242681_))))))))
              (__tmp247880 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp247881
           gxc#current-compile-methods
           __tmp247880))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl242664_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247882 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl242664_ __tmp247882))
           (let ()
             (declare (not safe))
             (table-set! _tbl242664_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242664_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242664_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242664_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl242664_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242664_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl242664_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl242664_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl242664_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx242647_ . _args242649_)
        (let ((__tmp247884
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242649_)
                     (gxc#compile-e__0 _stx242647_)
                     (let ((_arg1242654_ (car _args242649_))
                           (_rest242656_ (cdr _args242649_)))
                       (if (null? _rest242656_)
                           (gxc#compile-e__1 _stx242647_ _arg1242654_)
                           (let ((_arg2242659_ (car _rest242656_))
                                 (_rest242661_ (cdr _rest242656_)))
                             (if (null? _rest242661_)
                                 (gxc#compile-e__2
                                  _stx242647_
                                  _arg1242654_
                                  _arg2242659_)
                                 (apply gxc#compile-e
                                        _stx242647_
                                        _arg1242654_
                                        _arg2242659_
                                        _rest242661_))))))))
              (__tmp247883 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp247884
           gxc#current-compile-methods
           __tmp247883))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl242644_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp247885 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl242644_ __tmp247885))
           (let ()
             (declare (not safe))
             (table-set! _tbl242644_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl242644_ '%#call gxc#subst-object-refs-call%))
           _tbl242644_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx242627_ . _args242629_)
        (let ((__tmp247887
               (lambda ()
                 (declare (not safe))
                 (if (null? _args242629_)
                     (gxc#compile-e__0 _stx242627_)
                     (let ((_arg1242634_ (car _args242629_))
                           (_rest242636_ (cdr _args242629_)))
                       (if (null? _rest242636_)
                           (gxc#compile-e__1 _stx242627_ _arg1242634_)
                           (let ((_arg2242639_ (car _rest242636_))
                                 (_rest242641_ (cdr _rest242636_)))
                             (if (null? _rest242641_)
                                 (gxc#compile-e__2
                                  _stx242627_
                                  _arg1242634_
                                  _arg2242639_)
                                 (apply gxc#compile-e
                                        _stx242627_
                                        _arg1242634_
                                        _arg2242639_
                                        _rest242641_))))))))
              (__tmp247886 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp247887
           gxc#current-compile-methods
           __tmp247886))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx239297_)
        (letrec ((_generate-method-bind239299_
                  (lambda (_$t242621_ _id242622_ _$id242623_)
                    (let ((_$tmp242625_
                           (let ((__tmp247888 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp247888))))
                      (let ((__tmp247936
                             (let ()
                               (declare (not safe))
                               (cons _$id242623_ '())))
                            (__tmp247889
                             (let ((__tmp247890
                                    (let ((__tmp247891
                                           (let ((__tmp247934
                                                  (let ((__tmp247935
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp247935)))
                                                 (__tmp247892
                                                  (let ((__tmp247893
                                                         (let ((__tmp247894
                                                                (let ((__tmp247895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp247896
                                      (let ((__tmp247897
                                             (let ((__tmp247917
                                                    (let ((__tmp247918
                                                           (let ((__tmp247933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp242625_ '())))
                         (__tmp247919
                          (let ((__tmp247920
                                 (let ((__tmp247921
                                        (let ((__tmp247931
                                               (let ((__tmp247932
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp247932)))
                                              (__tmp247922
                                               (let ((__tmp247929
                                                      (let ((__tmp247930
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t242621_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp247930)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp247923
                                                      (let ((__tmp247927
                                                             (let ((__tmp247928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp247928)))
                    (__tmp247924
                     (let ((__tmp247925
                            (let ((__tmp247926
                                   (let ()
                                     (declare (not safe))
                                     (cons _id242622_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp247926))))
                       (declare (not safe))
                       (cons __tmp247925 '()))))
                (declare (not safe))
                (cons __tmp247927 __tmp247924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp247929
                                                       __tmp247923))))
                                          (declare (not safe))
                                          (cons __tmp247931 __tmp247922))))
                                   (declare (not safe))
                                   (cons '%#call __tmp247921))))
                            (declare (not safe))
                            (cons __tmp247920 '()))))
                     (declare (not safe))
                     (cons __tmp247933 __tmp247919))))
              (declare (not safe))
              (cons __tmp247918 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp247898
                                                    (let ((__tmp247899
                                                           (let ((__tmp247900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp247915
                                 (let ((__tmp247916
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp242625_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp247916)))
                                (__tmp247901
                                 (let ((__tmp247913
                                        (let ((__tmp247914
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp242625_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp247914)))
                                       (__tmp247902
                                        (let ((__tmp247903
                                               (let ((__tmp247904
                                                      (let ((__tmp247911
                                                             (let ((__tmp247912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp247912)))
                    (__tmp247905
                     (let ((__tmp247909
                            (let ((__tmp247910
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp247910)))
                           (__tmp247906
                            (let ((__tmp247907
                                   (let ((__tmp247908
                                          (let ()
                                            (declare (not safe))
                                            (cons _id242622_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp247908))))
                              (declare (not safe))
                              (cons __tmp247907 '()))))
                       (declare (not safe))
                       (cons __tmp247909 __tmp247906))))
                (declare (not safe))
                (cons __tmp247911 __tmp247905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp247904))))
                                          (declare (not safe))
                                          (cons __tmp247903 '()))))
                                   (declare (not safe))
                                   (cons __tmp247913 __tmp247902))))
                            (declare (not safe))
                            (cons __tmp247915 __tmp247901))))
                     (declare (not safe))
                     (cons '%#if __tmp247900))))
              (declare (not safe))
              (cons __tmp247899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp247917
                                                     __tmp247898))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp247897))))
                                 (declare (not safe))
                                 (cons __tmp247896 '()))))
                          (declare (not safe))
                          (cons '() __tmp247895))))
                   (declare (not safe))
                   (cons '%#lambda __tmp247894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247893 '()))))
                                             (declare (not safe))
                                             (cons __tmp247934 __tmp247892))))
                                      (declare (not safe))
                                      (cons '%#call __tmp247891))))
                               (declare (not safe))
                               (cons __tmp247890 '()))))
                        (declare (not safe))
                        (cons __tmp247936 __tmp247889)))))
                 (_generate-slot-bind239300_
                  (lambda (_$t242615_ _id242616_ _$id242617_)
                    (let ((_$tmp242619_
                           (let ((__tmp247937 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp247937))))
                      (let ((__tmp247974
                             (let ()
                               (declare (not safe))
                               (cons _$id242617_ '())))
                            (__tmp247938
                             (let ((__tmp247939
                                    (let ((__tmp247940
                                           (let ((__tmp247960
                                                  (let ((__tmp247961
                                                         (let ((__tmp247973
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp242619_ '())))
                       (__tmp247962
                        (let ((__tmp247963
                               (let ((__tmp247964
                                      (let ((__tmp247971
                                             (let ((__tmp247972
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp247972)))
                                            (__tmp247965
                                             (let ((__tmp247969
                                                    (let ((__tmp247970
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t242615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp247970)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp247966
                                                    (let ((__tmp247967
                                                           (let ((__tmp247968
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id242616_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp247968))))
              (declare (not safe))
              (cons __tmp247967 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp247969
                                                     __tmp247966))))
                                        (declare (not safe))
                                        (cons __tmp247971 __tmp247965))))
                                 (declare (not safe))
                                 (cons '%#call __tmp247964))))
                          (declare (not safe))
                          (cons __tmp247963 '()))))
                   (declare (not safe))
                   (cons __tmp247973 __tmp247962))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247961 '())))
                                                 (__tmp247941
                                                  (let ((__tmp247942
                                                         (let ((__tmp247943
                                                                (let ((__tmp247958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp247959
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp242619_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp247959)))
                              (__tmp247944
                               (let ((__tmp247956
                                      (let ((__tmp247957
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp242619_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp247957)))
                                     (__tmp247945
                                      (let ((__tmp247946
                                             (let ((__tmp247947
                                                    (let ((__tmp247954
                                                           (let ((__tmp247955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp247955)))
                  (__tmp247948
                   (let ((__tmp247952
                          (let ((__tmp247953
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp247953)))
                         (__tmp247949
                          (let ((__tmp247950
                                 (let ((__tmp247951
                                        (let ()
                                          (declare (not safe))
                                          (cons _id242616_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp247951))))
                            (declare (not safe))
                            (cons __tmp247950 '()))))
                     (declare (not safe))
                     (cons __tmp247952 __tmp247949))))
              (declare (not safe))
              (cons __tmp247954 __tmp247948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp247947))))
                                        (declare (not safe))
                                        (cons __tmp247946 '()))))
                                 (declare (not safe))
                                 (cons __tmp247956 __tmp247945))))
                          (declare (not safe))
                          (cons __tmp247958 __tmp247944))))
                   (declare (not safe))
                   (cons '%#if __tmp247943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp247942 '()))))
                                             (declare (not safe))
                                             (cons __tmp247960 __tmp247941))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp247940))))
                               (declare (not safe))
                               (cons __tmp247939 '()))))
                        (declare (not safe))
                        (cons __tmp247974 __tmp247938)))))
                 (_generate-class-check-bind239301_
                  (lambda (_$t242611_ _class-type242612_ _$class-type242613_)
                    (let ((__tmp247986
                           (let ()
                             (declare (not safe))
                             (cons _$class-type242613_ '())))
                          (__tmp247975
                           (let ((__tmp247976
                                  (let ((__tmp247977
                                         (let ((__tmp247984
                                                (let ((__tmp247985
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp247985)))
                                               (__tmp247978
                                                (let ((__tmp247982
                                                       (let ((__tmp247983
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t242611_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp247983)))
              (__tmp247979
               (let ((__tmp247980
                      (let ((__tmp247981
                             (let ()
                               (declare (not safe))
                               (cons _class-type242612_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp247981))))
                 (declare (not safe))
                 (cons __tmp247980 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247982
                                                        __tmp247979))))
                                           (declare (not safe))
                                           (cons __tmp247984 __tmp247978))))
                                    (declare (not safe))
                                    (cons '%#call __tmp247977))))
                             (declare (not safe))
                             (cons __tmp247976 '()))))
                      (declare (not safe))
                      (cons __tmp247986 __tmp247975))))
                 (_generate-struct-check-bind239302_
                  (lambda (_$t242607_ _class-type242608_ _$class-type242609_)
                    (let ((__tmp247998
                           (let ()
                             (declare (not safe))
                             (cons _$class-type242609_ '())))
                          (__tmp247987
                           (let ((__tmp247988
                                  (let ((__tmp247989
                                         (let ((__tmp247996
                                                (let ((__tmp247997
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp247997)))
                                               (__tmp247990
                                                (let ((__tmp247994
                                                       (let ((__tmp247995
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t242607_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp247995)))
              (__tmp247991
               (let ((__tmp247992
                      (let ((__tmp247993
                             (let ()
                               (declare (not safe))
                               (cons _class-type242608_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp247993))))
                 (declare (not safe))
                 (cons __tmp247992 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp247994
                                                        __tmp247991))))
                                           (declare (not safe))
                                           (cons __tmp247996 __tmp247990))))
                                    (declare (not safe))
                                    (cons '%#call __tmp247989))))
                             (declare (not safe))
                             (cons __tmp247988 '()))))
                      (declare (not safe))
                      (cons __tmp247998 __tmp247987))))
                 (_generate-specializer-impl239303_
                  (lambda (_$t242556_
                           _methods-bind242557_
                           _slots-bind242558_
                           _class-check-bind242559_
                           _struct-check-bind242560_
                           _specializer-impl242561_
                           _lifted-specializer-id242562_
                           _unchecked-specializer-impl242563_)
                    (let ((__tmp247999
                           (let ((__tmp248000
                                  (let ((__tmp248026
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t242556_ '())))
                                        (__tmp248001
                                         (let ((__tmp248002
                                                (let ((__tmp248003
                                                       (let ((__tmp248023
                                                              (let ((__tmp248024
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248025
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind242560_
                                              _class-check-bind242559_))))
                               (declare (not safe))
                               (foldr1 cons __tmp248025 _slots-bind242558_))))
                        (declare (not safe))
                        (foldr1 cons __tmp248024 _methods-bind242557_)))
                     (__tmp248004
                      (let ((__tmp248005
                             (if (or _lifted-specializer-id242562_
                                     _unchecked-specializer-impl242563_)
                                 (let* ((_$specializer242568_
                                         (let ((__tmp248006
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp248006)))
                                        (__tmp248007
                                         (let ((__tmp248019
                                                (let ((__tmp248020
                                                       (let ((__tmp248022
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer242568_ '())))
                     (__tmp248021
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl242561_ '()))))
                 (declare (not safe))
                 (cons __tmp248022 __tmp248021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248020 '())))
                                               (__tmp248008
                                                (let ((__tmp248009
                                                       (let _recur242570_ ((_rest242572_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind242560_)))
                 (let* ((_rest242573242581_ _rest242572_)
                        (_else242575242589_
                         (lambda ()
                           (if _lifted-specializer-id242562_
                               (let ((__tmp248010
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id242562_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp248010))
                               _unchecked-specializer-impl242563_)))
                        (_K242577242595_
                         (lambda (_rest242592_ _checkq242593_)
                           (let ((__tmp248011
                                  (let ((__tmp248017
                                         (let ((__tmp248018
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq242593_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp248018)))
                                        (__tmp248012
                                         (let ((__tmp248016
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur242570_
                                                   _rest242592_)))
                                               (__tmp248013
                                                (let ((__tmp248014
                                                       (let ((__tmp248015
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer242568_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp248015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248014 '()))))
                                           (declare (not safe))
                                           (cons __tmp248016 __tmp248013))))
                                    (declare (not safe))
                                    (cons __tmp248017 __tmp248012))))
                             (declare (not safe))
                             (cons '%#if __tmp248011)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest242573242581_))
                       (let ((_hd242578242598_
                              (let ()
                                (declare (not safe))
                                (##car _rest242573242581_)))
                             (_tl242579242600_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest242573242581_))))
                         (let* ((_checkq242603_ _hd242578242598_)
                                (_rest242605_ _tl242579242600_))
                           (declare (not safe))
                           (_K242577242595_ _rest242605_ _checkq242603_)))
                       (let () (declare (not safe)) (_else242575242589_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248009 '()))))
                                           (declare (not safe))
                                           (cons __tmp248019 __tmp248008))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp248007))
                                 _specializer-impl242561_)))
                        (declare (not safe))
                        (cons __tmp248005 '()))))
                 (declare (not safe))
                 (cons __tmp248023 __tmp248004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp248003))))
                                           (declare (not safe))
                                           (cons __tmp248002 '()))))
                                    (declare (not safe))
                                    (cons __tmp248026 __tmp248001))))
                             (declare (not safe))
                             (cons '%#lambda __tmp248000))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp247999 _stx239297_))))
                 (_generate-specializer-def239304_
                  (lambda (_id242550_
                           _specializer-id242551_
                           _specializer-impl242552_
                           _lifted-specializer-id242553_
                           _unchecked-specializer-impl242554_)
                    (let ((__tmp248027
                           (let ((__tmp248028
                                  (let ((__tmp248029
                                         (let ((__tmp248049
                                                (let ((__tmp248050
                                                       (let ((__tmp248051
                                                              (let ((__tmp248053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id242551_ '())))
                            (__tmp248052
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl242552_ '()))))
                        (declare (not safe))
                        (cons __tmp248053 __tmp248052))))
                 (declare (not safe))
                 (cons '%#define-values __tmp248051))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp248050
                                                   _stx239297_)))
                                               (__tmp248030
                                                (let ((__tmp248037
                                                       (let ((__tmp248038
                                                              (let ((__tmp248039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248040
                                    (let ((__tmp248047
                                           (let ((__tmp248048
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp248048)))
                                          (__tmp248041
                                           (let ((__tmp248045
                                                  (let ((__tmp248046
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id242550_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp248046)))
                                                 (__tmp248042
                                                  (let ((__tmp248043
                                                         (let ((__tmp248044
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id242551_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp248044))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248043 '()))))
                                             (declare (not safe))
                                             (cons __tmp248045 __tmp248042))))
                                      (declare (not safe))
                                      (cons __tmp248047 __tmp248041))))
                               (declare (not safe))
                               (cons '%#call __tmp248040))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp248039 _stx239297_))))
                 (declare (not safe))
                 (cons __tmp248038 '())))
              (__tmp248031
               (if _lifted-specializer-id242553_
                   (let ((__tmp248032
                          (let ((__tmp248033
                                 (let ((__tmp248034
                                        (let ((__tmp248036
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id242553_
                                                       '())))
                                              (__tmp248035
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl242554_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp248036 __tmp248035))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp248034))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp248033 _stx239297_))))
                     (declare (not safe))
                     (cons __tmp248032 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp248037
                                                          __tmp248031))))
                                           (declare (not safe))
                                           (cons __tmp248049 __tmp248030))))
                                    (declare (not safe))
                                    (cons _stx239297_ __tmp248029))))
                             (declare (not safe))
                             (cons '%#begin __tmp248028))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248027 _stx239297_)))))
          (let* ((___stx246840246841_ _stx239297_)
                 (_g239307239327_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx246840246841_)))))
            (let ((___kont246842246843_
                   (lambda (_L239371_ _L239372_)
                     (let ((_method-calls239391_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs239392_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_class-type-check239393_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-check239394_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_struct-type-assert239395_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty239396_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?239398_
                                 (lambda ()
                                   (if (let ((__tmp248058
                                              (hash-length
                                               _method-calls239391_)))
                                         (declare (not safe))
                                         (fxzero? __tmp248058))
                                       (if (let ((__tmp248057
                                                  (hash-length
                                                   _slot-refs239392_)))
                                             (declare (not safe))
                                             (fxzero? __tmp248057))
                                           (if (let ((__tmp248056
                                                      (hash-length
                                                       _class-type-check239393_)))
                                                 (declare (not safe))
                                                 (fxzero? __tmp248056))
                                               (if (let ((__tmp248055
                                                          (hash-length
                                                           _struct-type-check239394_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp248055))
                                                   (let ((__tmp248054
                                                          (hash-length
                                                           _struct-type-assert239395_)))
                                                     (declare (not safe))
                                                     (fxzero? __tmp248054))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?239399_
                                 (lambda ()
                                   (let ((_$e242543_
                                          (let ((__tmp248059
                                                 (let ((__tmp248060
                                                        (hash-length
                                                         _struct-type-check239394_)))
                                                   (declare (not safe))
                                                   (fxzero? __tmp248060))))
                                            (declare (not safe))
                                            (not __tmp248059))))
                                     (if _$e242543_
                                         _$e242543_
                                         (let ((__tmp248061
                                                (let ((__tmp248062
                                                       (hash-length
                                                        _struct-type-assert239395_)))
                                                  (declare (not safe))
                                                  (fxzero? __tmp248062))))
                                           (declare (not safe))
                                           (not __tmp248061))))))
                                (_lift-unchecked-specializer?239400_
                                 (lambda ()
                                   (if (let ((__tmp248065
                                              (hash-length
                                               _method-calls239391_)))
                                         (declare (not safe))
                                         (fxzero? __tmp248065))
                                       (if (let ((__tmp248064
                                                  (hash-length
                                                   _slot-refs239392_)))
                                             (declare (not safe))
                                             (fxzero? __tmp248064))
                                           (let ((__tmp248063
                                                  (hash-length
                                                   _class-type-check239393_)))
                                             (declare (not safe))
                                             (fxzero? __tmp248063))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L239371_))
                             (let* ((___stx246754246755_ _L239371_)
                                    (_g239913239931_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx246754246755_)))))
                               (let ((___kont246756246757_
                                      (lambda (_L239967_ _L239968_ _L239969_)
                                        (for-each
                                         (lambda (_g239984239986_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g239984239986_
                                              _L239969_
                                              _method-calls239391_
                                              _slot-refs239392_
                                              _class-type-check239393_
                                              _struct-type-check239394_
                                              _struct-type-assert239395_)))
                                         _L239967_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?239398_))
                                            _stx239297_
                                            (let* ((_specializer-id239995_
                                                    (let* ((_id239989_
                                                            (let ((__tmp248215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L239372_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp248215 '"::specialize")))
                   (_specializer-id239992_
                    (let ((__tmp248216
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx239297_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id239989_ __tmp248216))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id239992_))
              _specializer-id239992_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id240002_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?239400_))
                                                        (let* ((_id239997_
                                                                (let ((__tmp248217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L239372_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp248217
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id239999_
                        (let ((__tmp248218
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx239297_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id239997_ __tmp248218))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id239999_))
                  _lifted-specializer-id239999_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t240004_
                                                    (let ((__tmp248219
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp248219)))
                                                   (_methods240006_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls239391_)))
                                                   (_$methods240010_
                                                    (map (lambda (_id240008_)
                                                           (let ((__tmp248220
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id240008_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp248220)))
                 _methods240006_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248221_
                                                    (for-each
                                                     (lambda (_g240011240014_
                                                              _g240012240016_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls239391_
                                                          _g240011240014_
                                                          _g240012240016_)))
                                                     _methods240006_
                                                     _$methods240010_))
                                                   (_methods-bind240027_
                                                    (map (lambda (_g240019240022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240020240024_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind239299_
                      _$t240004_
                      _g240019240022_
                      _g240020240024_)))
                 _methods240006_
                 _$methods240010_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots240029_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs239392_)))
                                                   (_$slots240033_
                                                    (map (lambda (_id240031_)
                                                           (let ((__tmp248222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id240031_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp248222)))
                 _slots240029_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248223_
                                                    (for-each
                                                     (lambda (_g240034240037_
                                                              _g240035240039_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs239392_
                                                          _g240034240037_
                                                          _g240035240039_)))
                                                     _slots240029_
                                                     _$slots240033_))
                                                   (_slots-bind240050_
                                                    (map (lambda (_g240042240045_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240043240047_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind239300_
                      _$t240004_
                      _g240042240045_
                      _g240043240047_)))
                 _slots240029_
                 _$slots240033_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check240052_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check239393_)))
                                                   (_$class-check240055_
                                                    (map (lambda (_g248224_)
                                                           (let ((__tmp248225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp248225)))
                 _class-check240052_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248226_
                                                    (for-each
                                                     (lambda (_g240056240059_
                                                              _g240057240061_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check239393_
                                                          _g240056240059_
                                                          _g240057240061_)))
                                                     _class-check240052_
                                                     _$class-check240055_))
                                                   (_class-check-bind240072_
                                                    (map (lambda (_g240064240067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240065240069_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind239301_
                      _$t240004_
                      _g240064240067_
                      _g240065240069_)))
                 _class-check240052_
                 _$class-check240055_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all240074_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check239394_
                                                       _struct-type-assert239395_)))
                                                   (_struct-check240076_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all240074_)))
                                                   (_$struct-check240079_
                                                    (map (lambda (_g248227_)
                                                           (let ((__tmp248228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp248228)))
                 _struct-check240076_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g248229_
                                                    (for-each
                                                     (lambda (_g240080240083_
                                                              _g240081240085_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all240074_
                                                          _g240080240083_
                                                          _g240081240085_)))
                                                     _struct-check240076_
                                                     _$struct-check240079_))
                                                   (_struct-check-bind240096_
                                                    (map (lambda (_g240088240091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g240089240093_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind239302_
                      _$t240004_
                      _g240088240091_
                      _g240089240093_)))
                 _struct-check240076_
                 _$struct-check240079_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl240107_
                                                    (lambda (_struct-type-check1240098_
                                                             _struct-type-check2240099_)
                                                      (let* ((_specializer-body240105_
                                                              (map (lambda (_g240100240102_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g240100240102_
                                _L239969_
                                _$t240004_
                                _method-calls239391_
                                _slot-refs239392_
                                _class-type-check239393_
                                _struct-type-check1240098_
                                _struct-type-check2240099_)))
                           _L239967_))
                     (__tmp248230
                      (let ((__tmp248231
                             (let ((__tmp248232
                                    (let ()
                                      (declare (not safe))
                                      (cons _L239969_ _L239968_))))
                               (declare (not safe))
                               (cons __tmp248232 _specializer-body240105_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp248231))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp248230 _stx239297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl240109_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl240107_
                                                       _struct-check-all240074_
                                                       _empty239396_)))
                                                   (_unchecked-specializer-impl240111_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?239399_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl240107_
                                                           _empty239396_
                                                           _struct-check-all240074_))
                                                        '#f))
                                                   (_specializer-impl240113_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl239303_
                                                       _$t240004_
                                                       _methods-bind240027_
                                                       _slots-bind240050_
                                                       _class-check-bind240072_
                                                       _struct-check-bind240096_
                                                       _specializer-impl240109_
                                                       _lifted-specializer-id240002_
                                                       _unchecked-specializer-impl240111_))))
                                              (let ((__tmp248234
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L239372_)))
                                                    (__tmp248233
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id239995_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp248234
                                                 '" => "
                                                 __tmp248233))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def239304_
                                                 _L239372_
                                                 _specializer-id239995_
                                                 _specializer-impl240113_
                                                 _lifted-specializer-id240002_
                                                 _unchecked-specializer-impl240111_))))))
                                     (___kont246758246759_
                                      (lambda () _stx239297_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx246754246755_))
                                     (let ((_e239920239943_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx246754246755_))))
                                       (let ((_tl239918239948_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e239920239943_)))
                                             (_hd239919239946_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e239920239943_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl239918239948_))
                                             (let ((_e239923239951_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl239918239948_))))
                                               (let ((_tl239921239956_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e239923239951_)))
                                                     (_hd239922239954_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e239923239951_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd239922239954_))
                                                     (let ((_e239926239959_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd239922239954_))))
                                                       (let ((_tl239924239964_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e239926239959_)))
                     (_hd239925239962_
                      (let () (declare (not safe)) (##car _e239926239959_))))
                 (___kont246756246757_
                  _tl239921239956_
                  _tl239924239964_
                  _hd239925239962_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont246758246759_))))
                                             (___kont246758246759_))))
                                     (___kont246758246759_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L239371_))
                                 (let* ((_g240119240138_
                                         (lambda (_g240120240135_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g240120240135_))))
                                        (_g240118240489_
                                         (lambda (_g240120240141_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g240120240141_))
                                               (let ((_e240124240143_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g240120240141_))))
                                                 (let ((_hd240123240146_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e240124240143_)))
                                                       (_tl240122240148_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e240124240143_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl240122240148_))
                                                       (let ((_g248191_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl240122240148_ '0))))
                 (begin
                   (let ((_g248192_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g248191_)
                                (##vector-length _g248191_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g248192_ 2)))
                         (error "Context expects 2 values" _g248192_)))
                   (let ((_target240125240151_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248191_ 0)))
                         (_tl240127240153_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g248191_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl240127240153_))
                         (letrec ((_loop240128240156_
                                   (lambda (_hd240126240159_
                                            _clause240132240161_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd240126240159_))
                                         (let ((_e240129240164_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd240126240159_))))
                                           (let ((_lp-hd240130240167_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e240129240164_)))
                                                 (_lp-tl240131240169_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e240129240164_))))
                                             (let ((__tmp248214
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd240130240167_
                                                            _clause240132240161_))))
                                               (declare (not safe))
                                               (_loop240128240156_
                                                _lp-tl240131240169_
                                                __tmp248214))))
                                         (let ((_clause240133240172_
                                                (reverse _clause240132240161_)))
                                           ((lambda (_L240175_)
                                              (for-each
                                               (lambda (_clause240188_)
                                                 (let* ((___stx246780246781_
                                                         _clause240188_)
                                                        (_g240191240206_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx246780246781_)))))
                                                   (let ((___kont246782246783_
                                                          (lambda (_L240234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L240235_
                           _L240236_)
                    (for-each
                     (lambda (_g240251240253_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g240251240253_
                          _L240236_
                          _method-calls239391_
                          _slot-refs239392_
                          _class-type-check239393_
                          _struct-type-check239394_
                          _struct-type-assert239395_)))
                     _L240234_)))
                 (___kont246784246785_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx246780246781_))
                                                         (let ((_e240198240218_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx246780246781_))))
                   (let ((_tl240196240223_
                          (let ()
                            (declare (not safe))
                            (##cdr _e240198240218_)))
                         (_hd240197240221_
                          (let ()
                            (declare (not safe))
                            (##car _e240198240218_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd240197240221_))
                         (let ((_e240201240226_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd240197240221_))))
                           (let ((_tl240199240231_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e240201240226_)))
                                 (_hd240200240229_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e240201240226_))))
                             (___kont246782246783_
                              _tl240196240223_
                              _tl240199240231_
                              _hd240200240229_)))
                         (___kont246784246785_))))
                 (___kont246784246785_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp248193
                                                      (lambda (_g240258240261_
                                                               _g240259240263_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g240258240261_
                                                                _g240259240263_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp248193
                                                         '()
                                                         _L240175_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?239398_))
                                                  _stx239297_
                                                  (let* ((_specializer-id240272_
                                                          (let* ((_id240266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248194
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239372_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp248194 '"::specialize")))
                         (_specializer-id240269_
                          (let ((__tmp248195
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239297_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id240266_ __tmp248195))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id240269_))
                    _specializer-id240269_))
                 (_lifted-specializer-id240279_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?239400_))
                      (let* ((_id240274_
                              (let ((__tmp248196
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L239372_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp248196
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id240276_
                              (let ((__tmp248197
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx239297_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id240274_
                                 __tmp248197))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id240276_))
                        _lifted-specializer-id240276_)
                      '#f))
                 (_$t240281_
                  (let ((__tmp248198 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp248198)))
                 (_methods240283_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls239391_)))
                 (_$methods240287_
                  (map (lambda (_id240285_)
                         (let ((__tmp248199 (gensym _id240285_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248199)))
                       _methods240283_))
                 (_g248200_
                  (for-each
                   (lambda (_g240288240291_ _g240289240293_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls239391_
                        _g240288240291_
                        _g240289240293_)))
                   _methods240283_
                   _$methods240287_))
                 (_methods-bind240304_
                  (map (lambda (_g240296240299_ _g240297240301_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind239299_
                            _$t240281_
                            _g240296240299_
                            _g240297240301_)))
                       _methods240283_
                       _$methods240287_))
                 (_slots240306_
                  (let () (declare (not safe)) (hash-keys _slot-refs239392_)))
                 (_$slots240310_
                  (map (lambda (_id240308_)
                         (let ((__tmp248201 (gensym _id240308_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248201)))
                       _slots240306_))
                 (_g248202_
                  (for-each
                   (lambda (_g240311240314_ _g240312240316_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs239392_
                        _g240311240314_
                        _g240312240316_)))
                   _slots240306_
                   _$slots240310_))
                 (_slots-bind240327_
                  (map (lambda (_g240319240322_ _g240320240324_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind239300_
                            _$t240281_
                            _g240319240322_
                            _g240320240324_)))
                       _slots240306_
                       _$slots240310_))
                 (_class-check240329_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check239393_)))
                 (_$class-check240332_
                  (map (lambda (_g248203_)
                         (let ((__tmp248204 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248204)))
                       _class-check240329_))
                 (_g248205_
                  (for-each
                   (lambda (_g240333240336_ _g240334240338_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check239393_
                        _g240333240336_
                        _g240334240338_)))
                   _class-check240329_
                   _$class-check240332_))
                 (_class-check-bind240349_
                  (map (lambda (_g240341240344_ _g240342240346_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind239301_
                            _$t240281_
                            _g240341240344_
                            _g240342240346_)))
                       _class-check240329_
                       _$class-check240332_))
                 (_struct-check-all240351_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check239394_
                     _struct-type-assert239395_)))
                 (_struct-check240353_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all240351_)))
                 (_$struct-check240356_
                  (map (lambda (_g248206_)
                         (let ((__tmp248207 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248207)))
                       _struct-check240353_))
                 (_g248208_
                  (for-each
                   (lambda (_g240357240360_ _g240358240362_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all240351_
                        _g240357240360_
                        _g240358240362_)))
                   _struct-check240353_
                   _$struct-check240356_))
                 (_struct-check-bind240373_
                  (map (lambda (_g240365240368_ _g240366240370_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind239302_
                            _$t240281_
                            _g240365240368_
                            _g240366240370_)))
                       _struct-check240353_
                       _$struct-check240356_))
                 (_make-specializer-impl240480_
                  (lambda (_struct-type-check1240375_
                           _struct-type-check2240376_)
                    (let* ((_specializer-clauses240478_
                            (map (lambda (_clause240378_)
                                   (let* ((___stx246800246801_ _clause240378_)
                                          (_g240381240396_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx246800246801_)))))
                                     (let ((___kont246802246803_
                                            (lambda (_L240424_
                                                     _L240425_
                                                     _L240426_)
                                              (let* ((_body240466_
                                                      (map (lambda (_g240461240463_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g240461240463_
                        _L240426_
                        _$t240281_
                        _method-calls239391_
                        _slot-refs239392_
                        _class-type-check239393_
                        _struct-type-check1240375_
                        _struct-type-check2240376_)))
                   _L240424_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp248209
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L240426_
                                                              _L240425_))))
                                                (declare (not safe))
                                                (cons __tmp248209
                                                      _body240466_))))
                                           (___kont246804246805_
                                            (lambda () _clause240378_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx246800246801_))
                                           (let ((_e240388240408_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx246800246801_))))
                                             (let ((_tl240386240413_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e240388240408_)))
                                                   (_hd240387240411_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e240388240408_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd240387240411_))
                                                   (let ((_e240391240416_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd240387240411_))))
                                                     (let ((_tl240389240421_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e240391240416_)))
                                                           (_hd240390240419_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e240391240416_))))
                                                       (___kont246802246803_
                                                        _tl240386240413_
                                                        _tl240389240421_
                                                        _hd240390240419_)))
                                                   (___kont246804246805_))))
                                           (___kont246804246805_)))))
                                 (let ((__tmp248210
                                        (lambda (_g240470240473_
                                                 _g240471240475_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g240470240473_
                                                  _g240471240475_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248210 '() _L240175_))))
                           (__tmp248211
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses240478_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248211 _stx239297_))))
                 (_specializer-impl240482_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl240480_
                     _struct-check-all240351_
                     _empty239396_)))
                 (_unchecked-specializer-impl240484_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239399_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl240480_
                         _empty239396_
                         _struct-check-all240351_))
                      '#f))
                 (_specializer-impl240486_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl239303_
                     _$t240281_
                     _methods-bind240304_
                     _slots-bind240327_
                     _class-check-bind240349_
                     _struct-check-bind240373_
                     _specializer-impl240482_
                     _lifted-specializer-id240279_
                     _unchecked-specializer-impl240484_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248213
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239372_)))
                                                          (__tmp248212
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id240272_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp248213
                                                       '" => "
                                                       __tmp248212))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def239304_
                                                       _L239372_
                                                       _specializer-id240272_
                                                       _specializer-impl240486_
                                                       _lifted-specializer-id240279_
                                                       _unchecked-specializer-impl240484_)))))
                                            _clause240133240172_))))))
                           (let ()
                             (declare (not safe))
                             (_loop240128240156_ _target240125240151_ '())))
                         (let ()
                           (declare (not safe))
                           (_g240119240138_ _g240120240141_))))))
               (let ()
                 (declare (not safe))
                 (_g240119240138_ _g240120240141_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g240119240138_
                                                  _g240120240141_))))))
                                   (declare (not safe))
                                   (_g240118240489_ _L239371_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L239371_))
                                     (let* ((_g240492240522_
                                             (lambda (_g240493240519_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g240493240519_))))
                                            (_g240491241210_
                                             (lambda (_g240493240525_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g240493240525_))
                                                   (let ((_e240499240527_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g240493240525_))))
                                                     (let ((_hd240498240530_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e240499240527_)))
                                                           (_tl240497240532_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e240499240527_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl240497240532_))
                                                           (let ((_e240502240535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl240497240532_))))
                     (let ((_hd240501240538_
                            (let ()
                              (declare (not safe))
                              (##car _e240502240535_)))
                           (_tl240500240540_
                            (let ()
                              (declare (not safe))
                              (##cdr _e240502240535_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd240501240538_))
                           (let ((_e240505240543_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd240501240538_))))
                             (let ((_hd240504240546_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e240505240543_)))
                                   (_tl240503240548_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e240505240543_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd240504240546_))
                                   (let ((_e240508240551_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd240504240546_))))
                                     (let ((_hd240507240554_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e240508240551_)))
                                           (_tl240506240556_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e240508240551_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd240507240554_))
                                           (let ((_e240511240559_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd240507240554_))))
                                             (let ((_hd240510240562_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e240511240559_)))
                                                   (_tl240509240564_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e240511240559_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl240509240564_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl240506240556_))
                                                       (let ((_e240514240567_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl240506240556_))))
                 (let ((_hd240513240570_
                        (let () (declare (not safe)) (##car _e240514240567_)))
                       (_tl240512240572_
                        (let () (declare (not safe)) (##cdr _e240514240567_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl240512240572_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl240503240548_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl240500240540_))
                               (let ((_e240517240575_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl240500240540_))))
                                 (let ((_hd240516240578_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e240517240575_)))
                                       (_tl240515240580_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e240517240575_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl240515240580_))
                                       ((lambda (_L240583_ _L240584_ _L240585_)
                                          (let* ((_g240608240626_
                                                  (lambda (_g240609240623_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g240609240623_))))
                                                 (_g240607240677_
                                                  (lambda (_g240609240629_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g240609240629_))
                                                        (let ((_e240615240631_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g240609240629_))))
                  (let ((_hd240614240634_
                         (let () (declare (not safe)) (##car _e240615240631_)))
                        (_tl240613240636_
                         (let ()
                           (declare (not safe))
                           (##cdr _e240615240631_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl240613240636_))
                        (let ((_e240618240639_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl240613240636_))))
                          (let ((_hd240617240642_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e240618240639_)))
                                (_tl240616240644_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e240618240639_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd240617240642_))
                                (let ((_e240621240647_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd240617240642_))))
                                  (let ((_hd240620240650_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240621240647_)))
                                        (_tl240619240652_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240621240647_))))
                                    ((lambda (_L240655_ _L240656_ _L240657_)
                                       (for-each
                                        (lambda (_g240672240674_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g240672240674_
                                             _L240657_
                                             _method-calls239391_
                                             _slot-refs239392_
                                             _class-type-check239393_
                                             _struct-type-check239394_
                                             _struct-type-assert239395_)))
                                        _L240655_))
                                     _tl240616240644_
                                     _tl240619240652_
                                     _hd240620240650_)))
                                (let ()
                                  (declare (not safe))
                                  (_g240608240626_ _g240609240629_)))))
                        (let ()
                          (declare (not safe))
                          (_g240608240626_ _g240609240629_)))))
                (let ()
                  (declare (not safe))
                  (_g240608240626_ _g240609240629_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g240607240677_ _L240584_))
                                          (let* ((_g240680240699_
                                                  (lambda (_g240681240696_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g240681240696_))))
                                                 (_g240679240818_
                                                  (lambda (_g240681240702_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g240681240702_))
                                                        (let ((_e240685240704_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g240681240702_))))
                  (let ((_hd240684240707_
                         (let () (declare (not safe)) (##car _e240685240704_)))
                        (_tl240683240709_
                         (let ()
                           (declare (not safe))
                           (##cdr _e240685240704_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl240683240709_))
                        (let ((_g248154_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl240683240709_
                                  '0))))
                          (begin
                            (let ((_g248155_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g248154_)
                                         (##vector-length _g248154_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g248155_ 2)))
                                  (error "Context expects 2 values"
                                         _g248155_)))
                            (let ((_target240686240712_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g248154_ 0)))
                                  (_tl240688240714_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g248154_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl240688240714_))
                                  (letrec ((_loop240689240717_
                                            (lambda (_hd240687240720_
                                                     _clause240693240722_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd240687240720_))
                                                  (let ((_e240690240725_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd240687240720_))))
                                                    (let ((_lp-hd240691240728_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e240690240725_)))
                                                          (_lp-tl240692240730_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e240690240725_))))
                                                      (let ((__tmp248157
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd240691240728_ _clause240693240722_))))
                (declare (not safe))
                (_loop240689240717_ _lp-tl240692240730_ __tmp248157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause240694240733_
                                                         (reverse _clause240693240722_)))
                                                    ((lambda (_L240736_)
                                                       (for-each
                                                        (lambda (_clause240749_)
                                                          (let* ((_g240751240766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g240752240763_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g240752240763_))))
                         (_g240750240808_
                          (lambda (_g240752240769_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g240752240769_))
                                (let ((_e240758240771_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g240752240769_))))
                                  (let ((_hd240757240774_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e240758240771_)))
                                        (_tl240756240776_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e240758240771_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd240757240774_))
                                        (let ((_e240761240779_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd240757240774_))))
                                          (let ((_hd240760240782_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e240761240779_)))
                                                (_tl240759240784_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e240761240779_))))
                                            ((lambda (_L240787_
                                                      _L240788_
                                                      _L240789_)
                                               (for-each
                                                (lambda (_g240803240805_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g240803240805_
                                                     _L240789_
                                                     _method-calls239391_
                                                     _slot-refs239392_
                                                     _class-type-check239393_
                                                     _struct-type-check239394_
                                                     _struct-type-assert239395_)))
                                                _L240787_))
                                             _tl240756240776_
                                             _tl240759240784_
                                             _hd240760240782_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g240751240766_ _g240752240769_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g240751240766_ _g240752240769_))))))
                    (declare (not safe))
                    (_g240750240808_ _clause240749_)))
                (let ((__tmp248156
                       (lambda (_g240810240813_ _g240811240815_)
                         (let ()
                           (declare (not safe))
                           (cons _g240810240813_ _g240811240815_)))))
                  (declare (not safe))
                  (foldr1 __tmp248156 '() _L240736_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause240694240733_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop240689240717_
                                       _target240686240712_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g240680240699_ _g240681240702_))))))
                        (let ()
                          (declare (not safe))
                          (_g240680240699_ _g240681240702_)))))
                (let ()
                  (declare (not safe))
                  (_g240680240699_ _g240681240702_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g240679240818_ _L240583_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?239398_))
                                              _stx239297_
                                              (let* ((_specializer-id240827_
                                                      (let* ((_id240821_
                                                              (let ((__tmp248158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L239372_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp248158 '"::specialize")))
                     (_specializer-id240824_
                      (let ((__tmp248159
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx239297_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id240821_ __tmp248159))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id240824_))
                _specializer-id240824_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id240834_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?239400_))
                                                          (let* ((_id240829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248160
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239372_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp248160
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id240831_
                          (let ((__tmp248161
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239297_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id240829_ __tmp248161))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id240831_))
                    _lifted-specializer-id240831_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t240836_
                                                      (let ((__tmp248162
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp248162)))
                                                     (_methods240838_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls239391_)))
                                                     (_$methods240842_
                                                      (map (lambda (_id240840_)
                                                             (let ((__tmp248163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id240840_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp248163)))
                   _methods240838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248164_
                                                      (for-each
                                                       (lambda (_g240843240846_
                                                                _g240844240848_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls239391_
                                                            _g240843240846_
                                                            _g240844240848_)))
                                                       _methods240838_
                                                       _$methods240842_))
                                                     (_methods-bind240859_
                                                      (map (lambda (_g240851240854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240852240856_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind239299_
                        _$t240836_
                        _g240851240854_
                        _g240852240856_)))
                   _methods240838_
                   _$methods240842_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots240861_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs239392_)))
                                                     (_$slots240865_
                                                      (map (lambda (_id240863_)
                                                             (let ((__tmp248165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id240863_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp248165)))
                   _slots240861_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248166_
                                                      (for-each
                                                       (lambda (_g240866240869_
                                                                _g240867240871_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs239392_
                                                            _g240866240869_
                                                            _g240867240871_)))
                                                       _slots240861_
                                                       _$slots240865_))
                                                     (_slots-bind240882_
                                                      (map (lambda (_g240874240877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240875240879_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind239300_
                        _$t240836_
                        _g240874240877_
                        _g240875240879_)))
                   _slots240861_
                   _$slots240865_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check240884_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check239393_)))
                                                     (_$class-check240887_
                                                      (map (lambda (_g248167_)
                                                             (let ((__tmp248168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp248168)))
                   _class-check240884_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248169_
                                                      (for-each
                                                       (lambda (_g240888240891_
                                                                _g240889240893_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check239393_
                                                            _g240888240891_
                                                            _g240889240893_)))
                                                       _class-check240884_
                                                       _$class-check240887_))
                                                     (_class-check-bind240904_
                                                      (map (lambda (_g240896240899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240897240901_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind239301_
                        _$t240836_
                        _g240896240899_
                        _g240897240901_)))
                   _class-check240884_
                   _$class-check240887_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all240906_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check239394_
                                                         _struct-type-assert239395_)))
                                                     (_struct-check240908_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all240906_)))
                                                     (_$struct-check240911_
                                                      (map (lambda (_g248170_)
                                                             (let ((__tmp248171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp248171)))
                   _struct-check240908_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g248172_
                                                      (for-each
                                                       (lambda (_g240912240915_
                                                                _g240913240917_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all240906_
                                                            _g240912240915_
                                                            _g240913240917_)))
                                                       _struct-check240908_
                                                       _$struct-check240911_))
                                                     (_struct-check-bind240928_
                                                      (map (lambda (_g240920240923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g240921240925_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind239302_
                        _$t240836_
                        _g240920240923_
                        _g240921240925_)))
                   _struct-check240908_
                   _$struct-check240911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr241027_
                                                      (lambda (_struct-type-check1240930_
                                                               _struct-type-check2240931_)
                                                        (let* ((_g240933240951_
                                                                (lambda (_g240934240948_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g240934240948_))))
                       (_g240932241024_
                        (lambda (_g240934240954_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g240934240954_))
                              (let ((_e240940240956_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g240934240954_))))
                                (let ((_hd240939240959_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e240940240956_)))
                                      (_tl240938240961_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e240940240956_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl240938240961_))
                                      (let ((_e240943240964_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl240938240961_))))
                                        (let ((_hd240942240967_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e240943240964_)))
                                              (_tl240941240969_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e240943240964_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd240942240967_))
                                              (let ((_e240946240972_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd240942240967_))))
                                                (let ((_hd240945240975_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e240946240972_)))
                                                      (_tl240944240977_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e240946240972_))))
                                                  ((lambda (_L240980_
                                                            _L240981_
                                                            _L240982_)
                                                     (let* ((_body241022_
                                                             (map (lambda (_g241017241019_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g241017241019_
                               _L240982_
                               _$t240836_
                               _method-calls239391_
                               _slot-refs239392_
                               _class-type-check239393_
                               _struct-type-check1240930_
                               _struct-type-check2240931_)))
                          _L240980_))
                    (__tmp248173
                     (let ((__tmp248174
                            (let ((__tmp248175
                                   (let ()
                                     (declare (not safe))
                                     (cons _L240982_ _L240981_))))
                              (declare (not safe))
                              (cons __tmp248175 _body241022_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp248174))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp248173 _L240584_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl240941240969_
                                                   _tl240944240977_
                                                   _hd240945240975_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g240933240951_
                                                 _g240934240954_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g240933240951_ _g240934240954_)))))
                              (let ()
                                (declare (not safe))
                                (_g240933240951_ _g240934240954_))))))
                  (declare (not safe))
                  (_g240932241024_ _L240584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr241188_
                                                      (lambda (_struct-type-check1241029_
                                                               _struct-type-check2241030_)
                                                        (let* ((_g241032241051_
                                                                (lambda (_g241033241048_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g241033241048_))))
                       (_g241031241185_
                        (lambda (_g241033241054_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g241033241054_))
                              (let ((_e241037241056_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g241033241054_))))
                                (let ((_hd241036241059_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e241037241056_)))
                                      (_tl241035241061_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e241037241056_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl241035241061_))
                                      (let ((_g248176_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl241035241061_
                                                '0))))
                                        (begin
                                          (let ((_g248177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g248176_)
                                                       (##vector-length
                                                        _g248176_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g248177_ 2)))
                                                (error "Context expects 2 values"
                                                       _g248177_)))
                                          (let ((_target241038241064_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g248176_ 0)))
                                                (_tl241040241066_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g248176_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241040241066_))
                                                (letrec ((_loop241041241069_
                                                          (lambda (_hd241039241072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause241045241074_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd241039241072_))
                        (let ((_e241042241077_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd241039241072_))))
                          (let ((_lp-hd241043241080_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241042241077_)))
                                (_lp-tl241044241082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241042241077_))))
                            (let ((__tmp248181
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd241043241080_
                                           _clause241045241074_))))
                              (declare (not safe))
                              (_loop241041241069_
                               _lp-tl241044241082_
                               __tmp248181))))
                        (let ((_clause241046241085_
                               (reverse _clause241045241074_)))
                          ((lambda (_L241088_)
                             (let* ((_clauses241183_
                                     (map (lambda (_clause241103_)
                                            (let* ((___stx246820246821_
                                                    _clause241103_)
                                                   (_g241106241121_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx246820246821_)))))
                                              (let ((___kont246822246823_
                                                     (lambda (_L241149_
                                                              _L241150_
                                                              _L241151_)
                                                       (let* ((_body241171_
                                                               (map (lambda (_g241166241168_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g241166241168_
                                 _L241151_
                                 _$t240836_
                                 _method-calls239391_
                                 _slot-refs239392_
                                 _class-type-check239393_
                                 _struct-type-check1241029_
                                 _struct-type-check2241030_)))
                            _L241149_))
                      (__tmp248178
                       (let ()
                         (declare (not safe))
                         (cons _L241151_ _L241150_))))
                 (declare (not safe))
                 (cons __tmp248178 _body241171_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont246824246825_
                                                     (lambda ()
                                                       _clause241103_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx246820246821_))
                                                    (let ((_e241113241133_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx246820246821_))))
                                                      (let ((_tl241111241138_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241113241133_)))
                    (_hd241112241136_
                     (let () (declare (not safe)) (##car _e241113241133_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd241112241136_))
                    (let ((_e241116241141_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd241112241136_))))
                      (let ((_tl241114241146_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241116241141_)))
                            (_hd241115241144_
                             (let ()
                               (declare (not safe))
                               (##car _e241116241141_))))
                        (___kont246822246823_
                         _tl241111241138_
                         _tl241114241146_
                         _hd241115241144_)))
                    (___kont246824246825_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont246824246825_)))))
                                          (let ((__tmp248179
                                                 (lambda (_g241175241178_
                                                          _g241176241180_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g241175241178_
                                                           _g241176241180_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp248179
                                                    '()
                                                    _L241088_))))
                                    (__tmp248180
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses241183_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp248180 _L240583_)))
                           _clause241046241085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop241041241069_
                                                     _target241038241064_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241032241051_
                                                   _g241033241054_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241032241051_ _g241033241054_)))))
                              (let ()
                                (declare (not safe))
                                (_g241032241051_ _g241033241054_))))))
                  (declare (not safe))
                  (_g241031241185_ _L240583_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl241193_
                                                      (lambda (_specializer-lambda-expr241190_
                                                               _specializer-case-lambda-expr241191_)
                                                        (let ((__tmp248182
                                                               (let ((__tmp248183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp248185
                                     (let ((__tmp248186
                                            (let ((__tmp248188
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L240585_ '())))
                                                  (__tmp248187
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr241190_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp248188 __tmp248187))))
                                       (declare (not safe))
                                       (cons __tmp248186 '())))
                                    (__tmp248184
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr241191_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp248185 __tmp248184))))
                         (declare (not safe))
                         (cons '%#let-values __tmp248183))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp248182 _stx239297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr241195_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr241027_
                                                         _struct-check-all240906_
                                                         _empty239396_)))
                                                     (_specializer-case-lambda-expr241197_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr241188_
                                                         _struct-check-all240906_
                                                         _empty239396_)))
                                                     (_specializer-impl241199_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl241193_
                                                         _specializer-lambda-expr241195_
                                                         _specializer-case-lambda-expr241197_)))
                                                     (_unchecked-specializer-lambda-expr241201_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239399_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr241027_
                                                             _empty239396_
                                                             _struct-check-all240906_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr241203_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239399_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr241188_
                                                             _empty239396_
                                                             _struct-check-all240906_))
                                                          '#f))
                                                     (_unchecked-specializer-impl241205_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?239399_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl241193_
                                                             _unchecked-specializer-lambda-expr241201_
                                                             _unchecked-specializer-case-lambda-expr241203_))
                                                          '#f))
                                                     (_specializer-impl241207_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl239303_
                                                         _$t240836_
                                                         _methods-bind240859_
                                                         _slots-bind240882_
                                                         _class-check-bind240904_
                                                         _struct-check-bind240928_
                                                         _specializer-impl241199_
                                                         _lifted-specializer-id240834_
                                                         _unchecked-specializer-impl241205_))))
                                                (let ((__tmp248190
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L239372_)))
                                                      (__tmp248189
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id240827_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp248190
                                                   '" => "
                                                   __tmp248189))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def239304_
                                                   _L239372_
                                                   _specializer-id240827_
                                                   _specializer-impl241207_
                                                   _lifted-specializer-id240834_
                                                   _unchecked-specializer-impl241205_)))))
                                        _hd240516240578_
                                        _hd240513240570_
                                        _hd240510240562_)
                                       (let ()
                                         (declare (not safe))
                                         (_g240492240522_ _g240493240525_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g240492240522_ _g240493240525_)))
                           (let ()
                             (declare (not safe))
                             (_g240492240522_ _g240493240525_)))
                       (let ()
                         (declare (not safe))
                         (_g240492240522_ _g240493240525_)))))
               (let () (declare (not safe)) (_g240492240522_ _g240493240525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g240492240522_
                                                      _g240493240525_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g240492240522_
                                              _g240493240525_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g240492240522_ _g240493240525_)))))
                           (let ()
                             (declare (not safe))
                             (_g240492240522_ _g240493240525_)))))
                   (let ()
                     (declare (not safe))
                     (_g240492240522_ _g240493240525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g240492240522_
                                                      _g240493240525_))))))
                                       (declare (not safe))
                                       (_g240491241210_ _L239371_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L239371_))
                                         (let* ((_g241213241266_
                                                 (lambda (_g241214241263_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g241214241263_))))
                                                (_g241212242538_
                                                 (lambda (_g241214241269_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g241214241269_))
                                                       (let ((_e241222241271_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g241214241269_))))
                 (let ((_hd241221241274_
                        (let () (declare (not safe)) (##car _e241222241271_)))
                       (_tl241220241276_
                        (let () (declare (not safe)) (##cdr _e241222241271_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd241221241274_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd241221241274_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl241220241276_))
                               (let ((_e241225241279_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl241220241276_))))
                                 (let ((_hd241224241282_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e241225241279_)))
                                       (_tl241223241284_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e241225241279_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd241224241282_))
                                       (let ((_e241228241287_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd241224241282_))))
                                         (let ((_hd241227241290_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e241228241287_)))
                                               (_tl241226241292_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e241228241287_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd241227241290_))
                                               (let ((_e241231241295_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd241227241290_))))
                                                 (let ((_hd241230241298_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241231241295_)))
                                                       (_tl241229241300_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241231241295_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd241230241298_))
                                                       (let ((_e241234241303_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd241230241298_))))
                 (let ((_hd241233241306_
                        (let () (declare (not safe)) (##car _e241234241303_)))
                       (_tl241232241308_
                        (let () (declare (not safe)) (##cdr _e241234241303_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl241232241308_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl241229241300_))
                           (let ((_e241237241311_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl241229241300_))))
                             (let ((_hd241236241314_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e241237241311_)))
                                   (_tl241235241316_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e241237241311_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd241236241314_))
                                   (let ((_e241240241319_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd241236241314_))))
                                     (let ((_hd241239241322_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241240241319_)))
                                           (_tl241238241324_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241240241319_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd241239241322_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd241239241322_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl241238241324_))
                                                   (let ((_e241243241327_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl241238241324_))))
                                                     (let ((_hd241242241330_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e241243241327_)))
                                                           (_tl241241241332_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e241243241327_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd241242241330_))
                                                           (let ((_e241246241335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd241242241330_))))
                     (let ((_hd241245241338_
                            (let ()
                              (declare (not safe))
                              (##car _e241246241335_)))
                           (_tl241244241340_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241246241335_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd241245241338_))
                           (let ((_e241249241343_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd241245241338_))))
                             (let ((_hd241248241346_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e241249241343_)))
                                   (_tl241247241348_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e241249241343_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd241248241346_))
                                   (let ((_e241252241351_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd241248241346_))))
                                     (let ((_hd241251241354_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241252241351_)))
                                           (_tl241250241356_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241252241351_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl241250241356_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl241247241348_))
                                               (let ((_e241255241359_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl241247241348_))))
                                                 (let ((_hd241254241362_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241255241359_)))
                                                       (_tl241253241364_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241255241359_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl241253241364_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl241244241340_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl241241241332_))
                       (let ((_e241258241367_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl241241241332_))))
                         (let ((_hd241257241370_
                                (let ()
                                  (declare (not safe))
                                  (##car _e241258241367_)))
                               (_tl241256241372_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e241258241367_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl241256241372_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl241235241316_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl241226241292_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl241223241284_))
                                           (let ((_e241261241375_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl241223241284_))))
                                             (let ((_hd241260241378_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e241261241375_)))
                                                   (_tl241259241380_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e241261241375_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl241259241380_))
                                                   ((lambda (_L241383_
                                                             _L241384_
                                                             _L241385_
                                                             _L241386_
                                                             _L241387_)
                                                      (let* ((_g241426241488_
                                                              (lambda (_g241427241485_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g241427241485_))))
                     (_g241425242535_
                      (lambda (_g241427241491_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g241427241491_))
                            (let ((_e241435241493_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g241427241491_))))
                              (let ((_hd241434241496_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241435241493_)))
                                    (_tl241433241498_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241435241493_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241434241496_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd241434241496_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241433241498_))
                                            (let ((_e241438241501_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241433241498_))))
                                              (let ((_hd241437241504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241438241501_)))
                                                    (_tl241436241506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241438241501_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241436241506_))
                                                    (let ((_e241441241509_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241436241506_))))
                                                      (let ((_hd241440241512_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e241441241509_)))
                    (_tl241439241514_
                     (let () (declare (not safe)) (##cdr _e241441241509_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd241440241512_))
                    (let ((_e241444241517_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd241440241512_))))
                      (let ((_hd241443241520_
                             (let ()
                               (declare (not safe))
                               (##car _e241444241517_)))
                            (_tl241442241522_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241444241517_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd241443241520_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd241443241520_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl241442241522_))
                                    (let ((_e241447241525_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl241442241522_))))
                                      (let ((_hd241446241528_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241447241525_)))
                                            (_tl241445241530_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241447241525_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd241446241528_))
                                            (let ((_e241450241533_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd241446241528_))))
                                              (let ((_hd241449241536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241450241533_)))
                                                    (_tl241448241538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241450241533_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd241449241536_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd241449241536_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241448241538_))
                                                            (let ((_e241453241541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241448241538_))))
                      (let ((_hd241452241544_
                             (let ()
                               (declare (not safe))
                               (##car _e241453241541_)))
                            (_tl241451241546_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241453241541_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241451241546_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241445241530_))
                                (let ((_e241456241549_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241445241530_))))
                                  (let ((_hd241455241552_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241456241549_)))
                                        (_tl241454241554_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241456241549_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241455241552_))
                                        (let ((_e241459241557_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241455241552_))))
                                          (let ((_hd241458241560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241459241557_)))
                                                (_tl241457241562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241459241557_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd241458241560_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd241458241560_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl241457241562_))
                                                        (let ((_e241462241565_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl241457241562_))))
                  (let ((_hd241461241568_
                         (let () (declare (not safe)) (##car _e241462241565_)))
                        (_tl241460241570_
                         (let ()
                           (declare (not safe))
                           (##cdr _e241462241565_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241460241570_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241454241554_))
                            (let ((_e241465241573_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241454241554_))))
                              (let ((_hd241464241576_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241465241573_)))
                                    (_tl241463241578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241465241573_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241464241576_))
                                    (let ((_e241468241581_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241464241576_))))
                                      (let ((_hd241467241584_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241468241581_)))
                                            (_tl241466241586_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241468241581_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241467241584_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241467241584_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241466241586_))
                                                    (let ((_e241471241589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241466241586_))))
                                                      (let ((_hd241470241592_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e241471241589_)))
                    (_tl241469241594_
                     (let () (declare (not safe)) (##cdr _e241471241589_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241469241594_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl241463241578_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl241463241578_))
                                  '1)
                            (let ((_g248066_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl241463241578_
                                      '1))))
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
                                (let ((_target241472241597_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248066_ 0)))
                                      (_tl241474241599_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248066_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl241474241599_))
                                      (let ((_e241483241602_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl241474241599_))))
                                        (let ((_hd241482241605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e241483241602_)))
                                              (_tl241481241607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e241483241602_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl241481241607_))
                                              (letrec ((_loop241475241610_
                                                        (lambda (_hd241473241613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref241479241615_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd241473241613_))
                      (let ((_e241476241618_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd241473241613_))))
                        (let ((_lp-hd241477241621_
                               (let ()
                                 (declare (not safe))
                                 (##car _e241476241618_)))
                              (_lp-tl241478241623_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e241476241618_))))
                          (let ((__tmp248153
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd241477241621_
                                         _kw-ref241479241615_))))
                            (declare (not safe))
                            (_loop241475241610_
                             _lp-tl241478241623_
                             __tmp248153))))
                      (let ((_kw-ref241480241626_
                             (reverse _kw-ref241479241615_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241439241514_))
                            ((lambda (_L241629_
                                      _L241630_
                                      _L241631_
                                      _L241632_
                                      _L241633_)
                               (let* ((_kw-count241684_
                                       (length (let ((__tmp248068
                                                      (lambda (_g241676241679_
                                                               _g241677241681_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g241676241679_
                                                                _g241677241681_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp248068
                                                         '()
                                                         _L241630_))))
                                      (_self-index241686_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count241684_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L241385_))
                                     (let* ((_g241689241703_
                                             (lambda (_g241690241700_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g241690241700_))))
                                            (_g241688241874_
                                             (lambda (_g241690241706_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g241690241706_))
                                                   (let ((_e241695241708_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g241690241706_))))
                                                     (let ((_hd241694241711_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e241695241708_)))
                                                           (_tl241693241713_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e241695241708_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl241693241713_))
                                                           (let ((_e241698241716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl241693241713_))))
                     (let ((_hd241697241719_
                            (let ()
                              (declare (not safe))
                              (##car _e241698241716_)))
                           (_tl241696241721_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241698241716_))))
                       ((lambda (_L241724_ _L241725_)
                          (let ((_self241741_
                                 (list-ref _L241725_ _self-index241686_)))
                            (for-each
                             (lambda (_g241742241744_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g241742241744_
                                  _self241741_
                                  _method-calls239391_
                                  _slot-refs239392_
                                  _class-type-check239393_
                                  _struct-type-check239394_
                                  _struct-type-assert239395_)))
                             _L241724_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?239398_))
                                _stx239297_
                                (let* ((_specializer-id241753_
                                        (let* ((_id241747_
                                                (let ((__tmp248119
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L239372_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp248119
                                                   '"::specialize")))
                                               (_specializer-id241750_
                                                (let ((__tmp248120
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx239297_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id241747_
                                                   __tmp248120))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id241750_))
                                          _specializer-id241750_))
                                       (_lifted-specializer-id241760_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?239400_))
                                            (let* ((_id241755_
                                                    (let ((__tmp248121
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239372_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp248121
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id241757_
                                                    (let ((__tmp248122
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx239297_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id241755_
                                                       __tmp248122))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id241757_))
                                              _lifted-specializer-id241757_)
                                            '#f))
                                       (_$t241762_
                                        (let ((__tmp248123 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp248123)))
                                       (_methods241764_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls239391_)))
                                       (_$methods241768_
                                        (map (lambda (_id241766_)
                                               (let ((__tmp248124
                                                      (gensym _id241766_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp248124)))
                                             _methods241764_))
                                       (_g248125_
                                        (for-each
                                         (lambda (_g241769241772_
                                                  _g241770241774_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls239391_
                                              _g241769241772_
                                              _g241770241774_)))
                                         _methods241764_
                                         _$methods241768_))
                                       (_methods-bind241785_
                                        (map (lambda (_g241777241780_
                                                      _g241778241782_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind239299_
                                                  _$t241762_
                                                  _g241777241780_
                                                  _g241778241782_)))
                                             _methods241764_
                                             _$methods241768_))
                                       (_slots241787_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs239392_)))
                                       (_$slots241791_
                                        (map (lambda (_id241789_)
                                               (let ((__tmp248126
                                                      (gensym _id241789_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp248126)))
                                             _slots241787_))
                                       (_g248127_
                                        (for-each
                                         (lambda (_g241792241795_
                                                  _g241793241797_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs239392_
                                              _g241792241795_
                                              _g241793241797_)))
                                         _slots241787_
                                         _$slots241791_))
                                       (_slots-bind241808_
                                        (map (lambda (_g241800241803_
                                                      _g241801241805_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind239300_
                                                  _$t241762_
                                                  _g241800241803_
                                                  _g241801241805_)))
                                             _slots241787_
                                             _$slots241791_))
                                       (_class-check241810_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check239393_)))
                                       (_$class-check241813_
                                        (map (lambda (_g248128_)
                                               (let ((__tmp248129
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp248129)))
                                             _class-check241810_))
                                       (_g248130_
                                        (for-each
                                         (lambda (_g241814241817_
                                                  _g241815241819_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check239393_
                                              _g241814241817_
                                              _g241815241819_)))
                                         _class-check241810_
                                         _$class-check241813_))
                                       (_class-check-bind241830_
                                        (map (lambda (_g241822241825_
                                                      _g241823241827_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind239301_
                                                  _$t241762_
                                                  _g241822241825_
                                                  _g241823241827_)))
                                             _class-check241810_
                                             _$class-check241813_))
                                       (_struct-check-all241832_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check239394_
                                           _struct-type-assert239395_)))
                                       (_struct-check241834_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all241832_)))
                                       (_$struct-check241837_
                                        (map (lambda (_g248131_)
                                               (let ((__tmp248132
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp248132)))
                                             _struct-check241834_))
                                       (_g248133_
                                        (for-each
                                         (lambda (_g241838241841_
                                                  _g241839241843_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all241832_
                                              _g241838241841_
                                              _g241839241843_)))
                                         _struct-check241834_
                                         _$struct-check241837_))
                                       (_struct-check-bind241854_
                                        (map (lambda (_g241846241849_
                                                      _g241847241851_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind239302_
                                                  _$t241762_
                                                  _g241846241849_
                                                  _g241847241851_)))
                                             _struct-check241834_
                                             _$struct-check241837_))
                                       (_make-specializer-impl241865_
                                        (lambda (_struct-type-check1241856_
                                                 _struct-type-check2241857_)
                                          (let* ((_specializer-body241863_
                                                  (map (lambda (_g241858241860_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g241858241860_
                                                            _self241741_
                                                            _$t241762_
                                                            _method-calls239391_
                                                            _slot-refs239392_
                                                            _class-type-check239393_
                                                            _struct-type-check1241856_
                                                            _struct-type-check2241857_)))
                                                       _L241724_))
                                                 (__tmp248134
                                                  (let ((__tmp248135
                                                         (let ((__tmp248137
                                                                (let ((__tmp248138
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp248150
                                      (let ()
                                        (declare (not safe))
                                        (cons _L241387_ '())))
                                     (__tmp248139
                                      (let ((__tmp248140
                                             (let ((__tmp248141
                                                    (let ((__tmp248143
                                                           (let ((__tmp248144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248149
                                 (let ()
                                   (declare (not safe))
                                   (cons _L241386_ '())))
                                (__tmp248145
                                 (let ((__tmp248146
                                        (let ((__tmp248147
                                               (let ((__tmp248148
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L241725_
                                                              _specializer-body241863_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp248148))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp248147
                                           _L241385_))))
                                   (declare (not safe))
                                   (cons __tmp248146 '()))))
                            (declare (not safe))
                            (cons __tmp248149 __tmp248145))))
                     (declare (not safe))
                     (cons __tmp248144 '())))
                  (__tmp248142
                   (let () (declare (not safe)) (cons _L241384_ '()))))
              (declare (not safe))
              (cons __tmp248143 __tmp248142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp248141))))
                                        (declare (not safe))
                                        (cons __tmp248140 '()))))
                                 (declare (not safe))
                                 (cons __tmp248150 __tmp248139))))
                          (declare (not safe))
                          (cons __tmp248138 '())))
                       (__tmp248136
                        (let () (declare (not safe)) (cons _L241383_ '()))))
                   (declare (not safe))
                   (cons __tmp248137 __tmp248136))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp248135))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp248134
                                             _stx239297_))))
                                       (_specializer-impl241867_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl241865_
                                           _struct-check-all241832_
                                           _empty239396_)))
                                       (_unchecked-specializer-impl241869_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?239399_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl241865_
                                               _empty239396_
                                               _struct-check-all241832_))
                                            '#f))
                                       (_specializer-impl241871_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl239303_
                                           _$t241762_
                                           _methods-bind241785_
                                           _slots-bind241808_
                                           _class-check-bind241830_
                                           _struct-check-bind241854_
                                           _specializer-impl241867_
                                           _lifted-specializer-id241760_
                                           _unchecked-specializer-impl241869_))))
                                  (let ((__tmp248152
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L239372_)))
                                        (__tmp248151
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id241753_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp248152
                                     '" => "
                                     __tmp248151))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def239304_
                                     _L239372_
                                     _specializer-id241753_
                                     _specializer-impl241871_
                                     _lifted-specializer-id241760_
                                     _unchecked-specializer-impl241869_))))))
                        _tl241696241721_
                        _hd241697241719_)))
                   (let ()
                     (declare (not safe))
                     (_g241689241703_ _g241690241706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241689241703_
                                                      _g241690241706_))))))
                                       (declare (not safe))
                                       (_g241688241874_ _L241385_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L241385_))
                                         (let* ((_g241877241907_
                                                 (lambda (_g241878241904_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g241878241904_))))
                                                (_g241876242532_
                                                 (lambda (_g241878241910_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g241878241910_))
                                                       (let ((_e241884241912_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g241878241910_))))
                 (let ((_hd241883241915_
                        (let () (declare (not safe)) (##car _e241884241912_)))
                       (_tl241882241917_
                        (let () (declare (not safe)) (##cdr _e241884241912_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl241882241917_))
                       (let ((_e241887241920_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl241882241917_))))
                         (let ((_hd241886241923_
                                (let ()
                                  (declare (not safe))
                                  (##car _e241887241920_)))
                               (_tl241885241925_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e241887241920_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd241886241923_))
                               (let ((_e241890241928_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd241886241923_))))
                                 (let ((_hd241889241931_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e241890241928_)))
                                       (_tl241888241933_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e241890241928_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd241889241931_))
                                       (let ((_e241893241936_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd241889241931_))))
                                         (let ((_hd241892241939_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e241893241936_)))
                                               (_tl241891241941_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e241893241936_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd241892241939_))
                                               (let ((_e241896241944_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd241892241939_))))
                                                 (let ((_hd241895241947_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e241896241944_)))
                                                       (_tl241894241949_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e241896241944_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl241894241949_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl241891241941_))
                                                           (let ((_e241899241952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl241891241941_))))
                     (let ((_hd241898241955_
                            (let ()
                              (declare (not safe))
                              (##car _e241899241952_)))
                           (_tl241897241957_
                            (let ()
                              (declare (not safe))
                              (##cdr _e241899241952_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl241897241957_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl241888241933_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl241885241925_))
                                   (let ((_e241902241960_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl241885241925_))))
                                     (let ((_hd241901241963_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e241902241960_)))
                                           (_tl241900241965_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e241902241960_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl241900241965_))
                                           ((lambda (_L241968_
                                                     _L241969_
                                                     _L241970_)
                                              (let* ((_g241993242007_
                                                      (lambda (_g241994242004_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g241994242004_))))
                                                     (_g241992242048_
                                                      (lambda (_g241994242010_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g241994242010_))
                                                            (let ((_e241999242012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g241994242010_))))
                      (let ((_hd241998242015_
                             (let ()
                               (declare (not safe))
                               (##car _e241999242012_)))
                            (_tl241997242017_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241999242012_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241997242017_))
                            (let ((_e242002242020_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241997242017_))))
                              (let ((_hd242001242023_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242002242020_)))
                                    (_tl242000242025_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242002242020_))))
                                ((lambda (_L242028_ _L242029_)
                                   (let ((_self242042_
                                          (list-ref
                                           _L242029_
                                           _self-index241686_)))
                                     (for-each
                                      (lambda (_g242043242045_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g242043242045_
                                           _self242042_
                                           _method-calls239391_
                                           _slot-refs239392_
                                           _class-type-check239393_
                                           _struct-type-check239394_
                                           _struct-type-assert239395_)))
                                      _L242028_)))
                                 _tl242000242025_
                                 _hd242001242023_)))
                            (let ()
                              (declare (not safe))
                              (_g241993242007_ _g241994242010_)))))
                    (let ()
                      (declare (not safe))
                      (_g241993242007_ _g241994242010_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g241992242048_ _L241969_))
                                              (let* ((_g242051242070_
                                                      (lambda (_g242052242067_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g242052242067_))))
                                                     (_g242050242175_
                                                      (lambda (_g242052242073_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g242052242073_))
                                                            (let ((_e242056242075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g242052242073_))))
                      (let ((_hd242055242078_
                             (let ()
                               (declare (not safe))
                               (##car _e242056242075_)))
                            (_tl242054242080_
                             (let ()
                               (declare (not safe))
                               (##cdr _e242056242075_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl242054242080_))
                            (let ((_g248069_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl242054242080_
                                      '0))))
                              (begin
                                (let ((_g248070_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g248069_)
                                             (##vector-length _g248069_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g248070_ 2)))
                                      (error "Context expects 2 values"
                                             _g248070_)))
                                (let ((_target242057242083_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248069_ 0)))
                                      (_tl242059242085_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g248069_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242059242085_))
                                      (letrec ((_loop242060242088_
                                                (lambda (_hd242058242091_
                                                         _clause242064242093_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd242058242091_))
                                                      (let ((_e242061242096_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd242058242091_))))
                (let ((_lp-hd242062242099_
                       (let () (declare (not safe)) (##car _e242061242096_)))
                      (_lp-tl242063242101_
                       (let () (declare (not safe)) (##cdr _e242061242096_))))
                  (let ((__tmp248072
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd242062242099_ _clause242064242093_))))
                    (declare (not safe))
                    (_loop242060242088_ _lp-tl242063242101_ __tmp248072))))
              (let ((_clause242065242104_ (reverse _clause242064242093_)))
                ((lambda (_L242107_)
                   (for-each
                    (lambda (_clause242120_)
                      (let* ((_g242122242133_
                              (lambda (_g242123242130_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g242123242130_))))
                             (_g242121242165_
                              (lambda (_g242123242136_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g242123242136_))
                                    (let ((_e242128242138_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g242123242136_))))
                                      (let ((_hd242127242141_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e242128242138_)))
                                            (_tl242126242143_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e242128242138_))))
                                        ((lambda (_L242146_ _L242147_)
                                           (let ((_self242159_
                                                  (list-ref
                                                   _L242147_
                                                   _self-index241686_)))
                                             (for-each
                                              (lambda (_g242160242162_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g242160242162_
                                                   _self242159_
                                                   _method-calls239391_
                                                   _slot-refs239392_
                                                   _class-type-check239393_
                                                   _struct-type-check239394_
                                                   _struct-type-assert239395_)))
                                              _L242146_)))
                                         _tl242126242143_
                                         _hd242127242141_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g242122242133_ _g242123242136_))))))
                        (declare (not safe))
                        (_g242121242165_ _clause242120_)))
                    (let ((__tmp248071
                           (lambda (_g242167242170_ _g242168242172_)
                             (let ()
                               (declare (not safe))
                               (cons _g242167242170_ _g242168242172_)))))
                      (declare (not safe))
                      (foldr1 __tmp248071 '() _L242107_))))
                 _clause242065242104_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop242060242088_
                                           _target242057242083_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g242051242070_ _g242052242073_))))))
                            (let ()
                              (declare (not safe))
                              (_g242051242070_ _g242052242073_)))))
                    (let ()
                      (declare (not safe))
                      (_g242051242070_ _g242052242073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g242050242175_ _L241968_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?239398_))
                                                  _stx239297_
                                                  (let* ((_specializer-id242184_
                                                          (let* ((_id242178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp248073
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L239372_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp248073 '"::specialize")))
                         (_specializer-id242181_
                          (let ((__tmp248074
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx239297_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id242178_ __tmp248074))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id242181_))
                    _specializer-id242181_))
                 (_lifted-specializer-id242191_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?239400_))
                      (let* ((_id242186_
                              (let ((__tmp248075
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L239372_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp248075
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id242188_
                              (let ((__tmp248076
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx239297_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id242186_
                                 __tmp248076))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id242188_))
                        _lifted-specializer-id242188_)
                      '#f))
                 (_$t242193_
                  (let ((__tmp248077 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp248077)))
                 (_methods242195_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls239391_)))
                 (_$methods242199_
                  (map (lambda (_id242197_)
                         (let ((__tmp248078 (gensym _id242197_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248078)))
                       _methods242195_))
                 (_g248079_
                  (for-each
                   (lambda (_g242200242203_ _g242201242205_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls239391_
                        _g242200242203_
                        _g242201242205_)))
                   _methods242195_
                   _$methods242199_))
                 (_methods-bind242216_
                  (map (lambda (_g242208242211_ _g242209242213_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind239299_
                            _$t242193_
                            _g242208242211_
                            _g242209242213_)))
                       _methods242195_
                       _$methods242199_))
                 (_slots242218_
                  (let () (declare (not safe)) (hash-keys _slot-refs239392_)))
                 (_$slots242222_
                  (map (lambda (_id242220_)
                         (let ((__tmp248080 (gensym _id242220_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp248080)))
                       _slots242218_))
                 (_g248081_
                  (for-each
                   (lambda (_g242223242226_ _g242224242228_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs239392_
                        _g242223242226_
                        _g242224242228_)))
                   _slots242218_
                   _$slots242222_))
                 (_slots-bind242239_
                  (map (lambda (_g242231242234_ _g242232242236_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind239300_
                            _$t242193_
                            _g242231242234_
                            _g242232242236_)))
                       _slots242218_
                       _$slots242222_))
                 (_class-check242241_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check239393_)))
                 (_$class-check242244_
                  (map (lambda (_g248082_)
                         (let ((__tmp248083 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248083)))
                       _class-check242241_))
                 (_g248084_
                  (for-each
                   (lambda (_g242245242248_ _g242246242250_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check239393_
                        _g242245242248_
                        _g242246242250_)))
                   _class-check242241_
                   _$class-check242244_))
                 (_class-check-bind242261_
                  (map (lambda (_g242253242256_ _g242254242258_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind239301_
                            _$t242193_
                            _g242253242256_
                            _g242254242258_)))
                       _class-check242241_
                       _$class-check242244_))
                 (_struct-check-all242263_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check239394_
                     _struct-type-assert239395_)))
                 (_struct-check242265_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all242263_)))
                 (_$struct-check242268_
                  (map (lambda (_g248085_)
                         (let ((__tmp248086 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp248086)))
                       _struct-check242265_))
                 (_g248087_
                  (for-each
                   (lambda (_g242269242272_ _g242270242274_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all242263_
                        _g242269242272_
                        _g242270242274_)))
                   _struct-check242265_
                   _$struct-check242268_))
                 (_struct-check-bind242285_
                  (map (lambda (_g242277242280_ _g242278242282_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind239302_
                            _$t242193_
                            _g242277242280_
                            _g242278242282_)))
                       _struct-check242265_
                       _$struct-check242268_))
                 (_make-specializer-lambda-expr242371_
                  (lambda (_struct-type-check1242287_
                           _struct-type-check2242288_)
                    (let* ((_g242290242304_
                            (lambda (_g242291242301_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g242291242301_))))
                           (_g242289242368_
                            (lambda (_g242291242307_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g242291242307_))
                                  (let ((_e242296242309_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g242291242307_))))
                                    (let ((_hd242295242312_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242296242309_)))
                                          (_tl242294242314_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242296242309_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242294242314_))
                                          (let ((_e242299242317_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242294242314_))))
                                            (let ((_hd242298242320_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242299242317_)))
                                                  (_tl242297242322_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242299242317_))))
                                              ((lambda (_L242325_ _L242326_)
                                                 (let* ((_self242359_
                                                         (list-ref
                                                          _L242326_
                                                          _self-index241686_))
                                                        (_body242365_
                                                         (map (lambda (_g242360242362_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g242360242362_
                           _self242359_
                           _$t242193_
                           _method-calls239391_
                           _slot-refs239392_
                           _class-type-check239393_
                           _struct-type-check1242287_
                           _struct-type-check2242288_)))
                      _L242325_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp248088
                                                          (let ((__tmp248089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L242326_ _body242365_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp248089))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248088
                                                      _L241969_))))
                                               _tl242297242322_
                                               _hd242298242320_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g242290242304_
                                             _g242291242307_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242290242304_ _g242291242307_))))))
                      (declare (not safe))
                      (_g242289242368_ _L241969_))))
                 (_make-specializer-case-lambda-expr242510_
                  (lambda (_struct-type-check1242373_
                           _struct-type-check2242374_)
                    (let* ((_g242376242395_
                            (lambda (_g242377242392_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g242377242392_))))
                           (_g242375242507_
                            (lambda (_g242377242398_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g242377242398_))
                                  (let ((_e242381242400_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g242377242398_))))
                                    (let ((_hd242380242403_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242381242400_)))
                                          (_tl242379242405_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242381242400_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl242379242405_))
                                          (let ((_g248090_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl242379242405_
                                                    '0))))
                                            (begin
                                              (let ((_g248091_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g248090_)
                                                           (##vector-length
                                                            _g248090_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g248091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g248091_)))
                                              (let ((_target242382242408_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g248090_
                                                        0)))
                                                    (_tl242384242410_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g248090_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl242384242410_))
                                                    (letrec ((_loop242385242413_
                                                              (lambda (_hd242383242416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause242389242418_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd242383242416_))
                            (let ((_e242386242421_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd242383242416_))))
                              (let ((_lp-hd242387242424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e242386242421_)))
                                    (_lp-tl242388242426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e242386242421_))))
                                (let ((__tmp248094
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd242387242424_
                                               _clause242389242418_))))
                                  (declare (not safe))
                                  (_loop242385242413_
                                   _lp-tl242388242426_
                                   __tmp248094))))
                            (let ((_clause242390242429_
                                   (reverse _clause242389242418_)))
                              ((lambda (_L242432_)
                                 (let* ((_clauses242505_
                                         (map (lambda (_clause242447_)
                                                (let* ((_g242449242460_
                                                        (lambda (_g242450242457_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g242450242457_))))
                                                       (_g242448242495_
                                                        (lambda (_g242450242463_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g242450242463_))
                      (let ((_e242455242465_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g242450242463_))))
                        (let ((_hd242454242468_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242455242465_)))
                              (_tl242453242470_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242455242465_))))
                          ((lambda (_L242473_ _L242474_)
                             (let* ((_self242486_
                                     (list-ref _L242474_ _self-index241686_))
                                    (_body242492_
                                     (map (lambda (_g242487242489_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g242487242489_
                                               _self242486_
                                               _$t242193_
                                               _method-calls239391_
                                               _slot-refs239392_
                                               _class-type-check239393_
                                               _struct-type-check1242373_
                                               _struct-type-check2242374_)))
                                          _L242473_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L242474_ _body242492_))))
                           _tl242453242470_
                           _hd242454242468_)))
                      (let ()
                        (declare (not safe))
                        (_g242449242460_ _g242450242463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g242448242495_
                                                   _clause242447_)))
                                              (let ((__tmp248092
                                                     (lambda (_g242497242500_
                                                              _g242498242502_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g242497242500_
                                                               _g242498242502_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp248092
                                                        '()
                                                        _L242432_))))
                                        (__tmp248093
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses242505_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp248093
                                    _L241968_)))
                               _clause242390242429_))))))
              (let ()
                (declare (not safe))
                (_loop242385242413_ _target242382242408_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g242376242395_
                                                       _g242377242398_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g242376242395_
                                             _g242377242398_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g242376242395_ _g242377242398_))))))
                      (declare (not safe))
                      (_g242375242507_ _L241968_))))
                 (_make-specializer-impl242515_
                  (lambda (_specializer-lambda-expr242512_
                           _specializer-case-lambda-expr242513_)
                    (let ((__tmp248095
                           (let ((__tmp248096
                                  (let ((__tmp248098
                                         (let ((__tmp248099
                                                (let ((__tmp248116
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L241387_ '())))
                                                      (__tmp248100
                                                       (let ((__tmp248101
                                                              (let ((__tmp248102
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp248104
                                    (let ((__tmp248105
                                           (let ((__tmp248115
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L241386_ '())))
                                                 (__tmp248106
                                                  (let ((__tmp248107
                                                         (let ((__tmp248108
                                                                (let ((__tmp248109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp248111
                                      (let ((__tmp248112
                                             (let ((__tmp248114
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L241970_ '())))
                                                   (__tmp248113
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr242512_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp248114
                                                     __tmp248113))))
                                        (declare (not safe))
                                        (cons __tmp248112 '())))
                                     (__tmp248110
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr242513_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp248111 __tmp248110))))
                          (declare (not safe))
                          (cons '%#let-values __tmp248109))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp248108 _stx239297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248107 '()))))
                                             (declare (not safe))
                                             (cons __tmp248115 __tmp248106))))
                                      (declare (not safe))
                                      (cons __tmp248105 '())))
                                   (__tmp248103
                                    (let ()
                                      (declare (not safe))
                                      (cons _L241384_ '()))))
                               (declare (not safe))
                               (cons __tmp248104 __tmp248103))))
                        (declare (not safe))
                        (cons '%#let-values __tmp248102))))
                 (declare (not safe))
                 (cons __tmp248101 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp248116
                                                        __tmp248100))))
                                           (declare (not safe))
                                           (cons __tmp248099 '())))
                                        (__tmp248097
                                         (let ()
                                           (declare (not safe))
                                           (cons _L241383_ '()))))
                                    (declare (not safe))
                                    (cons __tmp248098 __tmp248097))))
                             (declare (not safe))
                             (cons '%#let-values __tmp248096))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248095 _stx239297_))))
                 (_specializer-lambda-expr242517_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr242371_
                     _struct-check-all242263_
                     _empty239396_)))
                 (_specializer-case-lambda-expr242519_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr242510_
                     _struct-check-all242263_
                     _empty239396_)))
                 (_specializer-impl242521_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl242515_
                     _specializer-lambda-expr242517_
                     _specializer-case-lambda-expr242519_)))
                 (_unchecked-specializer-lambda-expr242523_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239399_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr242371_
                         _empty239396_
                         _struct-check-all242263_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr242525_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239399_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr242510_
                         _empty239396_
                         _struct-check-all242263_))
                      '#f))
                 (_unchecked-specializer-impl242527_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?239399_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl242515_
                         _unchecked-specializer-lambda-expr242523_
                         _unchecked-specializer-case-lambda-expr242525_))
                      '#f))
                 (_specializer-impl242529_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl239303_
                     _$t242193_
                     _methods-bind242216_
                     _slots-bind242239_
                     _class-check-bind242261_
                     _struct-check-bind242285_
                     _specializer-impl242521_
                     _lifted-specializer-id242191_
                     _unchecked-specializer-impl242527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248118
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L239372_)))
                                                          (__tmp248117
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id242184_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp248118
                                                       '" => "
                                                       __tmp248117))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def239304_
                                                       _L239372_
                                                       _specializer-id242184_
                                                       _specializer-impl242529_
                                                       _lifted-specializer-id242191_
                                                       _unchecked-specializer-impl242527_)))))
                                            _hd241901241963_
                                            _hd241898241955_
                                            _hd241895241947_)
                                           (let ()
                                             (declare (not safe))
                                             (_g241877241907_
                                              _g241878241910_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241877241907_ _g241878241910_)))
                               (let ()
                                 (declare (not safe))
                                 (_g241877241907_ _g241878241910_)))
                           (let ()
                             (declare (not safe))
                             (_g241877241907_ _g241878241910_)))))
                   (let ()
                     (declare (not safe))
                     (_g241877241907_ _g241878241910_)))
               (let ()
                 (declare (not safe))
                 (_g241877241907_ _g241878241910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241877241907_
                                                  _g241878241910_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g241877241907_ _g241878241910_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g241877241907_ _g241878241910_)))))
                       (let ()
                         (declare (not safe))
                         (_g241877241907_ _g241878241910_)))))
               (let ()
                 (declare (not safe))
                 (_g241877241907_ _g241878241910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g241876242532_ _L241385_))
                                         _stx239297_))))
                             _hd241482241605_
                             _kw-ref241480241626_
                             _hd241470241592_
                             _hd241461241568_
                             _hd241452241544_)
                            (let ()
                              (declare (not safe))
                              (_g241426241488_ _g241427241491_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop241475241610_
                                                   _target241472241597_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g241426241488_
                                                 _g241427241491_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g241426241488_ _g241427241491_))))))
                            (let ()
                              (declare (not safe))
                              (_g241426241488_ _g241427241491_)))
                        (let ()
                          (declare (not safe))
                          (_g241426241488_ _g241427241491_)))
                    (let ()
                      (declare (not safe))
                      (_g241426241488_ _g241427241491_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241426241488_
                                                       _g241427241491_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241426241488_
                                                   _g241427241491_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g241426241488_
                                               _g241427241491_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g241426241488_ _g241427241491_)))))
                            (let ()
                              (declare (not safe))
                              (_g241426241488_ _g241427241491_)))
                        (let ()
                          (declare (not safe))
                          (_g241426241488_ _g241427241491_)))))
                (let ()
                  (declare (not safe))
                  (_g241426241488_ _g241427241491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241426241488_
                                                       _g241427241491_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g241426241488_
                                                   _g241427241491_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g241426241488_ _g241427241491_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g241426241488_ _g241427241491_)))
                            (let ()
                              (declare (not safe))
                              (_g241426241488_ _g241427241491_)))))
                    (let ()
                      (declare (not safe))
                      (_g241426241488_ _g241427241491_)))
                (let ()
                  (declare (not safe))
                  (_g241426241488_ _g241427241491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241426241488_
                                                       _g241427241491_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g241426241488_
                                               _g241427241491_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g241426241488_ _g241427241491_)))
                                (let ()
                                  (declare (not safe))
                                  (_g241426241488_ _g241427241491_)))
                            (let ()
                              (declare (not safe))
                              (_g241426241488_ _g241427241491_)))))
                    (let ()
                      (declare (not safe))
                      (_g241426241488_ _g241427241491_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g241426241488_
                                                       _g241427241491_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g241426241488_
                                               _g241427241491_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g241426241488_ _g241427241491_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g241426241488_ _g241427241491_)))))
                            (let ()
                              (declare (not safe))
                              (_g241426241488_ _g241427241491_))))))
                (declare (not safe))
                (_g241425242535_ _L241384_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd241260241378_
                                                    _hd241257241370_
                                                    _hd241254241362_
                                                    _hd241251241354_
                                                    _hd241233241306_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241213241266_
                                                      _g241214241269_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g241213241266_
                                              _g241214241269_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g241213241266_ _g241214241269_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g241213241266_ _g241214241269_)))
                               (let ()
                                 (declare (not safe))
                                 (_g241213241266_ _g241214241269_)))))
                       (let ()
                         (declare (not safe))
                         (_g241213241266_ _g241214241269_)))
                   (let ()
                     (declare (not safe))
                     (_g241213241266_ _g241214241269_)))
               (let ()
                 (declare (not safe))
                 (_g241213241266_ _g241214241269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241213241266_
                                                  _g241214241269_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g241213241266_
                                              _g241214241269_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241213241266_ _g241214241269_)))))
                           (let ()
                             (declare (not safe))
                             (_g241213241266_ _g241214241269_)))))
                   (let ()
                     (declare (not safe))
                     (_g241213241266_ _g241214241269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g241213241266_
                                                      _g241214241269_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241213241266_
                                                  _g241214241269_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g241213241266_
                                              _g241214241269_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g241213241266_ _g241214241269_)))))
                           (let ()
                             (declare (not safe))
                             (_g241213241266_ _g241214241269_)))
                       (let ()
                         (declare (not safe))
                         (_g241213241266_ _g241214241269_)))))
               (let ()
                 (declare (not safe))
                 (_g241213241266_ _g241214241269_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g241213241266_
                                                  _g241214241269_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g241213241266_ _g241214241269_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g241213241266_ _g241214241269_)))
                           (let ()
                             (declare (not safe))
                             (_g241213241266_ _g241214241269_)))
                       (let ()
                         (declare (not safe))
                         (_g241213241266_ _g241214241269_)))))
               (let ()
                 (declare (not safe))
                 (_g241213241266_ _g241214241269_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g241212242538_ _L239371_))
                                         _stx239297_))))))))
                  (___kont246844246845_ (lambda () _stx239297_)))
              (let ((___match246873246874_
                     (lambda (_e239313239339_
                              _hd239312239342_
                              _tl239311239344_
                              _e239316239347_
                              _hd239315239350_
                              _tl239314239352_
                              _e239319239355_
                              _hd239318239358_
                              _tl239317239360_
                              _e239322239363_
                              _hd239321239366_
                              _tl239320239368_)
                       (let ((_L239371_ _hd239321239366_)
                             (_L239372_ _hd239318239358_))
                         (if (let ((__tmp248235
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L239372_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp248235))
                             (___kont246842246843_ _L239371_ _L239372_)
                             (___kont246844246845_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx246840246841_))
                    (let ((_e239313239339_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx246840246841_))))
                      (let ((_tl239311239344_
                             (let ()
                               (declare (not safe))
                               (##cdr _e239313239339_)))
                            (_hd239312239342_
                             (let ()
                               (declare (not safe))
                               (##car _e239313239339_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl239311239344_))
                            (let ((_e239316239347_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl239311239344_))))
                              (let ((_tl239314239352_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e239316239347_)))
                                    (_hd239315239350_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e239316239347_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd239315239350_))
                                    (let ((_e239319239355_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd239315239350_))))
                                      (let ((_tl239317239360_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e239319239355_)))
                                            (_hd239318239358_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e239319239355_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl239317239360_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl239314239352_))
                                                (let ((_e239322239363_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl239314239352_))))
                                                  (let ((_tl239320239368_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e239322239363_)))
                                                        (_hd239321239366_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e239322239363_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl239320239368_))
                                                        (___match246873246874_
                                                         _e239313239339_
                                                         _hd239312239342_
                                                         _tl239311239344_
                                                         _e239316239347_
                                                         _hd239315239350_
                                                         _tl239314239352_
                                                         _e239319239355_
                                                         _hd239318239358_
                                                         _tl239317239360_
                                                         _e239322239363_
                                                         _hd239321239366_
                                                         _tl239320239368_)
                                                        (___kont246844246845_))))
                                                (___kont246844246845_))
                                            (___kont246844246845_))))
                                    (___kont246844246845_))))
                            (___kont246844246845_))))
                    (___kont246844246845_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx238273_
               _self238274_
               _methods238275_
               _slots238276_
               _class-check238277_
               _struct-check238278_
               _struct-assert238279_)
        (let* ((___stx246876246877_ _stx238273_)
               (_g238287238509_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx246876246877_)))))
          (let ((___kont246878246879_
                 (lambda (_L239246_ _L239247_ _L239248_ _L239249_)
                   (let ((__tmp248236
                          (let () (declare (not safe)) (gx#stx-e _L239247_))))
                     (declare (not safe))
                     (table-set! _methods238275_ __tmp248236 '#t))
                   (for-each
                    (lambda (_g239282239284_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g239282239284_
                         _self238274_
                         _methods238275_
                         _slots238276_
                         _class-check238277_
                         _struct-check238278_
                         _struct-assert238279_)))
                    (let ((__tmp248237
                           (lambda (_g239286239289_ _g239287239291_)
                             (let ()
                               (declare (not safe))
                               (cons _g239286239289_ _g239287239291_)))))
                      (declare (not safe))
                      (foldr1 __tmp248237 '() _L239246_)))))
                (___kont246882246883_
                 (lambda (_L239081_ _L239082_ _L239083_ _L239084_ _L239085_)
                   (let ((__tmp248238
                          (let () (declare (not safe)) (gx#stx-e _L239082_))))
                     (declare (not safe))
                     (table-set! _methods238275_ __tmp248238 '#t))
                   (for-each
                    (lambda (_g239125239127_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g239125239127_
                         _self238274_
                         _methods238275_
                         _slots238276_
                         _class-check238277_
                         _struct-check238278_
                         _struct-assert238279_)))
                    (let ((__tmp248239
                           (lambda (_g239129239132_ _g239130239134_)
                             (let ()
                               (declare (not safe))
                               (cons _g239129239132_ _g239130239134_)))))
                      (declare (not safe))
                      (foldr1 __tmp248239 '() _L239081_)))))
                (___kont246886246887_
                 (lambda (_L238914_ _L238915_ _L238916_)
                   (let ((__tmp248240
                          (let () (declare (not safe)) (gx#stx-e _L238914_))))
                     (declare (not safe))
                     (table-set! _slots238276_ __tmp248240 '#t))))
                (___kont246888246889_
                 (lambda (_L238791_ _L238792_ _L238793_ _L238794_)
                   (let ((__tmp248241
                          (let () (declare (not safe)) (gx#stx-e _L238792_))))
                     (declare (not safe))
                     (table-set! _slots238276_ __tmp248241 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L238791_
                      _self238274_
                      _methods238275_
                      _slots238276_
                      _class-check238277_
                      _struct-check238278_
                      _struct-assert238279_))))
                (___kont246890246891_
                 (lambda (_L238675_ _L238676_)
                   (let ((__tmp248242
                          (##structure-ref
                           (let ((__tmp248243
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L238676_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248243))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots238276_ __tmp248242 '#t))))
                (___kont246892246893_
                 (lambda (_L238585_ _L238586_ _L238587_)
                   (let ((__tmp248244
                          (##structure-ref
                           (let ((__tmp248245
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L238587_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248245))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots238276_ __tmp248244 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L238585_
                      _self238274_
                      _methods238275_
                      _slots238276_
                      _class-check238277_
                      _struct-check238278_
                      _struct-assert238279_))))
                (___kont246894246895_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx238273_
                      _self238274_
                      _methods238275_
                      _slots238276_
                      _class-check238277_
                      _struct-check238278_
                      _struct-assert238279_)))))
            (let* ((___match247375247376_
                    (lambda (_e238483238521_
                             _hd238482238524_
                             _tl238481238526_
                             _e238486238529_
                             _hd238485238532_
                             _tl238484238534_
                             _e238489238537_
                             _hd238488238540_
                             _tl238487238542_
                             _e238492238545_
                             _hd238491238548_
                             _tl238490238550_
                             _e238495238553_
                             _hd238494238556_
                             _tl238493238558_
                             _e238498238561_
                             _hd238497238564_
                             _tl238496238566_
                             _e238501238569_
                             _hd238500238572_
                             _tl238499238574_
                             _e238504238577_
                             _hd238503238580_
                             _tl238502238582_)
                      (let ((_L238585_ _hd238503238580_)
                            (_L238586_ _hd238500238572_)
                            (_L238587_ _hd238491238548_))
                        (if (and (let ((__tmp248246
                                        (let ((__tmp248247
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L238587_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248247))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248246
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238586_
                                    _self238274_)))
                            (___kont246892246893_
                             _L238585_
                             _L238586_
                             _L238587_)
                            (___kont246894246895_)))))
                   (___match247373247374_
                    (lambda (_e238483238521_
                             _hd238482238524_
                             _tl238481238526_
                             _e238486238529_
                             _hd238485238532_
                             _tl238484238534_
                             _e238489238537_
                             _hd238488238540_
                             _tl238487238542_
                             _e238492238545_
                             _hd238491238548_
                             _tl238490238550_
                             _e238495238553_
                             _hd238494238556_
                             _tl238493238558_
                             _e238498238561_
                             _hd238497238564_
                             _tl238496238566_
                             _e238501238569_
                             _hd238500238572_
                             _tl238499238574_
                             _e238504238577_
                             _hd238503238580_
                             _tl238502238582_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238502238582_))
                          (___match247375247376_
                           _e238483238521_
                           _hd238482238524_
                           _tl238481238526_
                           _e238486238529_
                           _hd238485238532_
                           _tl238484238534_
                           _e238489238537_
                           _hd238488238540_
                           _tl238487238542_
                           _e238492238545_
                           _hd238491238548_
                           _tl238490238550_
                           _e238495238553_
                           _hd238494238556_
                           _tl238493238558_
                           _e238498238561_
                           _hd238497238564_
                           _tl238496238566_
                           _e238501238569_
                           _hd238500238572_
                           _tl238499238574_
                           _e238504238577_
                           _hd238503238580_
                           _tl238502238582_)
                          (___kont246894246895_))))
                   (___match247367247368_
                    (lambda (_e238483238521_
                             _hd238482238524_
                             _tl238481238526_
                             _e238486238529_
                             _hd238485238532_
                             _tl238484238534_
                             _e238489238537_
                             _hd238488238540_
                             _tl238487238542_
                             _e238492238545_
                             _hd238491238548_
                             _tl238490238550_
                             _e238495238553_
                             _hd238494238556_
                             _tl238493238558_
                             _e238498238561_
                             _hd238497238564_
                             _tl238496238566_
                             _e238501238569_
                             _hd238500238572_
                             _tl238499238574_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238493238558_))
                          (let ((_e238504238577_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238493238558_))))
                            (let ((_tl238502238582_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238504238577_)))
                                  (_hd238503238580_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238504238577_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238502238582_))
                                  (___match247375247376_
                                   _e238483238521_
                                   _hd238482238524_
                                   _tl238481238526_
                                   _e238486238529_
                                   _hd238485238532_
                                   _tl238484238534_
                                   _e238489238537_
                                   _hd238488238540_
                                   _tl238487238542_
                                   _e238492238545_
                                   _hd238491238548_
                                   _tl238490238550_
                                   _e238495238553_
                                   _hd238494238556_
                                   _tl238493238558_
                                   _e238498238561_
                                   _hd238497238564_
                                   _tl238496238566_
                                   _e238501238569_
                                   _hd238500238572_
                                   _tl238499238574_
                                   _e238504238577_
                                   _hd238503238580_
                                   _tl238502238582_)
                                  (___kont246894246895_))))
                          (___kont246894246895_))))
                   (___match247313247314_
                    (lambda (_e238459238619_
                             _hd238458238622_
                             _tl238457238624_
                             _e238462238627_
                             _hd238461238630_
                             _tl238460238632_
                             _e238465238635_
                             _hd238464238638_
                             _tl238463238640_
                             _e238468238643_
                             _hd238467238646_
                             _tl238466238648_
                             _e238471238651_
                             _hd238470238654_
                             _tl238469238656_
                             _e238474238659_
                             _hd238473238662_
                             _tl238472238664_
                             _e238477238667_
                             _hd238476238670_
                             _tl238475238672_)
                      (let ((_L238675_ _hd238476238670_)
                            (_L238676_ _hd238467238646_))
                        (if (and (let ((__tmp248248
                                        (let ((__tmp248249
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L238676_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248249))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248248
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238675_
                                    _self238274_)))
                            (___kont246890246891_ _L238675_ _L238676_)
                            (___kont246894246895_)))))
                   (___match247311247312_
                    (lambda (_e238459238619_
                             _hd238458238622_
                             _tl238457238624_
                             _e238462238627_
                             _hd238461238630_
                             _tl238460238632_
                             _e238465238635_
                             _hd238464238638_
                             _tl238463238640_
                             _e238468238643_
                             _hd238467238646_
                             _tl238466238648_
                             _e238471238651_
                             _hd238470238654_
                             _tl238469238656_
                             _e238474238659_
                             _hd238473238662_
                             _tl238472238664_
                             _e238477238667_
                             _hd238476238670_
                             _tl238475238672_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238469238656_))
                          (___match247313247314_
                           _e238459238619_
                           _hd238458238622_
                           _tl238457238624_
                           _e238462238627_
                           _hd238461238630_
                           _tl238460238632_
                           _e238465238635_
                           _hd238464238638_
                           _tl238463238640_
                           _e238468238643_
                           _hd238467238646_
                           _tl238466238648_
                           _e238471238651_
                           _hd238470238654_
                           _tl238469238656_
                           _e238474238659_
                           _hd238473238662_
                           _tl238472238664_
                           _e238477238667_
                           _hd238476238670_
                           _tl238475238672_)
                          (___match247367247368_
                           _e238459238619_
                           _hd238458238622_
                           _tl238457238624_
                           _e238462238627_
                           _hd238461238630_
                           _tl238460238632_
                           _e238465238635_
                           _hd238464238638_
                           _tl238463238640_
                           _e238468238643_
                           _hd238467238646_
                           _tl238466238648_
                           _e238471238651_
                           _hd238470238654_
                           _tl238469238656_
                           _e238474238659_
                           _hd238473238662_
                           _tl238472238664_
                           _e238477238667_
                           _hd238476238670_
                           _tl238475238672_))))
                   (___match247257247258_
                    (lambda (_e238424238703_
                             _hd238423238706_
                             _tl238422238708_
                             _e238427238711_
                             _hd238426238714_
                             _tl238425238716_
                             _e238430238719_
                             _hd238429238722_
                             _tl238428238724_
                             _e238433238727_
                             _hd238432238730_
                             _tl238431238732_
                             _e238436238735_
                             _hd238435238738_
                             _tl238434238740_
                             _e238439238743_
                             _hd238438238746_
                             _tl238437238748_
                             _e238442238751_
                             _hd238441238754_
                             _tl238440238756_
                             _e238445238759_
                             _hd238444238762_
                             _tl238443238764_
                             _e238448238767_
                             _hd238447238770_
                             _tl238446238772_
                             _e238451238775_
                             _hd238450238778_
                             _tl238449238780_
                             _e238454238783_
                             _hd238453238786_
                             _tl238452238788_)
                      (let ((_L238791_ _hd238453238786_)
                            (_L238792_ _hd238450238778_)
                            (_L238793_ _hd238441238754_)
                            (_L238794_ _hd238432238730_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238794_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238794_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238793_
                                    _self238274_)))
                            (___kont246888246889_
                             _L238791_
                             _L238792_
                             _L238793_
                             _L238794_)
                            (___kont246894246895_)))))
                   (___match247249247250_
                    (lambda (_e238424238703_
                             _hd238423238706_
                             _tl238422238708_
                             _e238427238711_
                             _hd238426238714_
                             _tl238425238716_
                             _e238430238719_
                             _hd238429238722_
                             _tl238428238724_
                             _e238433238727_
                             _hd238432238730_
                             _tl238431238732_
                             _e238436238735_
                             _hd238435238738_
                             _tl238434238740_
                             _e238439238743_
                             _hd238438238746_
                             _tl238437238748_
                             _e238442238751_
                             _hd238441238754_
                             _tl238440238756_
                             _e238445238759_
                             _hd238444238762_
                             _tl238443238764_
                             _e238448238767_
                             _hd238447238770_
                             _tl238446238772_
                             _e238451238775_
                             _hd238450238778_
                             _tl238449238780_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238443238764_))
                          (let ((_e238454238783_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238443238764_))))
                            (let ((_tl238452238788_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238454238783_)))
                                  (_hd238453238786_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238454238783_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238452238788_))
                                  (___match247257247258_
                                   _e238424238703_
                                   _hd238423238706_
                                   _tl238422238708_
                                   _e238427238711_
                                   _hd238426238714_
                                   _tl238425238716_
                                   _e238430238719_
                                   _hd238429238722_
                                   _tl238428238724_
                                   _e238433238727_
                                   _hd238432238730_
                                   _tl238431238732_
                                   _e238436238735_
                                   _hd238435238738_
                                   _tl238434238740_
                                   _e238439238743_
                                   _hd238438238746_
                                   _tl238437238748_
                                   _e238442238751_
                                   _hd238441238754_
                                   _tl238440238756_
                                   _e238445238759_
                                   _hd238444238762_
                                   _tl238443238764_
                                   _e238448238767_
                                   _hd238447238770_
                                   _tl238446238772_
                                   _e238451238775_
                                   _hd238450238778_
                                   _tl238449238780_
                                   _e238454238783_
                                   _hd238453238786_
                                   _tl238452238788_)
                                  (___kont246894246895_))))
                          (___match247373247374_
                           _e238424238703_
                           _hd238423238706_
                           _tl238422238708_
                           _e238427238711_
                           _hd238426238714_
                           _tl238425238716_
                           _e238430238719_
                           _hd238429238722_
                           _tl238428238724_
                           _e238433238727_
                           _hd238432238730_
                           _tl238431238732_
                           _e238436238735_
                           _hd238435238738_
                           _tl238434238740_
                           _e238439238743_
                           _hd238438238746_
                           _tl238437238748_
                           _e238442238751_
                           _hd238441238754_
                           _tl238440238756_
                           _e238445238759_
                           _hd238444238762_
                           _tl238443238764_))))
                   (___match247171247172_
                    (lambda (_e238390238834_
                             _hd238389238837_
                             _tl238388238839_
                             _e238393238842_
                             _hd238392238845_
                             _tl238391238847_
                             _e238396238850_
                             _hd238395238853_
                             _tl238394238855_
                             _e238399238858_
                             _hd238398238861_
                             _tl238397238863_
                             _e238402238866_
                             _hd238401238869_
                             _tl238400238871_
                             _e238405238874_
                             _hd238404238877_
                             _tl238403238879_
                             _e238408238882_
                             _hd238407238885_
                             _tl238406238887_
                             _e238411238890_
                             _hd238410238893_
                             _tl238409238895_
                             _e238414238898_
                             _hd238413238901_
                             _tl238412238903_
                             _e238417238906_
                             _hd238416238909_
                             _tl238415238911_)
                      (let ((_L238914_ _hd238416238909_)
                            (_L238915_ _hd238407238885_)
                            (_L238916_ _hd238398238861_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238916_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L238916_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L238915_
                                    _self238274_)))
                            (___kont246886246887_
                             _L238914_
                             _L238915_
                             _L238916_)
                            (___match247375247376_
                             _e238390238834_
                             _hd238389238837_
                             _tl238388238839_
                             _e238393238842_
                             _hd238392238845_
                             _tl238391238847_
                             _e238396238850_
                             _hd238395238853_
                             _tl238394238855_
                             _e238399238858_
                             _hd238398238861_
                             _tl238397238863_
                             _e238402238866_
                             _hd238401238869_
                             _tl238400238871_
                             _e238405238874_
                             _hd238404238877_
                             _tl238403238879_
                             _e238408238882_
                             _hd238407238885_
                             _tl238406238887_
                             _e238411238890_
                             _hd238410238893_
                             _tl238409238895_)))))
                   (___match247169247170_
                    (lambda (_e238390238834_
                             _hd238389238837_
                             _tl238388238839_
                             _e238393238842_
                             _hd238392238845_
                             _tl238391238847_
                             _e238396238850_
                             _hd238395238853_
                             _tl238394238855_
                             _e238399238858_
                             _hd238398238861_
                             _tl238397238863_
                             _e238402238866_
                             _hd238401238869_
                             _tl238400238871_
                             _e238405238874_
                             _hd238404238877_
                             _tl238403238879_
                             _e238408238882_
                             _hd238407238885_
                             _tl238406238887_
                             _e238411238890_
                             _hd238410238893_
                             _tl238409238895_
                             _e238414238898_
                             _hd238413238901_
                             _tl238412238903_
                             _e238417238906_
                             _hd238416238909_
                             _tl238415238911_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl238409238895_))
                          (___match247171247172_
                           _e238390238834_
                           _hd238389238837_
                           _tl238388238839_
                           _e238393238842_
                           _hd238392238845_
                           _tl238391238847_
                           _e238396238850_
                           _hd238395238853_
                           _tl238394238855_
                           _e238399238858_
                           _hd238398238861_
                           _tl238397238863_
                           _e238402238866_
                           _hd238401238869_
                           _tl238400238871_
                           _e238405238874_
                           _hd238404238877_
                           _tl238403238879_
                           _e238408238882_
                           _hd238407238885_
                           _tl238406238887_
                           _e238411238890_
                           _hd238410238893_
                           _tl238409238895_
                           _e238414238898_
                           _hd238413238901_
                           _tl238412238903_
                           _e238417238906_
                           _hd238416238909_
                           _tl238415238911_)
                          (___match247249247250_
                           _e238390238834_
                           _hd238389238837_
                           _tl238388238839_
                           _e238393238842_
                           _hd238392238845_
                           _tl238391238847_
                           _e238396238850_
                           _hd238395238853_
                           _tl238394238855_
                           _e238399238858_
                           _hd238398238861_
                           _tl238397238863_
                           _e238402238866_
                           _hd238401238869_
                           _tl238400238871_
                           _e238405238874_
                           _hd238404238877_
                           _tl238403238879_
                           _e238408238882_
                           _hd238407238885_
                           _tl238406238887_
                           _e238411238890_
                           _hd238410238893_
                           _tl238409238895_
                           _e238414238898_
                           _hd238413238901_
                           _tl238412238903_
                           _e238417238906_
                           _hd238416238909_
                           _tl238415238911_))))
                   (___match247159247160_
                    (lambda (_e238390238834_
                             _hd238389238837_
                             _tl238388238839_
                             _e238393238842_
                             _hd238392238845_
                             _tl238391238847_
                             _e238396238850_
                             _hd238395238853_
                             _tl238394238855_
                             _e238399238858_
                             _hd238398238861_
                             _tl238397238863_
                             _e238402238866_
                             _hd238401238869_
                             _tl238400238871_
                             _e238405238874_
                             _hd238404238877_
                             _tl238403238879_
                             _e238408238882_
                             _hd238407238885_
                             _tl238406238887_
                             _e238411238890_
                             _hd238410238893_
                             _tl238409238895_
                             _e238414238898_
                             _hd238413238901_
                             _tl238412238903_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd238413238901_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238412238903_))
                              (let ((_e238417238906_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238412238903_))))
                                (let ((_tl238415238911_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238417238906_)))
                                      (_hd238416238909_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238417238906_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238415238911_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl238409238895_))
                                          (___match247171247172_
                                           _e238390238834_
                                           _hd238389238837_
                                           _tl238388238839_
                                           _e238393238842_
                                           _hd238392238845_
                                           _tl238391238847_
                                           _e238396238850_
                                           _hd238395238853_
                                           _tl238394238855_
                                           _e238399238858_
                                           _hd238398238861_
                                           _tl238397238863_
                                           _e238402238866_
                                           _hd238401238869_
                                           _tl238400238871_
                                           _e238405238874_
                                           _hd238404238877_
                                           _tl238403238879_
                                           _e238408238882_
                                           _hd238407238885_
                                           _tl238406238887_
                                           _e238411238890_
                                           _hd238410238893_
                                           _tl238409238895_
                                           _e238414238898_
                                           _hd238413238901_
                                           _tl238412238903_
                                           _e238417238906_
                                           _hd238416238909_
                                           _tl238415238911_)
                                          (___match247249247250_
                                           _e238390238834_
                                           _hd238389238837_
                                           _tl238388238839_
                                           _e238393238842_
                                           _hd238392238845_
                                           _tl238391238847_
                                           _e238396238850_
                                           _hd238395238853_
                                           _tl238394238855_
                                           _e238399238858_
                                           _hd238398238861_
                                           _tl238397238863_
                                           _e238402238866_
                                           _hd238401238869_
                                           _tl238400238871_
                                           _e238405238874_
                                           _hd238404238877_
                                           _tl238403238879_
                                           _e238408238882_
                                           _hd238407238885_
                                           _tl238406238887_
                                           _e238411238890_
                                           _hd238410238893_
                                           _tl238409238895_
                                           _e238414238898_
                                           _hd238413238901_
                                           _tl238412238903_
                                           _e238417238906_
                                           _hd238416238909_
                                           _tl238415238911_))
                                      (___match247373247374_
                                       _e238390238834_
                                       _hd238389238837_
                                       _tl238388238839_
                                       _e238393238842_
                                       _hd238392238845_
                                       _tl238391238847_
                                       _e238396238850_
                                       _hd238395238853_
                                       _tl238394238855_
                                       _e238399238858_
                                       _hd238398238861_
                                       _tl238397238863_
                                       _e238402238866_
                                       _hd238401238869_
                                       _tl238400238871_
                                       _e238405238874_
                                       _hd238404238877_
                                       _tl238403238879_
                                       _e238408238882_
                                       _hd238407238885_
                                       _tl238406238887_
                                       _e238411238890_
                                       _hd238410238893_
                                       _tl238409238895_))))
                              (___match247373247374_
                               _e238390238834_
                               _hd238389238837_
                               _tl238388238839_
                               _e238393238842_
                               _hd238392238845_
                               _tl238391238847_
                               _e238396238850_
                               _hd238395238853_
                               _tl238394238855_
                               _e238399238858_
                               _hd238398238861_
                               _tl238397238863_
                               _e238402238866_
                               _hd238401238869_
                               _tl238400238871_
                               _e238405238874_
                               _hd238404238877_
                               _tl238403238879_
                               _e238408238882_
                               _hd238407238885_
                               _tl238406238887_
                               _e238411238890_
                               _hd238410238893_
                               _tl238409238895_))
                          (___match247373247374_
                           _e238390238834_
                           _hd238389238837_
                           _tl238388238839_
                           _e238393238842_
                           _hd238392238845_
                           _tl238391238847_
                           _e238396238850_
                           _hd238395238853_
                           _tl238394238855_
                           _e238399238858_
                           _hd238398238861_
                           _tl238397238863_
                           _e238402238866_
                           _hd238401238869_
                           _tl238400238871_
                           _e238405238874_
                           _hd238404238877_
                           _tl238403238879_
                           _e238408238882_
                           _hd238407238885_
                           _tl238406238887_
                           _e238411238890_
                           _hd238410238893_
                           _tl238409238895_))))
                   (___match247091247092_
                    (lambda (_e238339238953_
                             _hd238338238956_
                             _tl238337238958_
                             _e238342238961_
                             _hd238341238964_
                             _tl238340238966_
                             _e238345238969_
                             _hd238344238972_
                             _tl238343238974_
                             _e238348238977_
                             _hd238347238980_
                             _tl238346238982_
                             _e238351238985_
                             _hd238350238988_
                             _tl238349238990_
                             _e238354238993_
                             _hd238353238996_
                             _tl238352238998_
                             _e238357239001_
                             _hd238356239004_
                             _tl238355239006_
                             _e238360239009_
                             _hd238359239012_
                             _tl238358239014_
                             _e238363239017_
                             _hd238362239020_
                             _tl238361239022_
                             _e238366239025_
                             _hd238365239028_
                             _tl238364239030_
                             _e238369239033_
                             _hd238368239036_
                             _tl238367239038_
                             _e238372239041_
                             _hd238371239044_
                             _tl238370239046_
                             _e238375239049_
                             _hd238374239052_
                             _tl238373239054_
                             ___splice246884246885_
                             _target238376239057_
                             _tl238378239059_)
                      (letrec ((_loop238379239062_
                                (lambda (_hd238377239065_ _args238383239067_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238377239065_))
                                      (let ((_e238380239070_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238377239065_))))
                                        (let ((_lp-tl238382239075_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238380239070_)))
                                              (_lp-hd238381239073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238380239070_))))
                                          (let ((__tmp248250
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238381239073_
                                                         _args238383239067_))))
                                            (declare (not safe))
                                            (_loop238379239062_
                                             _lp-tl238382239075_
                                             __tmp248250))))
                                      (let ((_args238384239078_
                                             (reverse _args238383239067_)))
                                        (let ((_L239081_ _args238384239078_)
                                              (_L239082_ _hd238374239052_)
                                              (_L239083_ _hd238365239028_)
                                              (_L239084_ _hd238356239004_)
                                              (_L239085_ _hd238347238980_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L239085_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L239084_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L239083_
                                                      _self238274_)))
                                              (___kont246882246883_
                                               _L239081_
                                               _L239082_
                                               _L239083_
                                               _L239084_
                                               _L239085_)
                                              (___kont246894246895_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop238379239062_ _target238376239057_ '())))))
                   (___match247049247050_
                    (lambda (_e238339238953_
                             _hd238338238956_
                             _tl238337238958_
                             _e238342238961_
                             _hd238341238964_
                             _tl238340238966_
                             _e238345238969_
                             _hd238344238972_
                             _tl238343238974_
                             _e238348238977_
                             _hd238347238980_
                             _tl238346238982_
                             _e238351238985_
                             _hd238350238988_
                             _tl238349238990_
                             _e238354238993_
                             _hd238353238996_
                             _tl238352238998_
                             _e238357239001_
                             _hd238356239004_
                             _tl238355239006_
                             _e238360239009_
                             _hd238359239012_
                             _tl238358239014_
                             _e238363239017_
                             _hd238362239020_
                             _tl238361239022_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd238362239020_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl238361239022_))
                              (let ((_e238366239025_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl238361239022_))))
                                (let ((_tl238364239030_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238366239025_)))
                                      (_hd238365239028_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238366239025_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl238364239030_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238358239014_))
                                          (let ((_e238369239033_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238358239014_))))
                                            (let ((_tl238367239038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238369239033_)))
                                                  (_hd238368239036_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238369239033_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd238368239036_))
                                                  (let ((_e238372239041_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd238368239036_))))
                                                    (let ((_tl238370239046_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238372239041_)))
                                                          (_hd238371239044_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238372239041_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd238371239044_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd238371239044_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238370239046_))
                          (let ((_e238375239049_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238370239046_))))
                            (let ((_tl238373239054_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238375239049_)))
                                  (_hd238374239052_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238375239049_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl238373239054_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl238367239038_))
                                      (let ((___splice246884246885_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl238367239038_
                                                '0))))
                                        (let ((_tl238378239059_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246884246885_
                                                  '1)))
                                              (_target238376239057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice246884246885_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl238378239059_))
                                              (___match247091247092_
                                               _e238339238953_
                                               _hd238338238956_
                                               _tl238337238958_
                                               _e238342238961_
                                               _hd238341238964_
                                               _tl238340238966_
                                               _e238345238969_
                                               _hd238344238972_
                                               _tl238343238974_
                                               _e238348238977_
                                               _hd238347238980_
                                               _tl238346238982_
                                               _e238351238985_
                                               _hd238350238988_
                                               _tl238349238990_
                                               _e238354238993_
                                               _hd238353238996_
                                               _tl238352238998_
                                               _e238357239001_
                                               _hd238356239004_
                                               _tl238355239006_
                                               _e238360239009_
                                               _hd238359239012_
                                               _tl238358239014_
                                               _e238363239017_
                                               _hd238362239020_
                                               _tl238361239022_
                                               _e238366239025_
                                               _hd238365239028_
                                               _tl238364239030_
                                               _e238369239033_
                                               _hd238368239036_
                                               _tl238367239038_
                                               _e238372239041_
                                               _hd238371239044_
                                               _tl238370239046_
                                               _e238375239049_
                                               _hd238374239052_
                                               _tl238373239054_
                                               ___splice246884246885_
                                               _target238376239057_
                                               _tl238378239059_)
                                              (___kont246894246895_))))
                                      (___kont246894246895_))
                                  (___kont246894246895_))))
                          (___kont246894246895_))
                      (___kont246894246895_))
                  (___kont246894246895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont246894246895_))))
                                          (___match247373247374_
                                           _e238339238953_
                                           _hd238338238956_
                                           _tl238337238958_
                                           _e238342238961_
                                           _hd238341238964_
                                           _tl238340238966_
                                           _e238345238969_
                                           _hd238344238972_
                                           _tl238343238974_
                                           _e238348238977_
                                           _hd238347238980_
                                           _tl238346238982_
                                           _e238351238985_
                                           _hd238350238988_
                                           _tl238349238990_
                                           _e238354238993_
                                           _hd238353238996_
                                           _tl238352238998_
                                           _e238357239001_
                                           _hd238356239004_
                                           _tl238355239006_
                                           _e238360239009_
                                           _hd238359239012_
                                           _tl238358239014_))
                                      (___match247373247374_
                                       _e238339238953_
                                       _hd238338238956_
                                       _tl238337238958_
                                       _e238342238961_
                                       _hd238341238964_
                                       _tl238340238966_
                                       _e238345238969_
                                       _hd238344238972_
                                       _tl238343238974_
                                       _e238348238977_
                                       _hd238347238980_
                                       _tl238346238982_
                                       _e238351238985_
                                       _hd238350238988_
                                       _tl238349238990_
                                       _e238354238993_
                                       _hd238353238996_
                                       _tl238352238998_
                                       _e238357239001_
                                       _hd238356239004_
                                       _tl238355239006_
                                       _e238360239009_
                                       _hd238359239012_
                                       _tl238358239014_))))
                              (___match247373247374_
                               _e238339238953_
                               _hd238338238956_
                               _tl238337238958_
                               _e238342238961_
                               _hd238341238964_
                               _tl238340238966_
                               _e238345238969_
                               _hd238344238972_
                               _tl238343238974_
                               _e238348238977_
                               _hd238347238980_
                               _tl238346238982_
                               _e238351238985_
                               _hd238350238988_
                               _tl238349238990_
                               _e238354238993_
                               _hd238353238996_
                               _tl238352238998_
                               _e238357239001_
                               _hd238356239004_
                               _tl238355239006_
                               _e238360239009_
                               _hd238359239012_
                               _tl238358239014_))
                          (___match247159247160_
                           _e238339238953_
                           _hd238338238956_
                           _tl238337238958_
                           _e238342238961_
                           _hd238341238964_
                           _tl238340238966_
                           _e238345238969_
                           _hd238344238972_
                           _tl238343238974_
                           _e238348238977_
                           _hd238347238980_
                           _tl238346238982_
                           _e238351238985_
                           _hd238350238988_
                           _tl238349238990_
                           _e238354238993_
                           _hd238353238996_
                           _tl238352238998_
                           _e238357239001_
                           _hd238356239004_
                           _tl238355239006_
                           _e238360239009_
                           _hd238359239012_
                           _tl238358239014_
                           _e238363239017_
                           _hd238362239020_
                           _tl238361239022_))))
                   (___match246981246982_
                    (lambda (_e238295239142_
                             _hd238294239145_
                             _tl238293239147_
                             _e238298239150_
                             _hd238297239153_
                             _tl238296239155_
                             _e238301239158_
                             _hd238300239161_
                             _tl238299239163_
                             _e238304239166_
                             _hd238303239169_
                             _tl238302239171_
                             _e238307239174_
                             _hd238306239177_
                             _tl238305239179_
                             _e238310239182_
                             _hd238309239185_
                             _tl238308239187_
                             _e238313239190_
                             _hd238312239193_
                             _tl238311239195_
                             _e238316239198_
                             _hd238315239201_
                             _tl238314239203_
                             _e238319239206_
                             _hd238318239209_
                             _tl238317239211_
                             _e238322239214_
                             _hd238321239217_
                             _tl238320239219_
                             ___splice246880246881_
                             _target238323239222_
                             _tl238325239224_)
                      (letrec ((_loop238326239227_
                                (lambda (_hd238324239230_ _args238330239232_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd238324239230_))
                                      (let ((_e238327239235_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd238324239230_))))
                                        (let ((_lp-tl238329239240_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e238327239235_)))
                                              (_lp-hd238328239238_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e238327239235_))))
                                          (let ((__tmp248251
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd238328239238_
                                                         _args238330239232_))))
                                            (declare (not safe))
                                            (_loop238326239227_
                                             _lp-tl238329239240_
                                             __tmp248251))))
                                      (let ((_args238331239243_
                                             (reverse _args238330239232_)))
                                        (let ((_L239246_ _args238331239243_)
                                              (_L239247_ _hd238321239217_)
                                              (_L239248_ _hd238312239193_)
                                              (_L239249_ _hd238303239169_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L239249_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L239248_
                                                      _self238274_)))
                                              (___kont246878246879_
                                               _L239246_
                                               _L239247_
                                               _L239248_
                                               _L239249_)
                                              (___match247169247170_
                                               _e238295239142_
                                               _hd238294239145_
                                               _tl238293239147_
                                               _e238298239150_
                                               _hd238297239153_
                                               _tl238296239155_
                                               _e238301239158_
                                               _hd238300239161_
                                               _tl238299239163_
                                               _e238304239166_
                                               _hd238303239169_
                                               _tl238302239171_
                                               _e238307239174_
                                               _hd238306239177_
                                               _tl238305239179_
                                               _e238310239182_
                                               _hd238309239185_
                                               _tl238308239187_
                                               _e238313239190_
                                               _hd238312239193_
                                               _tl238311239195_
                                               _e238316239198_
                                               _hd238315239201_
                                               _tl238314239203_
                                               _e238319239206_
                                               _hd238318239209_
                                               _tl238317239211_
                                               _e238322239214_
                                               _hd238321239217_
                                               _tl238320239219_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop238326239227_ _target238323239222_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx246876246877_))
                  (let ((_e238295239142_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx246876246877_))))
                    (let ((_tl238293239147_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238295239142_)))
                          (_hd238294239145_
                           (let ()
                             (declare (not safe))
                             (##car _e238295239142_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl238293239147_))
                          (let ((_e238298239150_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl238293239147_))))
                            (let ((_tl238296239155_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238298239150_)))
                                  (_hd238297239153_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238298239150_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd238297239153_))
                                  (let ((_e238301239158_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd238297239153_))))
                                    (let ((_tl238299239163_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e238301239158_)))
                                          (_hd238300239161_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e238301239158_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd238300239161_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd238300239161_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl238299239163_))
                                                  (let ((_e238304239166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl238299239163_))))
                                                    (let ((_tl238302239171_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e238304239166_)))
                                                          (_hd238303239169_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e238304239166_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl238302239171_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl238296239155_))
                      (let ((_e238307239174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl238296239155_))))
                        (let ((_tl238305239179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e238307239174_)))
                              (_hd238306239177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e238307239174_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd238306239177_))
                              (let ((_e238310239182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd238306239177_))))
                                (let ((_tl238308239187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e238310239182_)))
                                      (_hd238309239185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e238310239182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd238309239185_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd238309239185_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl238308239187_))
                                              (let ((_e238313239190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl238308239187_))))
                                                (let ((_tl238311239195_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e238313239190_)))
                                                      (_hd238312239193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e238313239190_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl238311239195_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl238305239179_))
                                                          (let ((_e238316239198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl238305239179_))))
                    (let ((_tl238314239203_
                           (let ()
                             (declare (not safe))
                             (##cdr _e238316239198_)))
                          (_hd238315239201_
                           (let ()
                             (declare (not safe))
                             (##car _e238316239198_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd238315239201_))
                          (let ((_e238319239206_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd238315239201_))))
                            (let ((_tl238317239211_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e238319239206_)))
                                  (_hd238318239209_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e238319239206_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd238318239209_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd238318239209_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl238317239211_))
                                          (let ((_e238322239214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl238317239211_))))
                                            (let ((_tl238320239219_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e238322239214_)))
                                                  (_hd238321239217_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e238322239214_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl238320239219_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl238314239203_))
                                                      (let ((___splice246880246881_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl238314239203_ '0))))
                (let ((_tl238325239224_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246880246881_ '1)))
                      (_target238323239222_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice246880246881_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl238325239224_))
                      (___match246981246982_
                       _e238295239142_
                       _hd238294239145_
                       _tl238293239147_
                       _e238298239150_
                       _hd238297239153_
                       _tl238296239155_
                       _e238301239158_
                       _hd238300239161_
                       _tl238299239163_
                       _e238304239166_
                       _hd238303239169_
                       _tl238302239171_
                       _e238307239174_
                       _hd238306239177_
                       _tl238305239179_
                       _e238310239182_
                       _hd238309239185_
                       _tl238308239187_
                       _e238313239190_
                       _hd238312239193_
                       _tl238311239195_
                       _e238316239198_
                       _hd238315239201_
                       _tl238314239203_
                       _e238319239206_
                       _hd238318239209_
                       _tl238317239211_
                       _e238322239214_
                       _hd238321239217_
                       _tl238320239219_
                       ___splice246880246881_
                       _target238323239222_
                       _tl238325239224_)
                      (___match247169247170_
                       _e238295239142_
                       _hd238294239145_
                       _tl238293239147_
                       _e238298239150_
                       _hd238297239153_
                       _tl238296239155_
                       _e238301239158_
                       _hd238300239161_
                       _tl238299239163_
                       _e238304239166_
                       _hd238303239169_
                       _tl238302239171_
                       _e238307239174_
                       _hd238306239177_
                       _tl238305239179_
                       _e238310239182_
                       _hd238309239185_
                       _tl238308239187_
                       _e238313239190_
                       _hd238312239193_
                       _tl238311239195_
                       _e238316239198_
                       _hd238315239201_
                       _tl238314239203_
                       _e238319239206_
                       _hd238318239209_
                       _tl238317239211_
                       _e238322239214_
                       _hd238321239217_
                       _tl238320239219_))))
              (___match247169247170_
               _e238295239142_
               _hd238294239145_
               _tl238293239147_
               _e238298239150_
               _hd238297239153_
               _tl238296239155_
               _e238301239158_
               _hd238300239161_
               _tl238299239163_
               _e238304239166_
               _hd238303239169_
               _tl238302239171_
               _e238307239174_
               _hd238306239177_
               _tl238305239179_
               _e238310239182_
               _hd238309239185_
               _tl238308239187_
               _e238313239190_
               _hd238312239193_
               _tl238311239195_
               _e238316239198_
               _hd238315239201_
               _tl238314239203_
               _e238319239206_
               _hd238318239209_
               _tl238317239211_
               _e238322239214_
               _hd238321239217_
               _tl238320239219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match247373247374_
                                                   _e238295239142_
                                                   _hd238294239145_
                                                   _tl238293239147_
                                                   _e238298239150_
                                                   _hd238297239153_
                                                   _tl238296239155_
                                                   _e238301239158_
                                                   _hd238300239161_
                                                   _tl238299239163_
                                                   _e238304239166_
                                                   _hd238303239169_
                                                   _tl238302239171_
                                                   _e238307239174_
                                                   _hd238306239177_
                                                   _tl238305239179_
                                                   _e238310239182_
                                                   _hd238309239185_
                                                   _tl238308239187_
                                                   _e238313239190_
                                                   _hd238312239193_
                                                   _tl238311239195_
                                                   _e238316239198_
                                                   _hd238315239201_
                                                   _tl238314239203_))))
                                          (___match247373247374_
                                           _e238295239142_
                                           _hd238294239145_
                                           _tl238293239147_
                                           _e238298239150_
                                           _hd238297239153_
                                           _tl238296239155_
                                           _e238301239158_
                                           _hd238300239161_
                                           _tl238299239163_
                                           _e238304239166_
                                           _hd238303239169_
                                           _tl238302239171_
                                           _e238307239174_
                                           _hd238306239177_
                                           _tl238305239179_
                                           _e238310239182_
                                           _hd238309239185_
                                           _tl238308239187_
                                           _e238313239190_
                                           _hd238312239193_
                                           _tl238311239195_
                                           _e238316239198_
                                           _hd238315239201_
                                           _tl238314239203_))
                                      (___match247049247050_
                                       _e238295239142_
                                       _hd238294239145_
                                       _tl238293239147_
                                       _e238298239150_
                                       _hd238297239153_
                                       _tl238296239155_
                                       _e238301239158_
                                       _hd238300239161_
                                       _tl238299239163_
                                       _e238304239166_
                                       _hd238303239169_
                                       _tl238302239171_
                                       _e238307239174_
                                       _hd238306239177_
                                       _tl238305239179_
                                       _e238310239182_
                                       _hd238309239185_
                                       _tl238308239187_
                                       _e238313239190_
                                       _hd238312239193_
                                       _tl238311239195_
                                       _e238316239198_
                                       _hd238315239201_
                                       _tl238314239203_
                                       _e238319239206_
                                       _hd238318239209_
                                       _tl238317239211_))
                                  (___match247373247374_
                                   _e238295239142_
                                   _hd238294239145_
                                   _tl238293239147_
                                   _e238298239150_
                                   _hd238297239153_
                                   _tl238296239155_
                                   _e238301239158_
                                   _hd238300239161_
                                   _tl238299239163_
                                   _e238304239166_
                                   _hd238303239169_
                                   _tl238302239171_
                                   _e238307239174_
                                   _hd238306239177_
                                   _tl238305239179_
                                   _e238310239182_
                                   _hd238309239185_
                                   _tl238308239187_
                                   _e238313239190_
                                   _hd238312239193_
                                   _tl238311239195_
                                   _e238316239198_
                                   _hd238315239201_
                                   _tl238314239203_))))
                          (___match247373247374_
                           _e238295239142_
                           _hd238294239145_
                           _tl238293239147_
                           _e238298239150_
                           _hd238297239153_
                           _tl238296239155_
                           _e238301239158_
                           _hd238300239161_
                           _tl238299239163_
                           _e238304239166_
                           _hd238303239169_
                           _tl238302239171_
                           _e238307239174_
                           _hd238306239177_
                           _tl238305239179_
                           _e238310239182_
                           _hd238309239185_
                           _tl238308239187_
                           _e238313239190_
                           _hd238312239193_
                           _tl238311239195_
                           _e238316239198_
                           _hd238315239201_
                           _tl238314239203_))))
                  (___match247311247312_
                   _e238295239142_
                   _hd238294239145_
                   _tl238293239147_
                   _e238298239150_
                   _hd238297239153_
                   _tl238296239155_
                   _e238301239158_
                   _hd238300239161_
                   _tl238299239163_
                   _e238304239166_
                   _hd238303239169_
                   _tl238302239171_
                   _e238307239174_
                   _hd238306239177_
                   _tl238305239179_
                   _e238310239182_
                   _hd238309239185_
                   _tl238308239187_
                   _e238313239190_
                   _hd238312239193_
                   _tl238311239195_))
              (___kont246894246895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont246894246895_))
                                          (___kont246894246895_))
                                      (___kont246894246895_))))
                              (___kont246894246895_))))
                      (___kont246894246895_))
                  (___kont246894246895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont246894246895_))
                                              (___kont246894246895_))
                                          (___kont246894246895_))))
                                  (___kont246894246895_))))
                          (___kont246894246895_))))
                  (___kont246894246895_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx237219_
               _self237220_
               _$t237221_
               _methods237222_
               _slots237223_
               _class-check237224_
               _struct-check237225_
               _struct-assert237226_)
        (letrec ((_force-e237228_
                  (lambda (_what238271_)
                    (let ((__tmp248252
                           (let ((__tmp248256
                                  (let ((__tmp248257
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp248257)))
                                 (__tmp248253
                                  (let ((__tmp248254
                                         (let ((__tmp248255
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what238271_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp248255))))
                                    (declare (not safe))
                                    (cons __tmp248254 '()))))
                             (declare (not safe))
                             (cons __tmp248256 __tmp248253))))
                      (declare (not safe))
                      (cons '%#call __tmp248252)))))
          (let* ((___stx247378247379_ _stx237219_)
                 (_g237236237458_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx247378247379_)))))
            (let ((___kont247380247381_
                   (lambda (_L238217_ _L238218_ _L238219_ _L238220_)
                     (let ((_$method238265_
                            (hash-ref
                             _methods237222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L238218_))))
                           (_args238266_
                            (map (lambda (_g238253238255_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g238253238255_
                                      _self237220_
                                      _$t237221_
                                      _methods237222_
                                      _slots237223_
                                      _class-check237224_
                                      _struct-check237225_
                                      _struct-assert237226_)))
                                 (let ((__tmp248258
                                        (lambda (_g238257238260_
                                                 _g238258238262_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g238257238260_
                                                  _g238258238262_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248258 '() _L238217_)))))
                       (let ((__tmp248259
                              (let ((__tmp248260
                                     (let ((__tmp248264
                                            (let ()
                                              (declare (not safe))
                                              (_force-e237228_
                                               _$method238265_)))
                                           (__tmp248261
                                            (let ((__tmp248262
                                                   (let ((__tmp248263
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self237220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248263))))
                                              (declare (not safe))
                                              (cons __tmp248262
                                                    _args238266_))))
                                       (declare (not safe))
                                       (cons __tmp248264 __tmp248261))))
                                (declare (not safe))
                                (cons '%#call __tmp248260))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248259 _stx237219_)))))
                  (___kont247384247385_
                   (lambda (_L238049_ _L238050_ _L238051_ _L238052_ _L238053_)
                     (let ((_$method238105_
                            (hash-ref
                             _methods237222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L238050_))))
                           (_args238106_
                            (map (lambda (_g238093238095_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g238093238095_
                                      _self237220_
                                      _$t237221_
                                      _methods237222_
                                      _slots237223_
                                      _class-check237224_
                                      _struct-check237225_
                                      _struct-assert237226_)))
                                 (let ((__tmp248265
                                        (lambda (_g238097238100_
                                                 _g238098238102_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g238097238100_
                                                  _g238098238102_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp248265 '() _L238049_)))))
                       (let ((__tmp248266
                              (let ((__tmp248267
                                     (let ((__tmp248273
                                            (let ((__tmp248274
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248274)))
                                           (__tmp248268
                                            (let ((__tmp248272
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e237228_
                                                      _$method238105_)))
                                                  (__tmp248269
                                                   (let ((__tmp248270
                                                          (let ((__tmp248271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237220_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248271))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248270
                                                           _args238106_))))
                                              (declare (not safe))
                                              (cons __tmp248272 __tmp248269))))
                                       (declare (not safe))
                                       (cons __tmp248273 __tmp248268))))
                                (declare (not safe))
                                (cons '%#call __tmp248267))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248266 _stx237219_)))))
                  (___kont247388247389_
                   (lambda (_L237880_ _L237881_ _L237882_)
                     (let* ((_$field237914_
                             (hash-ref
                              _slots237223_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _L237880_))))
                            (__tmp248275
                             (let ((__tmp248276
                                    (let ((__tmp248283
                                           (let ((__tmp248284
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t237221_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp248284)))
                                          (__tmp248277
                                           (let ((__tmp248281
                                                  (let ((__tmp248282
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field237914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp248282)))
                                                 (__tmp248278
                                                  (let ((__tmp248279
                                                         (let ((__tmp248280
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self237220_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp248280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp248279 '()))))
                                             (declare (not safe))
                                             (cons __tmp248281 __tmp248278))))
                                      (declare (not safe))
                                      (cons __tmp248283 __tmp248277))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp248276))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp248275 _stx237219_))))
                  (___kont247390247391_
                   (lambda (_L237754_ _L237755_ _L237756_ _L237757_)
                     (let ((_$field237792_
                            (hash-ref
                             _slots237223_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L237755_))))
                           (_expr237793_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L237754_
                               _self237220_
                               _$t237221_
                               _methods237222_
                               _slots237223_
                               _class-check237224_
                               _struct-check237225_
                               _struct-assert237226_))))
                       (let ((__tmp248285
                              (let ((__tmp248286
                                     (let ((__tmp248294
                                            (let ((__tmp248295
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237221_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248295)))
                                           (__tmp248287
                                            (let ((__tmp248292
                                                   (let ((__tmp248293
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248293)))
                                                  (__tmp248288
                                                   (let ((__tmp248290
                                                          (let ((__tmp248291
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237220_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248291)))
                 (__tmp248289
                  (let () (declare (not safe)) (cons _expr237793_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248290
                                                           __tmp248289))))
                                              (declare (not safe))
                                              (cons __tmp248292 __tmp248288))))
                                       (declare (not safe))
                                       (cons __tmp248294 __tmp248287))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp248286))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248285 _stx237219_)))))
                  (___kont247392247393_
                   (lambda (_L237633_ _L237634_)
                     (let* ((_slot237656_
                             (##structure-ref
                              (let ((__tmp248296
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L237634_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp248296))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field237658_
                             (hash-ref _slots237223_ _slot237656_)))
                       (let ((__tmp248297
                              (let ((__tmp248298
                                     (let ((__tmp248305
                                            (let ((__tmp248306
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237221_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248306)))
                                           (__tmp248299
                                            (let ((__tmp248303
                                                   (let ((__tmp248304
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248304)))
                                                  (__tmp248300
                                                   (let ((__tmp248301
                                                          (let ((__tmp248302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237220_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248301 '()))))
                                              (declare (not safe))
                                              (cons __tmp248303 __tmp248300))))
                                       (declare (not safe))
                                       (cons __tmp248305 __tmp248299))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp248298))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248297 _stx237219_)))))
                  (___kont247394247395_
                   (lambda (_L237534_ _L237535_ _L237536_)
                     (let* ((_slot237565_
                             (##structure-ref
                              (let ((__tmp248307
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L237536_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp248307))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field237567_
                             (hash-ref _slots237223_ _slot237565_))
                            (_expr237569_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L237534_
                                _self237220_
                                _$t237221_
                                _methods237222_
                                _slots237223_
                                _class-check237224_
                                _struct-check237225_
                                _struct-assert237226_))))
                       (let ((__tmp248308
                              (let ((__tmp248309
                                     (let ((__tmp248317
                                            (let ((__tmp248318
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t237221_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp248318)))
                                           (__tmp248310
                                            (let ((__tmp248315
                                                   (let ((__tmp248316
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field237567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp248316)))
                                                  (__tmp248311
                                                   (let ((__tmp248313
                                                          (let ((__tmp248314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self237220_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp248314)))
                 (__tmp248312
                  (let () (declare (not safe)) (cons _expr237569_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp248313
                                                           __tmp248312))))
                                              (declare (not safe))
                                              (cons __tmp248315 __tmp248311))))
                                       (declare (not safe))
                                       (cons __tmp248317 __tmp248310))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp248309))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248308 _stx237219_)))))
                  (___kont247396247397_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx237219_
                        _self237220_
                        _$t237221_
                        _methods237222_
                        _slots237223_
                        _class-check237224_
                        _struct-check237225_
                        _struct-assert237226_)))))
              (let* ((___match247877247878_
                      (lambda (_e237432237470_
                               _hd237431237473_
                               _tl237430237475_
                               _e237435237478_
                               _hd237434237481_
                               _tl237433237483_
                               _e237438237486_
                               _hd237437237489_
                               _tl237436237491_
                               _e237441237494_
                               _hd237440237497_
                               _tl237439237499_
                               _e237444237502_
                               _hd237443237505_
                               _tl237442237507_
                               _e237447237510_
                               _hd237446237513_
                               _tl237445237515_
                               _e237450237518_
                               _hd237449237521_
                               _tl237448237523_
                               _e237453237526_
                               _hd237452237529_
                               _tl237451237531_)
                        (let ((_L237534_ _hd237452237529_)
                              (_L237535_ _hd237449237521_)
                              (_L237536_ _hd237440237497_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237535_
                                      _self237220_))
                                   (let ((__tmp248319
                                          (let ((__tmp248320
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L237536_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248320))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248319
                                      'gxc#!mutator::t)))
                              (___kont247394247395_
                               _L237534_
                               _L237535_
                               _L237536_)
                              (___kont247396247397_)))))
                     (___match247875247876_
                      (lambda (_e237432237470_
                               _hd237431237473_
                               _tl237430237475_
                               _e237435237478_
                               _hd237434237481_
                               _tl237433237483_
                               _e237438237486_
                               _hd237437237489_
                               _tl237436237491_
                               _e237441237494_
                               _hd237440237497_
                               _tl237439237499_
                               _e237444237502_
                               _hd237443237505_
                               _tl237442237507_
                               _e237447237510_
                               _hd237446237513_
                               _tl237445237515_
                               _e237450237518_
                               _hd237449237521_
                               _tl237448237523_
                               _e237453237526_
                               _hd237452237529_
                               _tl237451237531_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237451237531_))
                            (___match247877247878_
                             _e237432237470_
                             _hd237431237473_
                             _tl237430237475_
                             _e237435237478_
                             _hd237434237481_
                             _tl237433237483_
                             _e237438237486_
                             _hd237437237489_
                             _tl237436237491_
                             _e237441237494_
                             _hd237440237497_
                             _tl237439237499_
                             _e237444237502_
                             _hd237443237505_
                             _tl237442237507_
                             _e237447237510_
                             _hd237446237513_
                             _tl237445237515_
                             _e237450237518_
                             _hd237449237521_
                             _tl237448237523_
                             _e237453237526_
                             _hd237452237529_
                             _tl237451237531_)
                            (___kont247396247397_))))
                     (___match247869247870_
                      (lambda (_e237432237470_
                               _hd237431237473_
                               _tl237430237475_
                               _e237435237478_
                               _hd237434237481_
                               _tl237433237483_
                               _e237438237486_
                               _hd237437237489_
                               _tl237436237491_
                               _e237441237494_
                               _hd237440237497_
                               _tl237439237499_
                               _e237444237502_
                               _hd237443237505_
                               _tl237442237507_
                               _e237447237510_
                               _hd237446237513_
                               _tl237445237515_
                               _e237450237518_
                               _hd237449237521_
                               _tl237448237523_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237442237507_))
                            (let ((_e237453237526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237442237507_))))
                              (let ((_tl237451237531_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237453237526_)))
                                    (_hd237452237529_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237453237526_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237451237531_))
                                    (___match247877247878_
                                     _e237432237470_
                                     _hd237431237473_
                                     _tl237430237475_
                                     _e237435237478_
                                     _hd237434237481_
                                     _tl237433237483_
                                     _e237438237486_
                                     _hd237437237489_
                                     _tl237436237491_
                                     _e237441237494_
                                     _hd237440237497_
                                     _tl237439237499_
                                     _e237444237502_
                                     _hd237443237505_
                                     _tl237442237507_
                                     _e237447237510_
                                     _hd237446237513_
                                     _tl237445237515_
                                     _e237450237518_
                                     _hd237449237521_
                                     _tl237448237523_
                                     _e237453237526_
                                     _hd237452237529_
                                     _tl237451237531_)
                                    (___kont247396247397_))))
                            (___kont247396247397_))))
                     (___match247815247816_
                      (lambda (_e237408237577_
                               _hd237407237580_
                               _tl237406237582_
                               _e237411237585_
                               _hd237410237588_
                               _tl237409237590_
                               _e237414237593_
                               _hd237413237596_
                               _tl237412237598_
                               _e237417237601_
                               _hd237416237604_
                               _tl237415237606_
                               _e237420237609_
                               _hd237419237612_
                               _tl237418237614_
                               _e237423237617_
                               _hd237422237620_
                               _tl237421237622_
                               _e237426237625_
                               _hd237425237628_
                               _tl237424237630_)
                        (let ((_L237633_ _hd237425237628_)
                              (_L237634_ _hd237416237604_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237633_
                                      _self237220_))
                                   (let ((__tmp248321
                                          (let ((__tmp248322
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L237634_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248322))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248321
                                      'gxc#!accessor::t)))
                              (___kont247392247393_ _L237633_ _L237634_)
                              (___kont247396247397_)))))
                     (___match247813247814_
                      (lambda (_e237408237577_
                               _hd237407237580_
                               _tl237406237582_
                               _e237411237585_
                               _hd237410237588_
                               _tl237409237590_
                               _e237414237593_
                               _hd237413237596_
                               _tl237412237598_
                               _e237417237601_
                               _hd237416237604_
                               _tl237415237606_
                               _e237420237609_
                               _hd237419237612_
                               _tl237418237614_
                               _e237423237617_
                               _hd237422237620_
                               _tl237421237622_
                               _e237426237625_
                               _hd237425237628_
                               _tl237424237630_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237418237614_))
                            (___match247815247816_
                             _e237408237577_
                             _hd237407237580_
                             _tl237406237582_
                             _e237411237585_
                             _hd237410237588_
                             _tl237409237590_
                             _e237414237593_
                             _hd237413237596_
                             _tl237412237598_
                             _e237417237601_
                             _hd237416237604_
                             _tl237415237606_
                             _e237420237609_
                             _hd237419237612_
                             _tl237418237614_
                             _e237423237617_
                             _hd237422237620_
                             _tl237421237622_
                             _e237426237625_
                             _hd237425237628_
                             _tl237424237630_)
                            (___match247869247870_
                             _e237408237577_
                             _hd237407237580_
                             _tl237406237582_
                             _e237411237585_
                             _hd237410237588_
                             _tl237409237590_
                             _e237414237593_
                             _hd237413237596_
                             _tl237412237598_
                             _e237417237601_
                             _hd237416237604_
                             _tl237415237606_
                             _e237420237609_
                             _hd237419237612_
                             _tl237418237614_
                             _e237423237617_
                             _hd237422237620_
                             _tl237421237622_
                             _e237426237625_
                             _hd237425237628_
                             _tl237424237630_))))
                     (___match247759247760_
                      (lambda (_e237373237666_
                               _hd237372237669_
                               _tl237371237671_
                               _e237376237674_
                               _hd237375237677_
                               _tl237374237679_
                               _e237379237682_
                               _hd237378237685_
                               _tl237377237687_
                               _e237382237690_
                               _hd237381237693_
                               _tl237380237695_
                               _e237385237698_
                               _hd237384237701_
                               _tl237383237703_
                               _e237388237706_
                               _hd237387237709_
                               _tl237386237711_
                               _e237391237714_
                               _hd237390237717_
                               _tl237389237719_
                               _e237394237722_
                               _hd237393237725_
                               _tl237392237727_
                               _e237397237730_
                               _hd237396237733_
                               _tl237395237735_
                               _e237400237738_
                               _hd237399237741_
                               _tl237398237743_
                               _e237403237746_
                               _hd237402237749_
                               _tl237401237751_)
                        (let ((_L237754_ _hd237402237749_)
                              (_L237755_ _hd237399237741_)
                              (_L237756_ _hd237390237717_)
                              (_L237757_ _hd237381237693_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237757_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237757_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237756_
                                      _self237220_)))
                              (___kont247390247391_
                               _L237754_
                               _L237755_
                               _L237756_
                               _L237757_)
                              (___kont247396247397_)))))
                     (___match247751247752_
                      (lambda (_e237373237666_
                               _hd237372237669_
                               _tl237371237671_
                               _e237376237674_
                               _hd237375237677_
                               _tl237374237679_
                               _e237379237682_
                               _hd237378237685_
                               _tl237377237687_
                               _e237382237690_
                               _hd237381237693_
                               _tl237380237695_
                               _e237385237698_
                               _hd237384237701_
                               _tl237383237703_
                               _e237388237706_
                               _hd237387237709_
                               _tl237386237711_
                               _e237391237714_
                               _hd237390237717_
                               _tl237389237719_
                               _e237394237722_
                               _hd237393237725_
                               _tl237392237727_
                               _e237397237730_
                               _hd237396237733_
                               _tl237395237735_
                               _e237400237738_
                               _hd237399237741_
                               _tl237398237743_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237392237727_))
                            (let ((_e237403237746_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237392237727_))))
                              (let ((_tl237401237751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237403237746_)))
                                    (_hd237402237749_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237403237746_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237401237751_))
                                    (___match247759247760_
                                     _e237373237666_
                                     _hd237372237669_
                                     _tl237371237671_
                                     _e237376237674_
                                     _hd237375237677_
                                     _tl237374237679_
                                     _e237379237682_
                                     _hd237378237685_
                                     _tl237377237687_
                                     _e237382237690_
                                     _hd237381237693_
                                     _tl237380237695_
                                     _e237385237698_
                                     _hd237384237701_
                                     _tl237383237703_
                                     _e237388237706_
                                     _hd237387237709_
                                     _tl237386237711_
                                     _e237391237714_
                                     _hd237390237717_
                                     _tl237389237719_
                                     _e237394237722_
                                     _hd237393237725_
                                     _tl237392237727_
                                     _e237397237730_
                                     _hd237396237733_
                                     _tl237395237735_
                                     _e237400237738_
                                     _hd237399237741_
                                     _tl237398237743_
                                     _e237403237746_
                                     _hd237402237749_
                                     _tl237401237751_)
                                    (___kont247396247397_))))
                            (___match247875247876_
                             _e237373237666_
                             _hd237372237669_
                             _tl237371237671_
                             _e237376237674_
                             _hd237375237677_
                             _tl237374237679_
                             _e237379237682_
                             _hd237378237685_
                             _tl237377237687_
                             _e237382237690_
                             _hd237381237693_
                             _tl237380237695_
                             _e237385237698_
                             _hd237384237701_
                             _tl237383237703_
                             _e237388237706_
                             _hd237387237709_
                             _tl237386237711_
                             _e237391237714_
                             _hd237390237717_
                             _tl237389237719_
                             _e237394237722_
                             _hd237393237725_
                             _tl237392237727_))))
                     (___match247673247674_
                      (lambda (_e237339237800_
                               _hd237338237803_
                               _tl237337237805_
                               _e237342237808_
                               _hd237341237811_
                               _tl237340237813_
                               _e237345237816_
                               _hd237344237819_
                               _tl237343237821_
                               _e237348237824_
                               _hd237347237827_
                               _tl237346237829_
                               _e237351237832_
                               _hd237350237835_
                               _tl237349237837_
                               _e237354237840_
                               _hd237353237843_
                               _tl237352237845_
                               _e237357237848_
                               _hd237356237851_
                               _tl237355237853_
                               _e237360237856_
                               _hd237359237859_
                               _tl237358237861_
                               _e237363237864_
                               _hd237362237867_
                               _tl237361237869_
                               _e237366237872_
                               _hd237365237875_
                               _tl237364237877_)
                        (let ((_L237880_ _hd237365237875_)
                              (_L237881_ _hd237356237851_)
                              (_L237882_ _hd237347237827_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237882_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L237882_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L237881_
                                      _self237220_)))
                              (___kont247388247389_
                               _L237880_
                               _L237881_
                               _L237882_)
                              (___match247877247878_
                               _e237339237800_
                               _hd237338237803_
                               _tl237337237805_
                               _e237342237808_
                               _hd237341237811_
                               _tl237340237813_
                               _e237345237816_
                               _hd237344237819_
                               _tl237343237821_
                               _e237348237824_
                               _hd237347237827_
                               _tl237346237829_
                               _e237351237832_
                               _hd237350237835_
                               _tl237349237837_
                               _e237354237840_
                               _hd237353237843_
                               _tl237352237845_
                               _e237357237848_
                               _hd237356237851_
                               _tl237355237853_
                               _e237360237856_
                               _hd237359237859_
                               _tl237358237861_)))))
                     (___match247671247672_
                      (lambda (_e237339237800_
                               _hd237338237803_
                               _tl237337237805_
                               _e237342237808_
                               _hd237341237811_
                               _tl237340237813_
                               _e237345237816_
                               _hd237344237819_
                               _tl237343237821_
                               _e237348237824_
                               _hd237347237827_
                               _tl237346237829_
                               _e237351237832_
                               _hd237350237835_
                               _tl237349237837_
                               _e237354237840_
                               _hd237353237843_
                               _tl237352237845_
                               _e237357237848_
                               _hd237356237851_
                               _tl237355237853_
                               _e237360237856_
                               _hd237359237859_
                               _tl237358237861_
                               _e237363237864_
                               _hd237362237867_
                               _tl237361237869_
                               _e237366237872_
                               _hd237365237875_
                               _tl237364237877_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl237358237861_))
                            (___match247673247674_
                             _e237339237800_
                             _hd237338237803_
                             _tl237337237805_
                             _e237342237808_
                             _hd237341237811_
                             _tl237340237813_
                             _e237345237816_
                             _hd237344237819_
                             _tl237343237821_
                             _e237348237824_
                             _hd237347237827_
                             _tl237346237829_
                             _e237351237832_
                             _hd237350237835_
                             _tl237349237837_
                             _e237354237840_
                             _hd237353237843_
                             _tl237352237845_
                             _e237357237848_
                             _hd237356237851_
                             _tl237355237853_
                             _e237360237856_
                             _hd237359237859_
                             _tl237358237861_
                             _e237363237864_
                             _hd237362237867_
                             _tl237361237869_
                             _e237366237872_
                             _hd237365237875_
                             _tl237364237877_)
                            (___match247751247752_
                             _e237339237800_
                             _hd237338237803_
                             _tl237337237805_
                             _e237342237808_
                             _hd237341237811_
                             _tl237340237813_
                             _e237345237816_
                             _hd237344237819_
                             _tl237343237821_
                             _e237348237824_
                             _hd237347237827_
                             _tl237346237829_
                             _e237351237832_
                             _hd237350237835_
                             _tl237349237837_
                             _e237354237840_
                             _hd237353237843_
                             _tl237352237845_
                             _e237357237848_
                             _hd237356237851_
                             _tl237355237853_
                             _e237360237856_
                             _hd237359237859_
                             _tl237358237861_
                             _e237363237864_
                             _hd237362237867_
                             _tl237361237869_
                             _e237366237872_
                             _hd237365237875_
                             _tl237364237877_))))
                     (___match247661247662_
                      (lambda (_e237339237800_
                               _hd237338237803_
                               _tl237337237805_
                               _e237342237808_
                               _hd237341237811_
                               _tl237340237813_
                               _e237345237816_
                               _hd237344237819_
                               _tl237343237821_
                               _e237348237824_
                               _hd237347237827_
                               _tl237346237829_
                               _e237351237832_
                               _hd237350237835_
                               _tl237349237837_
                               _e237354237840_
                               _hd237353237843_
                               _tl237352237845_
                               _e237357237848_
                               _hd237356237851_
                               _tl237355237853_
                               _e237360237856_
                               _hd237359237859_
                               _tl237358237861_
                               _e237363237864_
                               _hd237362237867_
                               _tl237361237869_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd237362237867_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237361237869_))
                                (let ((_e237366237872_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237361237869_))))
                                  (let ((_tl237364237877_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237366237872_)))
                                        (_hd237365237875_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237366237872_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237364237877_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl237358237861_))
                                            (___match247673247674_
                                             _e237339237800_
                                             _hd237338237803_
                                             _tl237337237805_
                                             _e237342237808_
                                             _hd237341237811_
                                             _tl237340237813_
                                             _e237345237816_
                                             _hd237344237819_
                                             _tl237343237821_
                                             _e237348237824_
                                             _hd237347237827_
                                             _tl237346237829_
                                             _e237351237832_
                                             _hd237350237835_
                                             _tl237349237837_
                                             _e237354237840_
                                             _hd237353237843_
                                             _tl237352237845_
                                             _e237357237848_
                                             _hd237356237851_
                                             _tl237355237853_
                                             _e237360237856_
                                             _hd237359237859_
                                             _tl237358237861_
                                             _e237363237864_
                                             _hd237362237867_
                                             _tl237361237869_
                                             _e237366237872_
                                             _hd237365237875_
                                             _tl237364237877_)
                                            (___match247751247752_
                                             _e237339237800_
                                             _hd237338237803_
                                             _tl237337237805_
                                             _e237342237808_
                                             _hd237341237811_
                                             _tl237340237813_
                                             _e237345237816_
                                             _hd237344237819_
                                             _tl237343237821_
                                             _e237348237824_
                                             _hd237347237827_
                                             _tl237346237829_
                                             _e237351237832_
                                             _hd237350237835_
                                             _tl237349237837_
                                             _e237354237840_
                                             _hd237353237843_
                                             _tl237352237845_
                                             _e237357237848_
                                             _hd237356237851_
                                             _tl237355237853_
                                             _e237360237856_
                                             _hd237359237859_
                                             _tl237358237861_
                                             _e237363237864_
                                             _hd237362237867_
                                             _tl237361237869_
                                             _e237366237872_
                                             _hd237365237875_
                                             _tl237364237877_))
                                        (___match247875247876_
                                         _e237339237800_
                                         _hd237338237803_
                                         _tl237337237805_
                                         _e237342237808_
                                         _hd237341237811_
                                         _tl237340237813_
                                         _e237345237816_
                                         _hd237344237819_
                                         _tl237343237821_
                                         _e237348237824_
                                         _hd237347237827_
                                         _tl237346237829_
                                         _e237351237832_
                                         _hd237350237835_
                                         _tl237349237837_
                                         _e237354237840_
                                         _hd237353237843_
                                         _tl237352237845_
                                         _e237357237848_
                                         _hd237356237851_
                                         _tl237355237853_
                                         _e237360237856_
                                         _hd237359237859_
                                         _tl237358237861_))))
                                (___match247875247876_
                                 _e237339237800_
                                 _hd237338237803_
                                 _tl237337237805_
                                 _e237342237808_
                                 _hd237341237811_
                                 _tl237340237813_
                                 _e237345237816_
                                 _hd237344237819_
                                 _tl237343237821_
                                 _e237348237824_
                                 _hd237347237827_
                                 _tl237346237829_
                                 _e237351237832_
                                 _hd237350237835_
                                 _tl237349237837_
                                 _e237354237840_
                                 _hd237353237843_
                                 _tl237352237845_
                                 _e237357237848_
                                 _hd237356237851_
                                 _tl237355237853_
                                 _e237360237856_
                                 _hd237359237859_
                                 _tl237358237861_))
                            (___match247875247876_
                             _e237339237800_
                             _hd237338237803_
                             _tl237337237805_
                             _e237342237808_
                             _hd237341237811_
                             _tl237340237813_
                             _e237345237816_
                             _hd237344237819_
                             _tl237343237821_
                             _e237348237824_
                             _hd237347237827_
                             _tl237346237829_
                             _e237351237832_
                             _hd237350237835_
                             _tl237349237837_
                             _e237354237840_
                             _hd237353237843_
                             _tl237352237845_
                             _e237357237848_
                             _hd237356237851_
                             _tl237355237853_
                             _e237360237856_
                             _hd237359237859_
                             _tl237358237861_))))
                     (___match247593247594_
                      (lambda (_e237288237921_
                               _hd237287237924_
                               _tl237286237926_
                               _e237291237929_
                               _hd237290237932_
                               _tl237289237934_
                               _e237294237937_
                               _hd237293237940_
                               _tl237292237942_
                               _e237297237945_
                               _hd237296237948_
                               _tl237295237950_
                               _e237300237953_
                               _hd237299237956_
                               _tl237298237958_
                               _e237303237961_
                               _hd237302237964_
                               _tl237301237966_
                               _e237306237969_
                               _hd237305237972_
                               _tl237304237974_
                               _e237309237977_
                               _hd237308237980_
                               _tl237307237982_
                               _e237312237985_
                               _hd237311237988_
                               _tl237310237990_
                               _e237315237993_
                               _hd237314237996_
                               _tl237313237998_
                               _e237318238001_
                               _hd237317238004_
                               _tl237316238006_
                               _e237321238009_
                               _hd237320238012_
                               _tl237319238014_
                               _e237324238017_
                               _hd237323238020_
                               _tl237322238022_
                               ___splice247386247387_
                               _target237325238025_
                               _tl237327238027_)
                        (letrec ((_loop237328238030_
                                  (lambda (_hd237326238033_ _args237332238035_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237326238033_))
                                        (let ((_e237329238038_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237326238033_))))
                                          (let ((_lp-tl237331238043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237329238038_)))
                                                (_lp-hd237330238041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237329238038_))))
                                            (let ((__tmp248323
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd237330238041_
                                                           _args237332238035_))))
                                              (declare (not safe))
                                              (_loop237328238030_
                                               _lp-tl237331238043_
                                               __tmp248323))))
                                        (let ((_args237333238046_
                                               (reverse _args237332238035_)))
                                          (let ((_L238049_ _args237333238046_)
                                                (_L238050_ _hd237323238020_)
                                                (_L238051_ _hd237314237996_)
                                                (_L238052_ _hd237305237972_)
                                                (_L238053_ _hd237296237948_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L238053_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L238052_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L238051_
                                                        _self237220_)))
                                                (___kont247384247385_
                                                 _L238049_
                                                 _L238050_
                                                 _L238051_
                                                 _L238052_
                                                 _L238053_)
                                                (___kont247396247397_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop237328238030_ _target237325238025_ '())))))
                     (___match247551247552_
                      (lambda (_e237288237921_
                               _hd237287237924_
                               _tl237286237926_
                               _e237291237929_
                               _hd237290237932_
                               _tl237289237934_
                               _e237294237937_
                               _hd237293237940_
                               _tl237292237942_
                               _e237297237945_
                               _hd237296237948_
                               _tl237295237950_
                               _e237300237953_
                               _hd237299237956_
                               _tl237298237958_
                               _e237303237961_
                               _hd237302237964_
                               _tl237301237966_
                               _e237306237969_
                               _hd237305237972_
                               _tl237304237974_
                               _e237309237977_
                               _hd237308237980_
                               _tl237307237982_
                               _e237312237985_
                               _hd237311237988_
                               _tl237310237990_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd237311237988_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl237310237990_))
                                (let ((_e237315237993_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl237310237990_))))
                                  (let ((_tl237313237998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237315237993_)))
                                        (_hd237314237996_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237315237993_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl237313237998_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237307237982_))
                                            (let ((_e237318238001_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237307237982_))))
                                              (let ((_tl237316238006_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237318238001_)))
                                                    (_hd237317238004_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237318238001_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd237317238004_))
                                                    (let ((_e237321238009_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd237317238004_))))
                                                      (let ((_tl237319238014_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237321238009_)))
                    (_hd237320238012_
                     (let () (declare (not safe)) (##car _e237321238009_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd237320238012_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd237320238012_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237319238014_))
                            (let ((_e237324238017_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237319238014_))))
                              (let ((_tl237322238022_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237324238017_)))
                                    (_hd237323238020_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237324238017_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl237322238022_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl237316238006_))
                                        (let ((___splice247386247387_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl237316238006_
                                                  '0))))
                                          (let ((_tl237327238027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice247386247387_
                                                    '1)))
                                                (_target237325238025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice247386247387_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl237327238027_))
                                                (___match247593247594_
                                                 _e237288237921_
                                                 _hd237287237924_
                                                 _tl237286237926_
                                                 _e237291237929_
                                                 _hd237290237932_
                                                 _tl237289237934_
                                                 _e237294237937_
                                                 _hd237293237940_
                                                 _tl237292237942_
                                                 _e237297237945_
                                                 _hd237296237948_
                                                 _tl237295237950_
                                                 _e237300237953_
                                                 _hd237299237956_
                                                 _tl237298237958_
                                                 _e237303237961_
                                                 _hd237302237964_
                                                 _tl237301237966_
                                                 _e237306237969_
                                                 _hd237305237972_
                                                 _tl237304237974_
                                                 _e237309237977_
                                                 _hd237308237980_
                                                 _tl237307237982_
                                                 _e237312237985_
                                                 _hd237311237988_
                                                 _tl237310237990_
                                                 _e237315237993_
                                                 _hd237314237996_
                                                 _tl237313237998_
                                                 _e237318238001_
                                                 _hd237317238004_
                                                 _tl237316238006_
                                                 _e237321238009_
                                                 _hd237320238012_
                                                 _tl237319238014_
                                                 _e237324238017_
                                                 _hd237323238020_
                                                 _tl237322238022_
                                                 ___splice247386247387_
                                                 _target237325238025_
                                                 _tl237327238027_)
                                                (___kont247396247397_))))
                                        (___kont247396247397_))
                                    (___kont247396247397_))))
                            (___kont247396247397_))
                        (___kont247396247397_))
                    (___kont247396247397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247396247397_))))
                                            (___match247875247876_
                                             _e237288237921_
                                             _hd237287237924_
                                             _tl237286237926_
                                             _e237291237929_
                                             _hd237290237932_
                                             _tl237289237934_
                                             _e237294237937_
                                             _hd237293237940_
                                             _tl237292237942_
                                             _e237297237945_
                                             _hd237296237948_
                                             _tl237295237950_
                                             _e237300237953_
                                             _hd237299237956_
                                             _tl237298237958_
                                             _e237303237961_
                                             _hd237302237964_
                                             _tl237301237966_
                                             _e237306237969_
                                             _hd237305237972_
                                             _tl237304237974_
                                             _e237309237977_
                                             _hd237308237980_
                                             _tl237307237982_))
                                        (___match247875247876_
                                         _e237288237921_
                                         _hd237287237924_
                                         _tl237286237926_
                                         _e237291237929_
                                         _hd237290237932_
                                         _tl237289237934_
                                         _e237294237937_
                                         _hd237293237940_
                                         _tl237292237942_
                                         _e237297237945_
                                         _hd237296237948_
                                         _tl237295237950_
                                         _e237300237953_
                                         _hd237299237956_
                                         _tl237298237958_
                                         _e237303237961_
                                         _hd237302237964_
                                         _tl237301237966_
                                         _e237306237969_
                                         _hd237305237972_
                                         _tl237304237974_
                                         _e237309237977_
                                         _hd237308237980_
                                         _tl237307237982_))))
                                (___match247875247876_
                                 _e237288237921_
                                 _hd237287237924_
                                 _tl237286237926_
                                 _e237291237929_
                                 _hd237290237932_
                                 _tl237289237934_
                                 _e237294237937_
                                 _hd237293237940_
                                 _tl237292237942_
                                 _e237297237945_
                                 _hd237296237948_
                                 _tl237295237950_
                                 _e237300237953_
                                 _hd237299237956_
                                 _tl237298237958_
                                 _e237303237961_
                                 _hd237302237964_
                                 _tl237301237966_
                                 _e237306237969_
                                 _hd237305237972_
                                 _tl237304237974_
                                 _e237309237977_
                                 _hd237308237980_
                                 _tl237307237982_))
                            (___match247661247662_
                             _e237288237921_
                             _hd237287237924_
                             _tl237286237926_
                             _e237291237929_
                             _hd237290237932_
                             _tl237289237934_
                             _e237294237937_
                             _hd237293237940_
                             _tl237292237942_
                             _e237297237945_
                             _hd237296237948_
                             _tl237295237950_
                             _e237300237953_
                             _hd237299237956_
                             _tl237298237958_
                             _e237303237961_
                             _hd237302237964_
                             _tl237301237966_
                             _e237306237969_
                             _hd237305237972_
                             _tl237304237974_
                             _e237309237977_
                             _hd237308237980_
                             _tl237307237982_
                             _e237312237985_
                             _hd237311237988_
                             _tl237310237990_))))
                     (___match247483247484_
                      (lambda (_e237244238113_
                               _hd237243238116_
                               _tl237242238118_
                               _e237247238121_
                               _hd237246238124_
                               _tl237245238126_
                               _e237250238129_
                               _hd237249238132_
                               _tl237248238134_
                               _e237253238137_
                               _hd237252238140_
                               _tl237251238142_
                               _e237256238145_
                               _hd237255238148_
                               _tl237254238150_
                               _e237259238153_
                               _hd237258238156_
                               _tl237257238158_
                               _e237262238161_
                               _hd237261238164_
                               _tl237260238166_
                               _e237265238169_
                               _hd237264238172_
                               _tl237263238174_
                               _e237268238177_
                               _hd237267238180_
                               _tl237266238182_
                               _e237271238185_
                               _hd237270238188_
                               _tl237269238190_
                               ___splice247382247383_
                               _target237272238193_
                               _tl237274238195_)
                        (letrec ((_loop237275238198_
                                  (lambda (_hd237273238201_ _args237279238203_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd237273238201_))
                                        (let ((_e237276238206_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd237273238201_))))
                                          (let ((_lp-tl237278238211_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e237276238206_)))
                                                (_lp-hd237277238209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e237276238206_))))
                                            (let ((__tmp248324
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd237277238209_
                                                           _args237279238203_))))
                                              (declare (not safe))
                                              (_loop237275238198_
                                               _lp-tl237278238211_
                                               __tmp248324))))
                                        (let ((_args237280238214_
                                               (reverse _args237279238203_)))
                                          (let ((_L238217_ _args237280238214_)
                                                (_L238218_ _hd237270238188_)
                                                (_L238219_ _hd237261238164_)
                                                (_L238220_ _hd237252238140_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L238220_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L238219_
                                                        _self237220_)))
                                                (___kont247380247381_
                                                 _L238217_
                                                 _L238218_
                                                 _L238219_
                                                 _L238220_)
                                                (___match247671247672_
                                                 _e237244238113_
                                                 _hd237243238116_
                                                 _tl237242238118_
                                                 _e237247238121_
                                                 _hd237246238124_
                                                 _tl237245238126_
                                                 _e237250238129_
                                                 _hd237249238132_
                                                 _tl237248238134_
                                                 _e237253238137_
                                                 _hd237252238140_
                                                 _tl237251238142_
                                                 _e237256238145_
                                                 _hd237255238148_
                                                 _tl237254238150_
                                                 _e237259238153_
                                                 _hd237258238156_
                                                 _tl237257238158_
                                                 _e237262238161_
                                                 _hd237261238164_
                                                 _tl237260238166_
                                                 _e237265238169_
                                                 _hd237264238172_
                                                 _tl237263238174_
                                                 _e237268238177_
                                                 _hd237267238180_
                                                 _tl237266238182_
                                                 _e237271238185_
                                                 _hd237270238188_
                                                 _tl237269238190_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop237275238198_ _target237272238193_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx247378247379_))
                    (let ((_e237244238113_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx247378247379_))))
                      (let ((_tl237242238118_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237244238113_)))
                            (_hd237243238116_
                             (let ()
                               (declare (not safe))
                               (##car _e237244238113_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl237242238118_))
                            (let ((_e237247238121_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl237242238118_))))
                              (let ((_tl237245238126_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237247238121_)))
                                    (_hd237246238124_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237247238121_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd237246238124_))
                                    (let ((_e237250238129_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd237246238124_))))
                                      (let ((_tl237248238134_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e237250238129_)))
                                            (_hd237249238132_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e237250238129_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd237249238132_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd237249238132_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl237248238134_))
                                                    (let ((_e237253238137_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl237248238134_))))
                                                      (let ((_tl237251238142_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e237253238137_)))
                    (_hd237252238140_
                     (let () (declare (not safe)) (##car _e237253238137_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl237251238142_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl237245238126_))
                        (let ((_e237256238145_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl237245238126_))))
                          (let ((_tl237254238150_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e237256238145_)))
                                (_hd237255238148_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e237256238145_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd237255238148_))
                                (let ((_e237259238153_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd237255238148_))))
                                  (let ((_tl237257238158_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e237259238153_)))
                                        (_hd237258238156_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e237259238153_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd237258238156_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd237258238156_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl237257238158_))
                                                (let ((_e237262238161_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl237257238158_))))
                                                  (let ((_tl237260238166_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e237262238161_)))
                                                        (_hd237261238164_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e237262238161_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl237260238166_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl237254238150_))
                                                            (let ((_e237265238169_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl237254238150_))))
                      (let ((_tl237263238174_
                             (let ()
                               (declare (not safe))
                               (##cdr _e237265238169_)))
                            (_hd237264238172_
                             (let ()
                               (declare (not safe))
                               (##car _e237265238169_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd237264238172_))
                            (let ((_e237268238177_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd237264238172_))))
                              (let ((_tl237266238182_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e237268238177_)))
                                    (_hd237267238180_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e237268238177_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd237267238180_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd237267238180_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl237266238182_))
                                            (let ((_e237271238185_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl237266238182_))))
                                              (let ((_tl237269238190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e237271238185_)))
                                                    (_hd237270238188_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e237271238185_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl237269238190_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl237263238174_))
                                                        (let ((___splice247382247383_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl237263238174_ '0))))
                  (let ((_tl237274238195_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice247382247383_ '1)))
                        (_target237272238193_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice247382247383_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl237274238195_))
                        (___match247483247484_
                         _e237244238113_
                         _hd237243238116_
                         _tl237242238118_
                         _e237247238121_
                         _hd237246238124_
                         _tl237245238126_
                         _e237250238129_
                         _hd237249238132_
                         _tl237248238134_
                         _e237253238137_
                         _hd237252238140_
                         _tl237251238142_
                         _e237256238145_
                         _hd237255238148_
                         _tl237254238150_
                         _e237259238153_
                         _hd237258238156_
                         _tl237257238158_
                         _e237262238161_
                         _hd237261238164_
                         _tl237260238166_
                         _e237265238169_
                         _hd237264238172_
                         _tl237263238174_
                         _e237268238177_
                         _hd237267238180_
                         _tl237266238182_
                         _e237271238185_
                         _hd237270238188_
                         _tl237269238190_
                         ___splice247382247383_
                         _target237272238193_
                         _tl237274238195_)
                        (___match247671247672_
                         _e237244238113_
                         _hd237243238116_
                         _tl237242238118_
                         _e237247238121_
                         _hd237246238124_
                         _tl237245238126_
                         _e237250238129_
                         _hd237249238132_
                         _tl237248238134_
                         _e237253238137_
                         _hd237252238140_
                         _tl237251238142_
                         _e237256238145_
                         _hd237255238148_
                         _tl237254238150_
                         _e237259238153_
                         _hd237258238156_
                         _tl237257238158_
                         _e237262238161_
                         _hd237261238164_
                         _tl237260238166_
                         _e237265238169_
                         _hd237264238172_
                         _tl237263238174_
                         _e237268238177_
                         _hd237267238180_
                         _tl237266238182_
                         _e237271238185_
                         _hd237270238188_
                         _tl237269238190_))))
                (___match247671247672_
                 _e237244238113_
                 _hd237243238116_
                 _tl237242238118_
                 _e237247238121_
                 _hd237246238124_
                 _tl237245238126_
                 _e237250238129_
                 _hd237249238132_
                 _tl237248238134_
                 _e237253238137_
                 _hd237252238140_
                 _tl237251238142_
                 _e237256238145_
                 _hd237255238148_
                 _tl237254238150_
                 _e237259238153_
                 _hd237258238156_
                 _tl237257238158_
                 _e237262238161_
                 _hd237261238164_
                 _tl237260238166_
                 _e237265238169_
                 _hd237264238172_
                 _tl237263238174_
                 _e237268238177_
                 _hd237267238180_
                 _tl237266238182_
                 _e237271238185_
                 _hd237270238188_
                 _tl237269238190_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match247875247876_
                                                     _e237244238113_
                                                     _hd237243238116_
                                                     _tl237242238118_
                                                     _e237247238121_
                                                     _hd237246238124_
                                                     _tl237245238126_
                                                     _e237250238129_
                                                     _hd237249238132_
                                                     _tl237248238134_
                                                     _e237253238137_
                                                     _hd237252238140_
                                                     _tl237251238142_
                                                     _e237256238145_
                                                     _hd237255238148_
                                                     _tl237254238150_
                                                     _e237259238153_
                                                     _hd237258238156_
                                                     _tl237257238158_
                                                     _e237262238161_
                                                     _hd237261238164_
                                                     _tl237260238166_
                                                     _e237265238169_
                                                     _hd237264238172_
                                                     _tl237263238174_))))
                                            (___match247875247876_
                                             _e237244238113_
                                             _hd237243238116_
                                             _tl237242238118_
                                             _e237247238121_
                                             _hd237246238124_
                                             _tl237245238126_
                                             _e237250238129_
                                             _hd237249238132_
                                             _tl237248238134_
                                             _e237253238137_
                                             _hd237252238140_
                                             _tl237251238142_
                                             _e237256238145_
                                             _hd237255238148_
                                             _tl237254238150_
                                             _e237259238153_
                                             _hd237258238156_
                                             _tl237257238158_
                                             _e237262238161_
                                             _hd237261238164_
                                             _tl237260238166_
                                             _e237265238169_
                                             _hd237264238172_
                                             _tl237263238174_))
                                        (___match247551247552_
                                         _e237244238113_
                                         _hd237243238116_
                                         _tl237242238118_
                                         _e237247238121_
                                         _hd237246238124_
                                         _tl237245238126_
                                         _e237250238129_
                                         _hd237249238132_
                                         _tl237248238134_
                                         _e237253238137_
                                         _hd237252238140_
                                         _tl237251238142_
                                         _e237256238145_
                                         _hd237255238148_
                                         _tl237254238150_
                                         _e237259238153_
                                         _hd237258238156_
                                         _tl237257238158_
                                         _e237262238161_
                                         _hd237261238164_
                                         _tl237260238166_
                                         _e237265238169_
                                         _hd237264238172_
                                         _tl237263238174_
                                         _e237268238177_
                                         _hd237267238180_
                                         _tl237266238182_))
                                    (___match247875247876_
                                     _e237244238113_
                                     _hd237243238116_
                                     _tl237242238118_
                                     _e237247238121_
                                     _hd237246238124_
                                     _tl237245238126_
                                     _e237250238129_
                                     _hd237249238132_
                                     _tl237248238134_
                                     _e237253238137_
                                     _hd237252238140_
                                     _tl237251238142_
                                     _e237256238145_
                                     _hd237255238148_
                                     _tl237254238150_
                                     _e237259238153_
                                     _hd237258238156_
                                     _tl237257238158_
                                     _e237262238161_
                                     _hd237261238164_
                                     _tl237260238166_
                                     _e237265238169_
                                     _hd237264238172_
                                     _tl237263238174_))))
                            (___match247875247876_
                             _e237244238113_
                             _hd237243238116_
                             _tl237242238118_
                             _e237247238121_
                             _hd237246238124_
                             _tl237245238126_
                             _e237250238129_
                             _hd237249238132_
                             _tl237248238134_
                             _e237253238137_
                             _hd237252238140_
                             _tl237251238142_
                             _e237256238145_
                             _hd237255238148_
                             _tl237254238150_
                             _e237259238153_
                             _hd237258238156_
                             _tl237257238158_
                             _e237262238161_
                             _hd237261238164_
                             _tl237260238166_
                             _e237265238169_
                             _hd237264238172_
                             _tl237263238174_))))
                    (___match247813247814_
                     _e237244238113_
                     _hd237243238116_
                     _tl237242238118_
                     _e237247238121_
                     _hd237246238124_
                     _tl237245238126_
                     _e237250238129_
                     _hd237249238132_
                     _tl237248238134_
                     _e237253238137_
                     _hd237252238140_
                     _tl237251238142_
                     _e237256238145_
                     _hd237255238148_
                     _tl237254238150_
                     _e237259238153_
                     _hd237258238156_
                     _tl237257238158_
                     _e237262238161_
                     _hd237261238164_
                     _tl237260238166_))
                (___kont247396247397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont247396247397_))
                                            (___kont247396247397_))
                                        (___kont247396247397_))))
                                (___kont247396247397_))))
                        (___kont247396247397_))
                    (___kont247396247397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont247396247397_))
                                                (___kont247396247397_))
                                            (___kont247396247397_))))
                                    (___kont247396247397_))))
                            (___kont247396247397_))))
                    (___kont247396247397_))))))))))
