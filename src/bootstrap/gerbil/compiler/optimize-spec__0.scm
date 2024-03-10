(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1710067694)
  (begin
    (define gxc#&generate-method-specializers
      (let ((__tmp134869
             (lambda ()
               (let ((_tbl133741_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp134870 (force gxc#&identity)))
                   (declare (not safe))
                   (hash-merge! _tbl133741_ __tmp134870))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133741_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133741_
                    '%#begin-syntax
                    gxc#xform-begin-syntax%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133741_ '%#module gxc#xform-module%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133741_
                    '%#define-values
                    gxc#generate-method-specializers-define-values%))
                 _tbl133741_))))
        (declare (not safe))
        (make-promise __tmp134869)))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133724_ . _args133726_)
        (let ((__tmp134872
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133726_)
                     (gxc#compile-e__0 _stx133724_)
                     (let ((_arg1133731_ (car _args133726_))
                           (_rest133733_ (cdr _args133726_)))
                       (if (null? _rest133733_)
                           (gxc#compile-e__1 _stx133724_ _arg1133731_)
                           (let ((_arg2133736_ (car _rest133733_))
                                 (_rest133738_ (cdr _rest133733_)))
                             (if (null? _rest133738_)
                                 (gxc#compile-e__2
                                  _stx133724_
                                  _arg1133731_
                                  _arg2133736_)
                                 (apply gxc#compile-e
                                        _stx133724_
                                        _arg1133731_
                                        _arg2133736_
                                        _rest133738_))))))))
              (__tmp134871 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp134872
           gxc#current-compile-methods
           __tmp134871))))
    (define gxc#&collect-object-refs
      (let ((__tmp134873
             (lambda ()
               (let ((_tbl133721_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp134874 (force gxc#&void)))
                   (declare (not safe))
                   (hash-merge! _tbl133721_ __tmp134874))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133721_ '%#begin gxc#collect-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#begin-annotation
                    gxc#collect-begin-annotation%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133721_ '%#lambda gxc#collect-body-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#case-lambda
                    gxc#collect-body-case-lambda%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#let-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#letrec-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#letrec*-values
                    gxc#collect-body-let-values%))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#call
                    gxc#collect-object-refs-call%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133721_ '%#if gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133721_ '%#set! gxc#collect-body-setq%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133721_ '%#struct-ref gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133721_ '%#struct-set! gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#struct-direct-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#struct-direct-set!
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#struct-unchecked-ref
                    gxc#collect-operands))
                 (let ()
                   (declare (not safe))
                   (hash-put!
                    _tbl133721_
                    '%#struct-unchecked-set!
                    gxc#collect-operands))
                 _tbl133721_))))
        (declare (not safe))
        (make-promise __tmp134873)))
    (define gxc#apply-collect-object-refs
      (lambda (_stx133704_ . _args133706_)
        (let ((__tmp134876
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133706_)
                     (gxc#compile-e__0 _stx133704_)
                     (let ((_arg1133711_ (car _args133706_))
                           (_rest133713_ (cdr _args133706_)))
                       (if (null? _rest133713_)
                           (gxc#compile-e__1 _stx133704_ _arg1133711_)
                           (let ((_arg2133716_ (car _rest133713_))
                                 (_rest133718_ (cdr _rest133713_)))
                             (if (null? _rest133718_)
                                 (gxc#compile-e__2
                                  _stx133704_
                                  _arg1133711_
                                  _arg2133716_)
                                 (apply gxc#compile-e
                                        _stx133704_
                                        _arg1133711_
                                        _arg2133716_
                                        _rest133718_))))))))
              (__tmp134875 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134876
           gxc#current-compile-methods
           __tmp134875))))
    (define gxc#&subst-object-refs
      (let ((__tmp134877
             (lambda ()
               (let ((_tbl133701_
                      (let () (declare (not safe)) (make-hash-table-eq))))
                 (let ((__tmp134878 (force gxc#&basic-xform-expression)))
                   (declare (not safe))
                   (hash-merge! _tbl133701_ __tmp134878))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133701_ '%#begin gxc#xform-begin%))
                 (let ()
                   (declare (not safe))
                   (hash-put! _tbl133701_ '%#call gxc#subst-object-refs-call%))
                 _tbl133701_))))
        (declare (not safe))
        (make-promise __tmp134877)))
    (define gxc#apply-subst-object-refs
      (lambda (_stx133684_ . _args133686_)
        (let ((__tmp134880
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133686_)
                     (gxc#compile-e__0 _stx133684_)
                     (let ((_arg1133691_ (car _args133686_))
                           (_rest133693_ (cdr _args133686_)))
                       (if (null? _rest133693_)
                           (gxc#compile-e__1 _stx133684_ _arg1133691_)
                           (let ((_arg2133696_ (car _rest133693_))
                                 (_rest133698_ (cdr _rest133693_)))
                             (if (null? _rest133698_)
                                 (gxc#compile-e__2
                                  _stx133684_
                                  _arg1133691_
                                  _arg2133696_)
                                 (apply gxc#compile-e
                                        _stx133684_
                                        _arg1133691_
                                        _arg2133696_
                                        _rest133698_))))))))
              (__tmp134879 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134880
           gxc#current-compile-methods
           __tmp134879))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx130896_)
        (letrec ((_generate-method-bind130898_
                  (lambda (_$klass133677_
                           _$method-table133678_
                           _id133679_
                           _$id133680_)
                    (let ((_$tmp133682_
                           (let ((__tmp134881 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134881))))
                      (let ((__tmp134929
                             (let ()
                               (declare (not safe))
                               (cons _$id133680_ '())))
                            (__tmp134882
                             (let ((__tmp134883
                                    (let ((__tmp134884
                                           (let ((__tmp134927
                                                  (let ((__tmp134928
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134928)))
                                                 (__tmp134885
                                                  (let ((__tmp134886
                                                         (let ((__tmp134887
                                                                (let ((__tmp134888
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134889
                                      (let ((__tmp134890
                                             (let ((__tmp134910
                                                    (let ((__tmp134911
                                                           (let ((__tmp134926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133682_ '())))
                         (__tmp134912
                          (let ((__tmp134913
                                 (let ((__tmp134914
                                        (let ((__tmp134924
                                               (let ((__tmp134925
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134925)))
                                              (__tmp134915
                                               (let ((__tmp134922
                                                      (let ((__tmp134923
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table133678_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134923)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134916
                                                      (let ((__tmp134920
                                                             (let ((__tmp134921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id133679_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134921)))
                    (__tmp134917
                     (let ((__tmp134918
                            (let ((__tmp134919
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134919))))
                       (declare (not safe))
                       (cons __tmp134918 '()))))
                (declare (not safe))
                (cons __tmp134920 __tmp134917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134922
                                                       __tmp134916))))
                                          (declare (not safe))
                                          (cons __tmp134924 __tmp134915))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134914))))
                            (declare (not safe))
                            (cons __tmp134913 '()))))
                     (declare (not safe))
                     (cons __tmp134926 __tmp134912))))
              (declare (not safe))
              (cons __tmp134911 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134891
                                                    (let ((__tmp134892
                                                           (let ((__tmp134893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134908
                                 (let ((__tmp134909
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133682_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134909)))
                                (__tmp134894
                                 (let ((__tmp134906
                                        (let ((__tmp134907
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133682_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134907)))
                                       (__tmp134895
                                        (let ((__tmp134896
                                               (let ((__tmp134897
                                                      (let ((__tmp134904
                                                             (let ((__tmp134905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134905)))
                    (__tmp134898
                     (let ((__tmp134902
                            (let ((__tmp134903
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134903)))
                           (__tmp134899
                            (let ((__tmp134900
                                   (let ((__tmp134901
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133679_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134901))))
                              (declare (not safe))
                              (cons __tmp134900 '()))))
                       (declare (not safe))
                       (cons __tmp134902 __tmp134899))))
                (declare (not safe))
                (cons __tmp134904 __tmp134898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134897))))
                                          (declare (not safe))
                                          (cons __tmp134896 '()))))
                                   (declare (not safe))
                                   (cons __tmp134906 __tmp134895))))
                            (declare (not safe))
                            (cons __tmp134908 __tmp134894))))
                     (declare (not safe))
                     (cons '%#if __tmp134893))))
              (declare (not safe))
              (cons __tmp134892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134910
                                                     __tmp134891))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134890))))
                                 (declare (not safe))
                                 (cons __tmp134889 '()))))
                          (declare (not safe))
                          (cons '() __tmp134888))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134886 '()))))
                                             (declare (not safe))
                                             (cons __tmp134927 __tmp134885))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134884))))
                               (declare (not safe))
                               (cons __tmp134883 '()))))
                        (declare (not safe))
                        (cons __tmp134929 __tmp134882)))))
                 (_generate-slot-bind130899_
                  (lambda (_$klass133671_ _id133672_ _$id133673_)
                    (let ((_$tmp133675_
                           (let ((__tmp134930 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134930))))
                      (let ((__tmp134967
                             (let ()
                               (declare (not safe))
                               (cons _$id133673_ '())))
                            (__tmp134931
                             (let ((__tmp134932
                                    (let ((__tmp134933
                                           (let ((__tmp134953
                                                  (let ((__tmp134954
                                                         (let ((__tmp134966
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133675_ '())))
                       (__tmp134955
                        (let ((__tmp134956
                               (let ((__tmp134957
                                      (let ((__tmp134964
                                             (let ((__tmp134965
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134965)))
                                            (__tmp134958
                                             (let ((__tmp134962
                                                    (let ((__tmp134963
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass133671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134963)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134959
                                                    (let ((__tmp134960
                                                           (let ((__tmp134961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id133672_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134961))))
              (declare (not safe))
              (cons __tmp134960 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134962
                                                     __tmp134959))))
                                        (declare (not safe))
                                        (cons __tmp134964 __tmp134958))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134957))))
                          (declare (not safe))
                          (cons __tmp134956 '()))))
                   (declare (not safe))
                   (cons __tmp134966 __tmp134955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134954 '())))
                                                 (__tmp134934
                                                  (let ((__tmp134935
                                                         (let ((__tmp134936
                                                                (let ((__tmp134951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134952
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133675_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134952)))
                              (__tmp134937
                               (let ((__tmp134949
                                      (let ((__tmp134950
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133675_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134950)))
                                     (__tmp134938
                                      (let ((__tmp134939
                                             (let ((__tmp134940
                                                    (let ((__tmp134947
                                                           (let ((__tmp134948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134948)))
                  (__tmp134941
                   (let ((__tmp134945
                          (let ((__tmp134946
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134946)))
                         (__tmp134942
                          (let ((__tmp134943
                                 (let ((__tmp134944
                                        (let ()
                                          (declare (not safe))
                                          (cons _id133672_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134944))))
                            (declare (not safe))
                            (cons __tmp134943 '()))))
                     (declare (not safe))
                     (cons __tmp134945 __tmp134942))))
              (declare (not safe))
              (cons __tmp134947 __tmp134941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134940))))
                                        (declare (not safe))
                                        (cons __tmp134939 '()))))
                                 (declare (not safe))
                                 (cons __tmp134949 __tmp134938))))
                          (declare (not safe))
                          (cons __tmp134951 __tmp134937))))
                   (declare (not safe))
                   (cons '%#if __tmp134936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134935 '()))))
                                             (declare (not safe))
                                             (cons __tmp134953 __tmp134934))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134933))))
                               (declare (not safe))
                               (cons __tmp134932 '()))))
                        (declare (not safe))
                        (cons __tmp134967 __tmp134931)))))
                 (_generate-specializer-impl130900_
                  (lambda (_$klass133665_
                           _$method-table133666_
                           _methods-bind133667_
                           _slots-bind133668_
                           _specializer-impl133669_)
                    (let ((__tmp134968
                           (let ((__tmp134969
                                  (let ((__tmp134975
                                         (let ((__tmp134976
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table133666_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass133665_ __tmp134976)))
                                        (__tmp134970
                                         (let ((__tmp134971
                                                (let ((__tmp134972
                                                       (let ((__tmp134974
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind133668_ _methods-bind133667_)))
                     (__tmp134973
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl133669_ '()))))
                 (declare (not safe))
                 (cons __tmp134974 __tmp134973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134972))))
                                           (declare (not safe))
                                           (cons __tmp134971 '()))))
                                    (declare (not safe))
                                    (cons __tmp134975 __tmp134970))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134969))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134968 _stx130896_))))
                 (_generate-specializer-def130901_
                  (lambda (_id133661_
                           _specializer-id133662_
                           _specializer-impl133663_)
                    (let ((__tmp134977
                           (let ((__tmp134978
                                  (let ((__tmp134979
                                         (let ((__tmp134992
                                                (let ((__tmp134993
                                                       (let ((__tmp134994
                                                              (let ((__tmp134996
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id133662_ '())))
                            (__tmp134995
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl133663_ '()))))
                        (declare (not safe))
                        (cons __tmp134996 __tmp134995))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134994))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134993
                                                   _stx130896_)))
                                               (__tmp134980
                                                (let ((__tmp134981
                                                       (let ((__tmp134982
                                                              (let ((__tmp134983
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134990
                                    (let ((__tmp134991
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp134991)))
                                   (__tmp134984
                                    (let ((__tmp134988
                                           (let ((__tmp134989
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id133661_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134989)))
                                          (__tmp134985
                                           (let ((__tmp134986
                                                  (let ((__tmp134987
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id133662_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp134987))))
                                             (declare (not safe))
                                             (cons __tmp134986 '()))))
                                      (declare (not safe))
                                      (cons __tmp134988 __tmp134985))))
                               (declare (not safe))
                               (cons __tmp134990 __tmp134984))))
                        (declare (not safe))
                        (cons '%#call __tmp134983))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134982 _stx130896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134981 '()))))
                                           (declare (not safe))
                                           (cons __tmp134992 __tmp134980))))
                                    (declare (not safe))
                                    (cons _stx130896_ __tmp134979))))
                             (declare (not safe))
                             (cons '%#begin __tmp134978))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134977 _stx130896_)))))
          (let* ((___stx133830133831_ _stx130896_)
                 (_g130904130924_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133830133831_)))))
            (let ((___kont133832133833_
                   (lambda (_L130968_ _L130969_)
                     (let ((_method-calls130988_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130989_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130990_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130992_
                                 (lambda ()
                                   (if (let ((__tmp134998
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130988_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134998))
                                       (let ((__tmp134997
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs130989_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134997))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130968_))
                             (let* ((___stx133744133745_ _L130968_)
                                    (_g131379131397_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133744133745_)))))
                               (let ((___kont133746133747_
                                      (lambda (_L131433_ _L131434_ _L131435_)
                                        (for-each
                                         (lambda (_g131450131452_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131450131452_
                                              _L131435_
                                              _method-calls130988_
                                              _slot-refs130989_)))
                                         _L131433_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130992_))
                                            _stx130896_
                                            (let* ((_specializer-id131461_
                                                    (let* ((_id131455_
                                                            (let ((__tmp135120
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130969_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135120 '"::specialize")))
                   (_specializer-id131458_
                    (let ((__tmp135121
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130896_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131455_ __tmp135121))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131458_))
              _specializer-id131458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131463_
                                                    (let ((__tmp135122
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135122)))
                                                   (_$method-table131465_
                                                    (let ((__tmp135123
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135123)))
                                                   (_methods131467_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130988_)))
                                                   (_$methods131471_
                                                    (map (lambda (_id131469_)
                                                           (let ((__tmp135124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131469_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135124)))
                 _methods131467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135125_
                                                    (for-each
                                                     (lambda (_g131472131475_
                                                              _g131473131477_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130988_
                                                          _g131472131475_
                                                          _g131473131477_)))
                                                     _methods131467_
                                                     _$methods131471_))
                                                   (_methods-bind131488_
                                                    (map (lambda (_g131480131483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131481131485_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130898_
                      _$klass131463_
                      _$method-table131465_
                      _g131480131483_
                      _g131481131485_)))
                 _methods131467_
                 _$methods131471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131490_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130989_)))
                                                   (_$slots131494_
                                                    (map (lambda (_id131492_)
                                                           (let ((__tmp135126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131492_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135126)))
                 _slots131490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135127_
                                                    (for-each
                                                     (lambda (_g131495131498_
                                                              _g131496131500_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130989_
                                                          _g131495131498_
                                                          _g131496131500_)))
                                                     _slots131490_
                                                     _$slots131494_))
                                                   (_slots-bind131511_
                                                    (map (lambda (_g131503131506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131504131508_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130899_
                      _$klass131463_
                      _g131503131506_
                      _g131504131508_)))
                 _slots131490_
                 _$slots131494_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131517_
                                                    (map (lambda (_g131512131514_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131512131514_
                                                              _L131435_
                                                              _$klass131463_
                                                              _method-calls130988_
                                                              _slot-refs130989_)))
                                                         _L131433_))
                                                   (_specializer-impl131519_
                                                    (let ((__tmp135128
                                                           (let ((__tmp135129
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135130
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131435_ _L131434_))))
                            (declare (not safe))
                            (cons __tmp135130 _specializer-body131517_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135129))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135128 _stx130896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131521_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130900_
                                                       _$klass131463_
                                                       _$method-table131465_
                                                       _methods-bind131488_
                                                       _slots-bind131511_
                                                       _specializer-impl131519_))))
                                              (let ((__tmp135132
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130969_)))
                                                    (__tmp135131
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131461_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135132
                                                 '" => "
                                                 __tmp135131))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130901_
                                                 _L130969_
                                                 _specializer-id131461_
                                                 _specializer-impl131521_))))))
                                     (___kont133748133749_
                                      (lambda () _stx130896_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133744133745_))
                                     (let ((_e131386131409_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133744133745_))))
                                       (let ((_tl131384131414_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131386131409_)))
                                             (_hd131385131412_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131386131409_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131384131414_))
                                             (let ((_e131389131417_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131384131414_))))
                                               (let ((_tl131387131422_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131389131417_)))
                                                     (_hd131388131420_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131389131417_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131388131420_))
                                                     (let ((_e131392131425_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131388131420_))))
                                                       (let ((_tl131390131430_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131392131425_)))
                     (_hd131391131428_
                      (let () (declare (not safe)) (##car _e131392131425_))))
                 (___kont133746133747_
                  _tl131387131422_
                  _tl131390131430_
                  _hd131391131428_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133748133749_))))
                                             (___kont133748133749_))))
                                     (___kont133748133749_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130968_))
                                 (let* ((_g131527131546_
                                         (lambda (_g131528131543_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131528131543_))))
                                        (_g131526131829_
                                         (lambda (_g131528131549_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131528131549_))
                                               (let ((_e131532131551_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131528131549_))))
                                                 (let ((_hd131531131554_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131532131551_)))
                                                       (_tl131530131556_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131532131551_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131530131556_))
                                                       (let ((_g135103_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131530131556_ '0))))
                 (begin
                   (let ((_g135104_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135103_)
                                (##vector-length _g135103_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135104_ 2)))
                         (error "Context expects 2 values" _g135104_)))
                   (let ((_target131533131559_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135103_ 0)))
                         (_tl131535131561_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135103_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131535131561_))
                         (letrec ((_loop131536131564_
                                   (lambda (_hd131534131567_
                                            _clause131540131569_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131534131567_))
                                         (let ((_e131537131572_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131534131567_))))
                                           (let ((_lp-hd131538131575_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131537131572_)))
                                                 (_lp-tl131539131577_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131537131572_))))
                                             (let ((__tmp135119
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131538131575_
                                                            _clause131540131569_))))
                                               (declare (not safe))
                                               (_loop131536131564_
                                                _lp-tl131539131577_
                                                __tmp135119))))
                                         (let ((_clause131541131580_
                                                (reverse _clause131540131569_)))
                                           ((lambda (_L131583_)
                                              (for-each
                                               (lambda (_clause131596_)
                                                 (let* ((___stx133770133771_
                                                         _clause131596_)
                                                        (_g131599131614_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133770133771_)))))
                                                   (let ((___kont133772133773_
                                                          (lambda (_L131642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131643_
                           _L131644_)
                    (for-each
                     (lambda (_g131659131661_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131659131661_
                          _L131644_
                          _method-calls130988_
                          _slot-refs130989_)))
                     _L131642_)))
                 (___kont133774133775_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133770133771_))
                                                         (let ((_e131606131626_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133770133771_))))
                   (let ((_tl131604131631_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131606131626_)))
                         (_hd131605131629_
                          (let ()
                            (declare (not safe))
                            (##car _e131606131626_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131605131629_))
                         (let ((_e131609131634_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131605131629_))))
                           (let ((_tl131607131639_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131609131634_)))
                                 (_hd131608131637_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131609131634_))))
                             (___kont133772133773_
                              _tl131604131631_
                              _tl131607131639_
                              _hd131608131637_)))
                         (___kont133774133775_))))
                 (___kont133774133775_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135105
                                                      (lambda (_g131666131669_
                                                               _g131667131671_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g131666131669_
                                                                _g131667131671_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135105
                                                         '()
                                                         _L131583_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130992_))
                                                  _stx130896_
                                                  (let* ((_specializer-id131680_
                                                          (let* ((_id131674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135106
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130969_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135106 '"::specialize")))
                         (_specializer-id131677_
                          (let ((__tmp135107
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130896_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131674_ __tmp135107))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131677_))
                    _specializer-id131677_))
                 (_$klass131682_
                  (let ((__tmp135108 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135108)))
                 (_$method-table131684_
                  (let ((__tmp135109 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135109)))
                 (_methods131686_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130988_)))
                 (_$methods131690_
                  (map (lambda (_id131688_)
                         (let ((__tmp135110 (gensym _id131688_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135110)))
                       _methods131686_))
                 (_g135111_
                  (for-each
                   (lambda (_g131691131694_ _g131692131696_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130988_
                        _g131691131694_
                        _g131692131696_)))
                   _methods131686_
                   _$methods131690_))
                 (_methods-bind131707_
                  (map (lambda (_g131699131702_ _g131700131704_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130898_
                            _$klass131682_
                            _$method-table131684_
                            _g131699131702_
                            _g131700131704_)))
                       _methods131686_
                       _$methods131690_))
                 (_slots131709_
                  (let () (declare (not safe)) (hash-keys _slot-refs130989_)))
                 (_$slots131713_
                  (map (lambda (_id131711_)
                         (let ((__tmp135112 (gensym _id131711_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135112)))
                       _slots131709_))
                 (_g135113_
                  (for-each
                   (lambda (_g131714131717_ _g131715131719_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130989_
                        _g131714131717_
                        _g131715131719_)))
                   _slots131709_
                   _$slots131713_))
                 (_slots-bind131730_
                  (map (lambda (_g131722131725_ _g131723131727_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130899_
                            _$klass131682_
                            _g131722131725_
                            _g131723131727_)))
                       _slots131709_
                       _$slots131713_))
                 (_specializer-clauses131822_
                  (map (lambda (_clause131732_)
                         (let* ((___stx133790133791_ _clause131732_)
                                (_g131735131750_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx133790133791_)))))
                           (let ((___kont133792133793_
                                  (lambda (_L131778_ _L131779_ _L131780_)
                                    (let* ((_body131810_
                                            (map (lambda (_g131805131807_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g131805131807_
                                                      _L131780_
                                                      _$klass131682_
                                                      _method-calls130988_
                                                      _slot-refs130989_)))
                                                 _L131778_))
                                           (__tmp135114
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131780_ _L131779_))))
                                      (declare (not safe))
                                      (cons __tmp135114 _body131810_))))
                                 (___kont133794133795_
                                  (lambda () _clause131732_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx133790133791_))
                                 (let ((_e131742131762_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx133790133791_))))
                                   (let ((_tl131740131767_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e131742131762_)))
                                         (_hd131741131765_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e131742131762_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131741131765_))
                                         (let ((_e131745131770_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131741131765_))))
                                           (let ((_tl131743131775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131745131770_)))
                                                 (_hd131744131773_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131745131770_))))
                                             (___kont133792133793_
                                              _tl131740131767_
                                              _tl131743131775_
                                              _hd131744131773_)))
                                         (___kont133794133795_))))
                                 (___kont133794133795_)))))
                       (let ((__tmp135115
                              (lambda (_g131814131817_ _g131815131819_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g131814131817_ _g131815131819_)))))
                         (declare (not safe))
                         (foldr1 __tmp135115 '() _L131583_))))
                 (_specializer-impl131824_
                  (let ((__tmp135116
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses131822_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135116 _stx130896_)))
                 (_specializer-impl131826_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130900_
                     _$klass131682_
                     _$method-table131684_
                     _methods-bind131707_
                     _slots-bind131730_
                     _specializer-impl131824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135118
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130969_)))
                                                          (__tmp135117
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131680_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135118
                                                       '" => "
                                                       __tmp135117))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130901_
                                                       _L130969_
                                                       _specializer-id131680_
                                                       _specializer-impl131826_)))))
                                            _clause131541131580_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131536131564_ _target131533131559_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131527131546_ _g131528131549_))))))
               (let ()
                 (declare (not safe))
                 (_g131527131546_ _g131528131549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131527131546_
                                                  _g131528131549_))))))
                                   (declare (not safe))
                                   (_g131526131829_ _L130968_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130968_))
                                     (let* ((_g131832131862_
                                             (lambda (_g131833131859_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131833131859_))))
                                            (_g131831132467_
                                             (lambda (_g131833131865_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131833131865_))
                                                   (let ((_e131839131867_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131833131865_))))
                                                     (let ((_hd131838131870_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131839131867_)))
                                                           (_tl131837131872_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131839131867_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131837131872_))
                                                           (let ((_e131842131875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131837131872_))))
                     (let ((_hd131841131878_
                            (let ()
                              (declare (not safe))
                              (##car _e131842131875_)))
                           (_tl131840131880_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131842131875_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131841131878_))
                           (let ((_e131845131883_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131841131878_))))
                             (let ((_hd131844131886_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131845131883_)))
                                   (_tl131843131888_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131845131883_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131844131886_))
                                   (let ((_e131848131891_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131844131886_))))
                                     (let ((_hd131847131894_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131848131891_)))
                                           (_tl131846131896_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131848131891_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131847131894_))
                                           (let ((_e131851131899_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131847131894_))))
                                             (let ((_hd131850131902_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131851131899_)))
                                                   (_tl131849131904_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131851131899_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131849131904_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131846131896_))
                                                       (let ((_e131854131907_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131846131896_))))
                 (let ((_hd131853131910_
                        (let () (declare (not safe)) (##car _e131854131907_)))
                       (_tl131852131912_
                        (let () (declare (not safe)) (##cdr _e131854131907_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131852131912_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131843131888_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131840131880_))
                               (let ((_e131857131915_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131840131880_))))
                                 (let ((_hd131856131918_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131857131915_)))
                                       (_tl131855131920_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131857131915_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131855131920_))
                                       ((lambda (_L131923_ _L131924_ _L131925_)
                                          (let* ((_g131948131966_
                                                  (lambda (_g131949131963_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131949131963_))))
                                                 (_g131947132017_
                                                  (lambda (_g131949131969_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131949131969_))
                                                        (let ((_e131955131971_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131949131969_))))
                  (let ((_hd131954131974_
                         (let () (declare (not safe)) (##car _e131955131971_)))
                        (_tl131953131976_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131955131971_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131953131976_))
                        (let ((_e131958131979_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131953131976_))))
                          (let ((_hd131957131982_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131958131979_)))
                                (_tl131956131984_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131958131979_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131957131982_))
                                (let ((_e131961131987_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131957131982_))))
                                  (let ((_hd131960131990_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131961131987_)))
                                        (_tl131959131992_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131961131987_))))
                                    ((lambda (_L131995_ _L131996_ _L131997_)
                                       (for-each
                                        (lambda (_g132012132014_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132012132014_
                                             _L131997_
                                             _method-calls130988_
                                             _slot-refs130989_)))
                                        _L131995_))
                                     _tl131956131984_
                                     _tl131959131992_
                                     _hd131960131990_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131948131966_ _g131949131969_)))))
                        (let ()
                          (declare (not safe))
                          (_g131948131966_ _g131949131969_)))))
                (let ()
                  (declare (not safe))
                  (_g131948131966_ _g131949131969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131947132017_ _L131924_))
                                          (let* ((_g132020132039_
                                                  (lambda (_g132021132036_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132021132036_))))
                                                 (_g132019132158_
                                                  (lambda (_g132021132042_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132021132042_))
                                                        (let ((_e132025132044_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132021132042_))))
                  (let ((_hd132024132047_
                         (let () (declare (not safe)) (##car _e132025132044_)))
                        (_tl132023132049_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132025132044_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132023132049_))
                        (let ((_g135073_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132023132049_
                                  '0))))
                          (begin
                            (let ((_g135074_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135073_)
                                         (##vector-length _g135073_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135074_ 2)))
                                  (error "Context expects 2 values"
                                         _g135074_)))
                            (let ((_target132026132052_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135073_ 0)))
                                  (_tl132028132054_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135073_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132028132054_))
                                  (letrec ((_loop132029132057_
                                            (lambda (_hd132027132060_
                                                     _clause132033132062_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132027132060_))
                                                  (let ((_e132030132065_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132027132060_))))
                                                    (let ((_lp-hd132031132068_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132030132065_)))
                                                          (_lp-tl132032132070_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132030132065_))))
                                                      (let ((__tmp135076
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132031132068_ _clause132033132062_))))
                (declare (not safe))
                (_loop132029132057_ _lp-tl132032132070_ __tmp135076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132034132073_
                                                         (reverse _clause132033132062_)))
                                                    ((lambda (_L132076_)
                                                       (for-each
                                                        (lambda (_clause132089_)
                                                          (let* ((_g132091132106_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132092132103_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132092132103_))))
                         (_g132090132148_
                          (lambda (_g132092132109_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132092132109_))
                                (let ((_e132098132111_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132092132109_))))
                                  (let ((_hd132097132114_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132098132111_)))
                                        (_tl132096132116_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132098132111_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132097132114_))
                                        (let ((_e132101132119_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132097132114_))))
                                          (let ((_hd132100132122_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132101132119_)))
                                                (_tl132099132124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132101132119_))))
                                            ((lambda (_L132127_
                                                      _L132128_
                                                      _L132129_)
                                               (for-each
                                                (lambda (_g132143132145_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132143132145_
                                                     _L132129_
                                                     _method-calls130988_
                                                     _slot-refs130989_)))
                                                _L132127_))
                                             _tl132096132116_
                                             _tl132099132124_
                                             _hd132100132122_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132091132106_ _g132092132109_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132091132106_ _g132092132109_))))))
                    (declare (not safe))
                    (_g132090132148_ _clause132089_)))
                (let ((__tmp135075
                       (lambda (_g132150132153_ _g132151132155_)
                         (let ()
                           (declare (not safe))
                           (cons _g132150132153_ _g132151132155_)))))
                  (declare (not safe))
                  (foldr1 __tmp135075 '() _L132076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132034132073_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132029132057_
                                       _target132026132052_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132020132039_ _g132021132042_))))))
                        (let ()
                          (declare (not safe))
                          (_g132020132039_ _g132021132042_)))))
                (let ()
                  (declare (not safe))
                  (_g132020132039_ _g132021132042_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132019132158_ _L131923_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130992_))
                                              _stx130896_
                                              (let* ((_specializer-id132167_
                                                      (let* ((_id132161_
                                                              (let ((__tmp135077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130969_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135077 '"::specialize")))
                     (_specializer-id132164_
                      (let ((__tmp135078
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130896_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132161_ __tmp135078))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132164_))
                _specializer-id132164_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132169_
                                                      (let ((__tmp135079
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135079)))
                                                     (_$method-table132171_
                                                      (let ((__tmp135080
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135080)))
                                                     (_methods132173_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130988_)))
                                                     (_$methods132177_
                                                      (map (lambda (_id132175_)
                                                             (let ((__tmp135081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132175_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135081)))
                   _methods132173_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135082_
                                                      (for-each
                                                       (lambda (_g132178132181_
                                                                _g132179132183_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130988_
                                                            _g132178132181_
                                                            _g132179132183_)))
                                                       _methods132173_
                                                       _$methods132177_))
                                                     (_methods-bind132194_
                                                      (map (lambda (_g132186132189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132187132191_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130898_
                        _$klass132169_
                        _$method-table132171_
                        _g132186132189_
                        _g132187132191_)))
                   _methods132173_
                   _$methods132177_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132196_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130989_)))
                                                     (_$slots132200_
                                                      (map (lambda (_id132198_)
                                                             (let ((__tmp135083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132198_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135083)))
                   _slots132196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135084_
                                                      (for-each
                                                       (lambda (_g132201132204_
                                                                _g132202132206_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130989_
                                                            _g132201132204_
                                                            _g132202132206_)))
                                                       _slots132196_
                                                       _$slots132200_))
                                                     (_slots-bind132217_
                                                      (map (lambda (_g132209132212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132210132214_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130899_
                        _$klass132169_
                        _g132209132212_
                        _g132210132214_)))
                   _slots132196_
                   _$slots132200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132303_
                                                      (let* ((_g132219132237_
                                                              (lambda (_g132220132234_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132220132234_))))
                     (_g132218132300_
                      (lambda (_g132220132240_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132220132240_))
                            (let ((_e132226132242_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132220132240_))))
                              (let ((_hd132225132245_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132226132242_)))
                                    (_tl132224132247_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132226132242_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132224132247_))
                                    (let ((_e132229132250_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132224132247_))))
                                      (let ((_hd132228132253_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132229132250_)))
                                            (_tl132227132255_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132229132250_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132228132253_))
                                            (let ((_e132232132258_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132228132253_))))
                                              (let ((_hd132231132261_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132232132258_)))
                                                    (_tl132230132263_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132232132258_))))
                                                ((lambda (_L132266_
                                                          _L132267_
                                                          _L132268_)
                                                   (let* ((_body132298_
                                                           (map (lambda (_g132293132295_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132293132295_
                             _L132268_
                             _$klass132169_
                             _method-calls130988_
                             _slot-refs130989_)))
                        _L132266_))
                  (__tmp135085
                   (let ((__tmp135086
                          (let ((__tmp135087
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132268_ _L132267_))))
                            (declare (not safe))
                            (cons __tmp135087 _body132298_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135086))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135085
                                                      _L131924_)))
                                                 _tl132227132255_
                                                 _tl132230132263_
                                                 _hd132231132261_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132219132237_
                                               _g132220132240_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132219132237_ _g132220132240_)))))
                            (let ()
                              (declare (not safe))
                              (_g132219132237_ _g132220132240_))))))
                (declare (not safe))
                (_g132218132300_ _L131924_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132460_
                                                      (let* ((_g132305132324_
                                                              (lambda (_g132306132321_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132306132321_))))
                     (_g132304132457_
                      (lambda (_g132306132327_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132306132327_))
                            (let ((_e132310132329_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132306132327_))))
                              (let ((_hd132309132332_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132310132329_)))
                                    (_tl132308132334_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132310132329_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132308132334_))
                                    (let ((_g135088_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132308132334_
                                              '0))))
                                      (begin
                                        (let ((_g135089_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135088_)
                                                     (##vector-length
                                                      _g135088_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135089_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135089_)))
                                        (let ((_target132311132337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135088_ 0)))
                                              (_tl132313132339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135088_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132313132339_))
                                              (letrec ((_loop132314132342_
                                                        (lambda (_hd132312132345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132318132347_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132312132345_))
                      (let ((_e132315132350_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132312132345_))))
                        (let ((_lp-hd132316132353_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132315132350_)))
                              (_lp-tl132317132355_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132315132350_))))
                          (let ((__tmp135093
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132316132353_
                                         _clause132318132347_))))
                            (declare (not safe))
                            (_loop132314132342_
                             _lp-tl132317132355_
                             __tmp135093))))
                      (let ((_clause132319132358_
                             (reverse _clause132318132347_)))
                        ((lambda (_L132361_)
                           (let* ((_clauses132455_
                                   (map (lambda (_clause132375_)
                                          (let* ((___stx133810133811_
                                                  _clause132375_)
                                                 (_g132378132393_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133810133811_)))))
                                            (let ((___kont133812133813_
                                                   (lambda (_L132421_
                                                            _L132422_
                                                            _L132423_)
                                                     (let* ((_body132443_
                                                             (map (lambda (_g132438132440_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132438132440_
                               _L132423_
                               _$klass132169_
                               _method-calls130988_
                               _slot-refs130989_)))
                          _L132421_))
                    (__tmp135090
                     (let () (declare (not safe)) (cons _L132423_ _L132422_))))
               (declare (not safe))
               (cons __tmp135090 _body132443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133814133815_
                                                   (lambda () _clause132375_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx133810133811_))
                                                  (let ((_e132385132405_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx133810133811_))))
                                                    (let ((_tl132383132410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132385132405_)))
                                                          (_hd132384132408_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132385132405_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132384132408_))
                                                          (let ((_e132388132413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132384132408_))))
                    (let ((_tl132386132418_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132388132413_)))
                          (_hd132387132416_
                           (let ()
                             (declare (not safe))
                             (##car _e132388132413_))))
                      (___kont133812133813_
                       _tl132383132410_
                       _tl132386132418_
                       _hd132387132416_)))
                  (___kont133814133815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133814133815_)))))
                                        (let ((__tmp135091
                                               (lambda (_g132447132450_
                                                        _g132448132452_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132447132450_
                                                         _g132448132452_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135091 '() _L132361_))))
                                  (__tmp135092
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132455_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135092 _L131923_)))
                         _clause132319132358_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132314132342_
                                                   _target132311132337_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132305132324_
                                                 _g132306132327_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132305132324_ _g132306132327_)))))
                            (let ()
                              (declare (not safe))
                              (_g132305132324_ _g132306132327_))))))
                (declare (not safe))
                (_g132304132457_ _L131923_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132462_
                                                      (let ((__tmp135094
                                                             (let ((__tmp135095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135097
                                   (let ((__tmp135098
                                          (let ((__tmp135100
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L131925_ '())))
                                                (__tmp135099
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132303_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135100 __tmp135099))))
                                     (declare (not safe))
                                     (cons __tmp135098 '())))
                                  (__tmp135096
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132460_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135097 __tmp135096))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135095))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135094 _stx130896_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132464_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130900_
                                                         _$klass132169_
                                                         _$method-table132171_
                                                         _methods-bind132194_
                                                         _slots-bind132217_
                                                         _specializer-impl132462_))))
                                                (let ((__tmp135102
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130969_)))
                                                      (__tmp135101
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132167_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135102
                                                   '" => "
                                                   __tmp135101))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130901_
                                                   _L130969_
                                                   _specializer-id132167_
                                                   _specializer-impl132464_)))))
                                        _hd131856131918_
                                        _hd131853131910_
                                        _hd131850131902_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131832131862_ _g131833131865_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131832131862_ _g131833131865_)))
                           (let ()
                             (declare (not safe))
                             (_g131832131862_ _g131833131865_)))
                       (let ()
                         (declare (not safe))
                         (_g131832131862_ _g131833131865_)))))
               (let () (declare (not safe)) (_g131832131862_ _g131833131865_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131832131862_
                                                      _g131833131865_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131832131862_
                                              _g131833131865_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131832131862_ _g131833131865_)))))
                           (let ()
                             (declare (not safe))
                             (_g131832131862_ _g131833131865_)))))
                   (let ()
                     (declare (not safe))
                     (_g131832131862_ _g131833131865_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131832131862_
                                                      _g131833131865_))))))
                                       (declare (not safe))
                                       (_g131831132467_ _L130968_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130968_))
                                         (let* ((_g132470132523_
                                                 (lambda (_g132471132520_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132471132520_))))
                                                (_g132469133654_
                                                 (lambda (_g132471132526_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132471132526_))
                                                       (let ((_e132479132528_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132471132526_))))
                 (let ((_hd132478132531_
                        (let () (declare (not safe)) (##car _e132479132528_)))
                       (_tl132477132533_
                        (let () (declare (not safe)) (##cdr _e132479132528_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132478132531_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132478132531_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132477132533_))
                               (let ((_e132482132536_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132477132533_))))
                                 (let ((_hd132481132539_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132482132536_)))
                                       (_tl132480132541_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132482132536_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132481132539_))
                                       (let ((_e132485132544_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132481132539_))))
                                         (let ((_hd132484132547_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132485132544_)))
                                               (_tl132483132549_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132485132544_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132484132547_))
                                               (let ((_e132488132552_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132484132547_))))
                                                 (let ((_hd132487132555_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132488132552_)))
                                                       (_tl132486132557_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132488132552_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132487132555_))
                                                       (let ((_e132491132560_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132487132555_))))
                 (let ((_hd132490132563_
                        (let () (declare (not safe)) (##car _e132491132560_)))
                       (_tl132489132565_
                        (let () (declare (not safe)) (##cdr _e132491132560_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132489132565_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132486132557_))
                           (let ((_e132494132568_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132486132557_))))
                             (let ((_hd132493132571_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132494132568_)))
                                   (_tl132492132573_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132494132568_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132493132571_))
                                   (let ((_e132497132576_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132493132571_))))
                                     (let ((_hd132496132579_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132497132576_)))
                                           (_tl132495132581_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132497132576_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132496132579_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132496132579_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132495132581_))
                                                   (let ((_e132500132584_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132495132581_))))
                                                     (let ((_hd132499132587_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132500132584_)))
                                                           (_tl132498132589_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132500132584_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132499132587_))
                                                           (let ((_e132503132592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132499132587_))))
                     (let ((_hd132502132595_
                            (let ()
                              (declare (not safe))
                              (##car _e132503132592_)))
                           (_tl132501132597_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132503132592_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132502132595_))
                           (let ((_e132506132600_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132502132595_))))
                             (let ((_hd132505132603_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132506132600_)))
                                   (_tl132504132605_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132506132600_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132505132603_))
                                   (let ((_e132509132608_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132505132603_))))
                                     (let ((_hd132508132611_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132509132608_)))
                                           (_tl132507132613_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132509132608_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132507132613_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132504132605_))
                                               (let ((_e132512132616_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132504132605_))))
                                                 (let ((_hd132511132619_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132512132616_)))
                                                       (_tl132510132621_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132512132616_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132510132621_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132501132597_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132498132589_))
                       (let ((_e132515132624_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132498132589_))))
                         (let ((_hd132514132627_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132515132624_)))
                               (_tl132513132629_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132515132624_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132513132629_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132492132573_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132483132549_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132480132541_))
                                           (let ((_e132518132632_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132480132541_))))
                                             (let ((_hd132517132635_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132518132632_)))
                                                   (_tl132516132637_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132518132632_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132516132637_))
                                                   ((lambda (_L132640_
                                                             _L132641_
                                                             _L132642_
                                                             _L132643_
                                                             _L132644_)
                                                      (let* ((_g132683132745_
                                                              (lambda (_g132684132742_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132684132742_))))
                     (_g132682133651_
                      (lambda (_g132684132748_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132684132748_))
                            (let ((_e132692132750_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132684132748_))))
                              (let ((_hd132691132753_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132692132750_)))
                                    (_tl132690132755_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132692132750_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132691132753_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132691132753_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132690132755_))
                                            (let ((_e132695132758_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132690132755_))))
                                              (let ((_hd132694132761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132695132758_)))
                                                    (_tl132693132763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132695132758_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132693132763_))
                                                    (let ((_e132698132766_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132693132763_))))
                                                      (let ((_hd132697132769_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132698132766_)))
                    (_tl132696132771_
                     (let () (declare (not safe)) (##cdr _e132698132766_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132697132769_))
                    (let ((_e132701132774_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132697132769_))))
                      (let ((_hd132700132777_
                             (let ()
                               (declare (not safe))
                               (##car _e132701132774_)))
                            (_tl132699132779_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132701132774_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132700132777_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132700132777_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132699132779_))
                                    (let ((_e132704132782_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132699132779_))))
                                      (let ((_hd132703132785_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132704132782_)))
                                            (_tl132702132787_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132704132782_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132703132785_))
                                            (let ((_e132707132790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132703132785_))))
                                              (let ((_hd132706132793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132707132790_)))
                                                    (_tl132705132795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132707132790_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132706132793_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132706132793_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132705132795_))
                                                            (let ((_e132710132798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132705132795_))))
                      (let ((_hd132709132801_
                             (let ()
                               (declare (not safe))
                               (##car _e132710132798_)))
                            (_tl132708132803_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132710132798_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132708132803_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132702132787_))
                                (let ((_e132713132806_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132702132787_))))
                                  (let ((_hd132712132809_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132713132806_)))
                                        (_tl132711132811_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132713132806_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132712132809_))
                                        (let ((_e132716132814_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132712132809_))))
                                          (let ((_hd132715132817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132716132814_)))
                                                (_tl132714132819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132716132814_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132715132817_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132715132817_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132714132819_))
                                                        (let ((_e132719132822_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132714132819_))))
                  (let ((_hd132718132825_
                         (let () (declare (not safe)) (##car _e132719132822_)))
                        (_tl132717132827_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132719132822_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132717132827_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132711132811_))
                            (let ((_e132722132830_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132711132811_))))
                              (let ((_hd132721132833_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132722132830_)))
                                    (_tl132720132835_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132722132830_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132721132833_))
                                    (let ((_e132725132838_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132721132833_))))
                                      (let ((_hd132724132841_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132725132838_)))
                                            (_tl132723132843_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132725132838_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132724132841_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132724132841_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132723132843_))
                                                    (let ((_e132728132846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132723132843_))))
                                                      (let ((_hd132727132849_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132728132846_)))
                    (_tl132726132851_
                     (let () (declare (not safe)) (##cdr _e132728132846_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132726132851_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132720132835_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132720132835_))
                                  '1)
                            (let ((_g134999_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132720132835_
                                      '1))))
                              (begin
                                (let ((_g135000_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134999_)
                                             (##vector-length _g134999_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135000_ 2)))
                                      (error "Context expects 2 values"
                                             _g135000_)))
                                (let ((_target132729132854_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134999_ 0)))
                                      (_tl132731132856_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134999_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132731132856_))
                                      (let ((_e132740132859_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132731132856_))))
                                        (let ((_hd132739132862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132740132859_)))
                                              (_tl132738132864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132740132859_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132738132864_))
                                              (letrec ((_loop132732132867_
                                                        (lambda (_hd132730132870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132736132872_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132730132870_))
                      (let ((_e132733132875_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132730132870_))))
                        (let ((_lp-hd132734132878_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132733132875_)))
                              (_lp-tl132735132880_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132733132875_))))
                          (let ((__tmp135072
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132734132878_
                                         _kw-ref132736132872_))))
                            (declare (not safe))
                            (_loop132732132867_
                             _lp-tl132735132880_
                             __tmp135072))))
                      (let ((_kw-ref132737132883_
                             (reverse _kw-ref132736132872_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132696132771_))
                            ((lambda (_L132886_
                                      _L132887_
                                      _L132888_
                                      _L132889_
                                      _L132890_)
                               (let* ((_kw-count132941_
                                       (length (let ((__tmp135001
                                                      (lambda (_g132933132936_
                                                               _g132934132938_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132933132936_
                                                                _g132934132938_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135001
                                                         '()
                                                         _L132887_))))
                                      (_self-index132943_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132941_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132642_))
                                     (let* ((_g132946132960_
                                             (lambda (_g132947132957_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132947132957_))))
                                            (_g132945133073_
                                             (lambda (_g132947132963_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132947132963_))
                                                   (let ((_e132952132965_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132947132963_))))
                                                     (let ((_hd132951132968_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132952132965_)))
                                                           (_tl132950132970_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132952132965_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132950132970_))
                                                           (let ((_e132955132973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132950132970_))))
                     (let ((_hd132954132976_
                            (let ()
                              (declare (not safe))
                              (##car _e132955132973_)))
                           (_tl132953132978_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132955132973_))))
                       ((lambda (_L132981_ _L132982_)
                          (let ((_self132998_
                                 (list-ref _L132982_ _self-index132943_)))
                            (for-each
                             (lambda (_g132999133001_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132999133001_
                                  _self132998_
                                  _method-calls130988_
                                  _slot-refs130989_)))
                             _L132981_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130992_))
                                _stx130896_
                                (let* ((_specializer-id133010_
                                        (let* ((_id133004_
                                                (let ((__tmp135045
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130969_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135045
                                                   '"::specialize")))
                                               (_specializer-id133007_
                                                (let ((__tmp135046
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130896_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133004_
                                                   __tmp135046))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133007_))
                                          _specializer-id133007_))
                                       (_$klass133012_
                                        (let ((__tmp135047 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135047)))
                                       (_$method-table133014_
                                        (let ((__tmp135048
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135048)))
                                       (_methods133016_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130988_)))
                                       (_$methods133020_
                                        (map (lambda (_id133018_)
                                               (let ((__tmp135049
                                                      (gensym _id133018_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135049)))
                                             _methods133016_))
                                       (_g135050_
                                        (for-each
                                         (lambda (_g133021133024_
                                                  _g133022133026_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130988_
                                              _g133021133024_
                                              _g133022133026_)))
                                         _methods133016_
                                         _$methods133020_))
                                       (_methods-bind133037_
                                        (map (lambda (_g133029133032_
                                                      _g133030133034_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130898_
                                                  _$klass133012_
                                                  _$method-table133014_
                                                  _g133029133032_
                                                  _g133030133034_)))
                                             _methods133016_
                                             _$methods133020_))
                                       (_slots133039_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130989_)))
                                       (_$slots133043_
                                        (map (lambda (_id133041_)
                                               (let ((__tmp135051
                                                      (gensym _id133041_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135051)))
                                             _slots133039_))
                                       (_g135052_
                                        (for-each
                                         (lambda (_g133044133047_
                                                  _g133045133049_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130989_
                                              _g133044133047_
                                              _g133045133049_)))
                                         _slots133039_
                                         _$slots133043_))
                                       (_slots-bind133060_
                                        (map (lambda (_g133052133055_
                                                      _g133053133057_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130899_
                                                  _$klass133012_
                                                  _g133052133055_
                                                  _g133053133057_)))
                                             _slots133039_
                                             _$slots133043_))
                                       (_specializer-impl133068_
                                        (let* ((_specializer-body133066_
                                                (map (lambda (_g133061133063_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133061133063_
                                                          _self132998_
                                                          _$klass133012_
                                                          _method-calls130988_
                                                          _slot-refs130989_)))
                                                     _L132981_))
                                               (__tmp135053
                                                (let ((__tmp135054
                                                       (let ((__tmp135056
                                                              (let ((__tmp135057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135069
                                    (let ()
                                      (declare (not safe))
                                      (cons _L132644_ '())))
                                   (__tmp135058
                                    (let ((__tmp135059
                                           (let ((__tmp135060
                                                  (let ((__tmp135062
                                                         (let ((__tmp135063
                                                                (let ((__tmp135068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L132643_ '())))
                              (__tmp135064
                               (let ((__tmp135065
                                      (let ((__tmp135066
                                             (let ((__tmp135067
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132982_
                                                            _specializer-body133066_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135067))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135066
                                         _L132642_))))
                                 (declare (not safe))
                                 (cons __tmp135065 '()))))
                          (declare (not safe))
                          (cons __tmp135068 __tmp135064))))
                   (declare (not safe))
                   (cons __tmp135063 '())))
                (__tmp135061
                 (let () (declare (not safe)) (cons _L132641_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135062
                                                          __tmp135061))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135060))))
                                      (declare (not safe))
                                      (cons __tmp135059 '()))))
                               (declare (not safe))
                               (cons __tmp135069 __tmp135058))))
                        (declare (not safe))
                        (cons __tmp135057 '())))
                     (__tmp135055
                      (let () (declare (not safe)) (cons _L132640_ '()))))
                 (declare (not safe))
                 (cons __tmp135056 __tmp135055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135054))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135053
                                           _stx130896_)))
                                       (_specializer-impl133070_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130900_
                                           _$klass133012_
                                           _$method-table133014_
                                           _methods-bind133037_
                                           _slots-bind133060_
                                           _specializer-impl133068_))))
                                  (let ((__tmp135071
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130969_)))
                                        (__tmp135070
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133010_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135071
                                     '" => "
                                     __tmp135070))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130901_
                                     _L130969_
                                     _specializer-id133010_
                                     _specializer-impl133070_))))))
                        _tl132953132978_
                        _hd132954132976_)))
                   (let ()
                     (declare (not safe))
                     (_g132946132960_ _g132947132963_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132946132960_
                                                      _g132947132963_))))))
                                       (declare (not safe))
                                       (_g132945133073_ _L132642_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132642_))
                                         (let* ((_g133076133106_
                                                 (lambda (_g133077133103_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133077133103_))))
                                                (_g133075133648_
                                                 (lambda (_g133077133109_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133077133109_))
                                                       (let ((_e133083133111_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133077133109_))))
                 (let ((_hd133082133114_
                        (let () (declare (not safe)) (##car _e133083133111_)))
                       (_tl133081133116_
                        (let () (declare (not safe)) (##cdr _e133083133111_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133081133116_))
                       (let ((_e133086133119_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133081133116_))))
                         (let ((_hd133085133122_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133086133119_)))
                               (_tl133084133124_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133086133119_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133085133122_))
                               (let ((_e133089133127_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133085133122_))))
                                 (let ((_hd133088133130_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133089133127_)))
                                       (_tl133087133132_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133089133127_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133088133130_))
                                       (let ((_e133092133135_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133088133130_))))
                                         (let ((_hd133091133138_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133092133135_)))
                                               (_tl133090133140_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133092133135_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133091133138_))
                                               (let ((_e133095133143_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133091133138_))))
                                                 (let ((_hd133094133146_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133095133143_)))
                                                       (_tl133093133148_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133095133143_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133093133148_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133090133140_))
                                                           (let ((_e133098133151_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133090133140_))))
                     (let ((_hd133097133154_
                            (let ()
                              (declare (not safe))
                              (##car _e133098133151_)))
                           (_tl133096133156_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133098133151_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133096133156_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133087133132_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133084133124_))
                                   (let ((_e133101133159_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133084133124_))))
                                     (let ((_hd133100133162_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133101133159_)))
                                           (_tl133099133164_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133101133159_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133099133164_))
                                           ((lambda (_L133167_
                                                     _L133168_
                                                     _L133169_)
                                              (let* ((_g133192133206_
                                                      (lambda (_g133193133203_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133193133203_))))
                                                     (_g133191133247_
                                                      (lambda (_g133193133209_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133193133209_))
                                                            (let ((_e133198133211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133193133209_))))
                      (let ((_hd133197133214_
                             (let ()
                               (declare (not safe))
                               (##car _e133198133211_)))
                            (_tl133196133216_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133198133211_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133196133216_))
                            (let ((_e133201133219_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133196133216_))))
                              (let ((_hd133200133222_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133201133219_)))
                                    (_tl133199133224_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133201133219_))))
                                ((lambda (_L133227_ _L133228_)
                                   (let ((_self133241_
                                          (list-ref
                                           _L133228_
                                           _self-index132943_)))
                                     (for-each
                                      (lambda (_g133242133244_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133242133244_
                                           _self133241_
                                           _method-calls130988_
                                           _slot-refs130989_)))
                                      _L133227_)))
                                 _tl133199133224_
                                 _hd133200133222_)))
                            (let ()
                              (declare (not safe))
                              (_g133192133206_ _g133193133209_)))))
                    (let ()
                      (declare (not safe))
                      (_g133192133206_ _g133193133209_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133191133247_ _L133168_))
                                              (let* ((_g133250133269_
                                                      (lambda (_g133251133266_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133251133266_))))
                                                     (_g133249133374_
                                                      (lambda (_g133251133272_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133251133272_))
                                                            (let ((_e133255133274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133251133272_))))
                      (let ((_hd133254133277_
                             (let ()
                               (declare (not safe))
                               (##car _e133255133274_)))
                            (_tl133253133279_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133255133274_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133253133279_))
                            (let ((_g135002_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133253133279_
                                      '0))))
                              (begin
                                (let ((_g135003_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135002_)
                                             (##vector-length _g135002_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135003_ 2)))
                                      (error "Context expects 2 values"
                                             _g135003_)))
                                (let ((_target133256133282_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135002_ 0)))
                                      (_tl133258133284_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135002_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133258133284_))
                                      (letrec ((_loop133259133287_
                                                (lambda (_hd133257133290_
                                                         _clause133263133292_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133257133290_))
                                                      (let ((_e133260133295_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133257133290_))))
                (let ((_lp-hd133261133298_
                       (let () (declare (not safe)) (##car _e133260133295_)))
                      (_lp-tl133262133300_
                       (let () (declare (not safe)) (##cdr _e133260133295_))))
                  (let ((__tmp135005
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133261133298_ _clause133263133292_))))
                    (declare (not safe))
                    (_loop133259133287_ _lp-tl133262133300_ __tmp135005))))
              (let ((_clause133264133303_ (reverse _clause133263133292_)))
                ((lambda (_L133306_)
                   (for-each
                    (lambda (_clause133319_)
                      (let* ((_g133321133332_
                              (lambda (_g133322133329_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133322133329_))))
                             (_g133320133364_
                              (lambda (_g133322133335_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133322133335_))
                                    (let ((_e133327133337_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133322133335_))))
                                      (let ((_hd133326133340_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133327133337_)))
                                            (_tl133325133342_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133327133337_))))
                                        ((lambda (_L133345_ _L133346_)
                                           (let ((_self133358_
                                                  (list-ref
                                                   _L133346_
                                                   _self-index132943_)))
                                             (for-each
                                              (lambda (_g133359133361_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133359133361_
                                                   _self133358_
                                                   _method-calls130988_
                                                   _slot-refs130989_)))
                                              _L133345_)))
                                         _tl133325133342_
                                         _hd133326133340_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133321133332_ _g133322133335_))))))
                        (declare (not safe))
                        (_g133320133364_ _clause133319_)))
                    (let ((__tmp135004
                           (lambda (_g133366133369_ _g133367133371_)
                             (let ()
                               (declare (not safe))
                               (cons _g133366133369_ _g133367133371_)))))
                      (declare (not safe))
                      (foldr1 __tmp135004 '() _L133306_))))
                 _clause133264133303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133259133287_
                                           _target133256133282_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133250133269_ _g133251133272_))))))
                            (let ()
                              (declare (not safe))
                              (_g133250133269_ _g133251133272_)))))
                    (let ()
                      (declare (not safe))
                      (_g133250133269_ _g133251133272_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133249133374_ _L133167_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130992_))
                                                  _stx130896_
                                                  (let* ((_specializer-id133383_
                                                          (let* ((_id133377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135006
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130969_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135006 '"::specialize")))
                         (_specializer-id133380_
                          (let ((__tmp135007
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130896_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133377_ __tmp135007))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133380_))
                    _specializer-id133380_))
                 (_$klass133385_
                  (let ((__tmp135008 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135008)))
                 (_$method-table133387_
                  (let ((__tmp135009 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135009)))
                 (_methods133389_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130988_)))
                 (_$methods133393_
                  (map (lambda (_id133391_)
                         (let ((__tmp135010 (gensym _id133391_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135010)))
                       _methods133389_))
                 (_g135011_
                  (for-each
                   (lambda (_g133394133397_ _g133395133399_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130988_
                        _g133394133397_
                        _g133395133399_)))
                   _methods133389_
                   _$methods133393_))
                 (_methods-bind133410_
                  (map (lambda (_g133402133405_ _g133403133407_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130898_
                            _$klass133385_
                            _$method-table133387_
                            _g133402133405_
                            _g133403133407_)))
                       _methods133389_
                       _$methods133393_))
                 (_slots133412_
                  (let () (declare (not safe)) (hash-keys _slot-refs130989_)))
                 (_$slots133416_
                  (map (lambda (_id133414_)
                         (let ((__tmp135012 (gensym _id133414_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135012)))
                       _slots133412_))
                 (_g135013_
                  (for-each
                   (lambda (_g133417133420_ _g133418133422_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130989_
                        _g133417133420_
                        _g133418133422_)))
                   _slots133412_
                   _$slots133416_))
                 (_slots-bind133433_
                  (map (lambda (_g133425133428_ _g133426133430_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130899_
                            _$klass133385_
                            _g133425133428_
                            _g133426133430_)))
                       _slots133412_
                       _$slots133416_))
                 (_specializer-lambda-expr133506_
                  (let* ((_g133435133449_
                          (lambda (_g133436133446_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133436133446_))))
                         (_g133434133503_
                          (lambda (_g133436133452_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133436133452_))
                                (let ((_e133441133454_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133436133452_))))
                                  (let ((_hd133440133457_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133441133454_)))
                                        (_tl133439133459_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133441133454_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133439133459_))
                                        (let ((_e133444133462_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133439133459_))))
                                          (let ((_hd133443133465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133444133462_)))
                                                (_tl133442133467_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133444133462_))))
                                            ((lambda (_L133470_ _L133471_)
                                               (let* ((_self133494_
                                                       (list-ref
                                                        _L133471_
                                                        _self-index132943_))
                                                      (_body133500_
                                                       (map (lambda (_g133495133497_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133495133497_
                         _self133494_
                         _$klass133385_
                         _method-calls130988_
                         _slot-refs130989_)))
                    _L133470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135014
                                                        (let ((__tmp135015
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133471_ _body133500_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135015))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135014
                                                    _L133168_))))
                                             _tl133442133467_
                                             _hd133443133465_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133435133449_ _g133436133452_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133435133449_ _g133436133452_))))))
                    (declare (not safe))
                    (_g133434133503_ _L133168_)))
                 (_specializer-case-lambda-expr133641_
                  (let* ((_g133508133527_
                          (lambda (_g133509133524_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133509133524_))))
                         (_g133507133638_
                          (lambda (_g133509133530_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133509133530_))
                                (let ((_e133513133532_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133509133530_))))
                                  (let ((_hd133512133535_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133513133532_)))
                                        (_tl133511133537_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133513133532_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133511133537_))
                                        (let ((_g135016_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133511133537_
                                                  '0))))
                                          (begin
                                            (let ((_g135017_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135016_)
                                                         (##vector-length
                                                          _g135016_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135017_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135017_)))
                                            (let ((_target133514133540_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135016_
                                                      0)))
                                                  (_tl133516133542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135016_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133516133542_))
                                                  (letrec ((_loop133517133545_
                                                            (lambda (_hd133515133548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133521133550_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133515133548_))
                          (let ((_e133518133553_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133515133548_))))
                            (let ((_lp-hd133519133556_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133518133553_)))
                                  (_lp-tl133520133558_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133518133553_))))
                              (let ((__tmp135020
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133519133556_
                                             _clause133521133550_))))
                                (declare (not safe))
                                (_loop133517133545_
                                 _lp-tl133520133558_
                                 __tmp135020))))
                          (let ((_clause133522133561_
                                 (reverse _clause133521133550_)))
                            ((lambda (_L133564_)
                               (let* ((_clauses133636_
                                       (map (lambda (_clause133578_)
                                              (let* ((_g133580133591_
                                                      (lambda (_g133581133588_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133581133588_))))
                                                     (_g133579133626_
                                                      (lambda (_g133581133594_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133581133594_))
                                                            (let ((_e133586133596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133581133594_))))
                      (let ((_hd133585133599_
                             (let ()
                               (declare (not safe))
                               (##car _e133586133596_)))
                            (_tl133584133601_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133586133596_))))
                        ((lambda (_L133604_ _L133605_)
                           (let* ((_self133617_
                                   (list-ref _L133605_ _self-index132943_))
                                  (_body133623_
                                   (map (lambda (_g133618133620_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g133618133620_
                                             _self133617_
                                             _$klass133385_
                                             _method-calls130988_
                                             _slot-refs130989_)))
                                        _L133604_)))
                             (let ()
                               (declare (not safe))
                               (cons _L133605_ _body133623_))))
                         _tl133584133601_
                         _hd133585133599_)))
                    (let ()
                      (declare (not safe))
                      (_g133580133591_ _g133581133594_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133579133626_
                                                 _clause133578_)))
                                            (let ((__tmp135018
                                                   (lambda (_g133628133631_
                                                            _g133629133633_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g133628133631_
                                                             _g133629133633_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135018
                                                      '()
                                                      _L133564_))))
                                      (__tmp135019
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses133636_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135019
                                  _L133167_)))
                             _clause133522133561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133517133545_
                                                       _target133514133540_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133508133527_
                                                     _g133509133530_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133508133527_ _g133509133530_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133508133527_ _g133509133530_))))))
                    (declare (not safe))
                    (_g133507133638_ _L133167_)))
                 (_specializer-impl133643_
                  (let ((__tmp135021
                         (let ((__tmp135022
                                (let ((__tmp135024
                                       (let ((__tmp135025
                                              (let ((__tmp135042
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L132644_ '())))
                                                    (__tmp135026
                                                     (let ((__tmp135027
                                                            (let ((__tmp135028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135030
                                  (let ((__tmp135031
                                         (let ((__tmp135041
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132643_ '())))
                                               (__tmp135032
                                                (let ((__tmp135033
                                                       (let ((__tmp135034
                                                              (let ((__tmp135035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135037
                                    (let ((__tmp135038
                                           (let ((__tmp135040
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133169_ '())))
                                                 (__tmp135039
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133506_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135040 __tmp135039))))
                                      (declare (not safe))
                                      (cons __tmp135038 '())))
                                   (__tmp135036
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr133641_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135037 __tmp135036))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135035))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135034 _stx130896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135033 '()))))
                                           (declare (not safe))
                                           (cons __tmp135041 __tmp135032))))
                                    (declare (not safe))
                                    (cons __tmp135031 '())))
                                 (__tmp135029
                                  (let ()
                                    (declare (not safe))
                                    (cons _L132641_ '()))))
                             (declare (not safe))
                             (cons __tmp135030 __tmp135029))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135028))))
               (declare (not safe))
               (cons __tmp135027 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135042
                                                      __tmp135026))))
                                         (declare (not safe))
                                         (cons __tmp135025 '())))
                                      (__tmp135023
                                       (let ()
                                         (declare (not safe))
                                         (cons _L132640_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135024 __tmp135023))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135022))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135021 _stx130896_)))
                 (_specializer-impl133645_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130900_
                     _$klass133385_
                     _$method-table133387_
                     _methods-bind133410_
                     _slots-bind133433_
                     _specializer-impl133643_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135044
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130969_)))
                                                          (__tmp135043
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133383_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135044
                                                       '" => "
                                                       __tmp135043))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130901_
                                                       _L130969_
                                                       _specializer-id133383_
                                                       _specializer-impl133645_)))))
                                            _hd133100133162_
                                            _hd133097133154_
                                            _hd133094133146_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133076133106_
                                              _g133077133109_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133076133106_ _g133077133109_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133076133106_ _g133077133109_)))
                           (let ()
                             (declare (not safe))
                             (_g133076133106_ _g133077133109_)))))
                   (let ()
                     (declare (not safe))
                     (_g133076133106_ _g133077133109_)))
               (let ()
                 (declare (not safe))
                 (_g133076133106_ _g133077133109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133076133106_
                                                  _g133077133109_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133076133106_ _g133077133109_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133076133106_ _g133077133109_)))))
                       (let ()
                         (declare (not safe))
                         (_g133076133106_ _g133077133109_)))))
               (let ()
                 (declare (not safe))
                 (_g133076133106_ _g133077133109_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133075133648_ _L132642_))
                                         _stx130896_))))
                             _hd132739132862_
                             _kw-ref132737132883_
                             _hd132727132849_
                             _hd132718132825_
                             _hd132709132801_)
                            (let ()
                              (declare (not safe))
                              (_g132683132745_ _g132684132748_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132732132867_
                                                   _target132729132854_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132683132745_
                                                 _g132684132748_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132683132745_ _g132684132748_))))))
                            (let ()
                              (declare (not safe))
                              (_g132683132745_ _g132684132748_)))
                        (let ()
                          (declare (not safe))
                          (_g132683132745_ _g132684132748_)))
                    (let ()
                      (declare (not safe))
                      (_g132683132745_ _g132684132748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132683132745_
                                                       _g132684132748_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132683132745_
                                                   _g132684132748_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132683132745_
                                               _g132684132748_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132683132745_ _g132684132748_)))))
                            (let ()
                              (declare (not safe))
                              (_g132683132745_ _g132684132748_)))
                        (let ()
                          (declare (not safe))
                          (_g132683132745_ _g132684132748_)))))
                (let ()
                  (declare (not safe))
                  (_g132683132745_ _g132684132748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132683132745_
                                                       _g132684132748_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132683132745_
                                                   _g132684132748_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132683132745_ _g132684132748_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132683132745_ _g132684132748_)))
                            (let ()
                              (declare (not safe))
                              (_g132683132745_ _g132684132748_)))))
                    (let ()
                      (declare (not safe))
                      (_g132683132745_ _g132684132748_)))
                (let ()
                  (declare (not safe))
                  (_g132683132745_ _g132684132748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132683132745_
                                                       _g132684132748_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132683132745_
                                               _g132684132748_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132683132745_ _g132684132748_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132683132745_ _g132684132748_)))
                            (let ()
                              (declare (not safe))
                              (_g132683132745_ _g132684132748_)))))
                    (let ()
                      (declare (not safe))
                      (_g132683132745_ _g132684132748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132683132745_
                                                       _g132684132748_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132683132745_
                                               _g132684132748_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132683132745_ _g132684132748_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132683132745_ _g132684132748_)))))
                            (let ()
                              (declare (not safe))
                              (_g132683132745_ _g132684132748_))))))
                (declare (not safe))
                (_g132682133651_ _L132641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132517132635_
                                                    _hd132514132627_
                                                    _hd132511132619_
                                                    _hd132508132611_
                                                    _hd132490132563_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132470132523_
                                                      _g132471132526_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132470132523_
                                              _g132471132526_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132470132523_ _g132471132526_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132470132523_ _g132471132526_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132470132523_ _g132471132526_)))))
                       (let ()
                         (declare (not safe))
                         (_g132470132523_ _g132471132526_)))
                   (let ()
                     (declare (not safe))
                     (_g132470132523_ _g132471132526_)))
               (let ()
                 (declare (not safe))
                 (_g132470132523_ _g132471132526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132470132523_
                                                  _g132471132526_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132470132523_
                                              _g132471132526_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132470132523_ _g132471132526_)))))
                           (let ()
                             (declare (not safe))
                             (_g132470132523_ _g132471132526_)))))
                   (let ()
                     (declare (not safe))
                     (_g132470132523_ _g132471132526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132470132523_
                                                      _g132471132526_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132470132523_
                                                  _g132471132526_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132470132523_
                                              _g132471132526_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132470132523_ _g132471132526_)))))
                           (let ()
                             (declare (not safe))
                             (_g132470132523_ _g132471132526_)))
                       (let ()
                         (declare (not safe))
                         (_g132470132523_ _g132471132526_)))))
               (let ()
                 (declare (not safe))
                 (_g132470132523_ _g132471132526_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132470132523_
                                                  _g132471132526_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132470132523_ _g132471132526_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132470132523_ _g132471132526_)))
                           (let ()
                             (declare (not safe))
                             (_g132470132523_ _g132471132526_)))
                       (let ()
                         (declare (not safe))
                         (_g132470132523_ _g132471132526_)))))
               (let ()
                 (declare (not safe))
                 (_g132470132523_ _g132471132526_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132469133654_ _L130968_))
                                         _stx130896_))))))))
                  (___kont133834133835_ (lambda () _stx130896_)))
              (let ((___match133863133864_
                     (lambda (_e130910130936_
                              _hd130909130939_
                              _tl130908130941_
                              _e130913130944_
                              _hd130912130947_
                              _tl130911130949_
                              _e130916130952_
                              _hd130915130955_
                              _tl130914130957_
                              _e130919130960_
                              _hd130918130963_
                              _tl130917130965_)
                       (let ((_L130968_ _hd130918130963_)
                             (_L130969_ _hd130915130955_))
                         (if (let ((__tmp135133
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130969_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135133))
                             (___kont133832133833_ _L130968_ _L130969_)
                             (___kont133834133835_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133830133831_))
                    (let ((_e130910130936_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133830133831_))))
                      (let ((_tl130908130941_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130910130936_)))
                            (_hd130909130939_
                             (let ()
                               (declare (not safe))
                               (##car _e130910130936_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130908130941_))
                            (let ((_e130913130944_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130908130941_))))
                              (let ((_tl130911130949_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130913130944_)))
                                    (_hd130912130947_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130913130944_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130912130947_))
                                    (let ((_e130916130952_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130912130947_))))
                                      (let ((_tl130914130957_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130916130952_)))
                                            (_hd130915130955_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130916130952_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130914130957_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130911130949_))
                                                (let ((_e130919130960_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130911130949_))))
                                                  (let ((_tl130917130965_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130919130960_)))
                                                        (_hd130918130963_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130919130960_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130917130965_))
                                                        (___match133863133864_
                                                         _e130910130936_
                                                         _hd130909130939_
                                                         _tl130908130941_
                                                         _e130913130944_
                                                         _hd130912130947_
                                                         _tl130911130949_
                                                         _e130916130952_
                                                         _hd130915130955_
                                                         _tl130914130957_
                                                         _e130919130960_
                                                         _hd130918130963_
                                                         _tl130917130965_)
                                                        (___kont133834133835_))))
                                                (___kont133834133835_))
                                            (___kont133834133835_))))
                                    (___kont133834133835_))))
                            (___kont133834133835_))))
                    (___kont133834133835_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx129855_ _self129856_ _methods129857_ _slots129858_)
        (let* ((___stx133866133867_ _stx129855_)
               (_g129866130088_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133866133867_)))))
          (let ((___kont133868133869_
                 (lambda (_L130845_ _L130846_ _L130847_ _L130848_)
                   (let ((__tmp135134
                          (let () (declare (not safe)) (gx#stx-e _L130846_))))
                     (declare (not safe))
                     (hash-put! _methods129857_ __tmp135134 '#t))
                   (for-each
                    (lambda (_g130881130883_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130881130883_
                         _self129856_
                         _methods129857_
                         _slots129858_)))
                    (let ((__tmp135135
                           (lambda (_g130885130888_ _g130886130890_)
                             (let ()
                               (declare (not safe))
                               (cons _g130885130888_ _g130886130890_)))))
                      (declare (not safe))
                      (foldr1 __tmp135135 '() _L130845_)))))
                (___kont133872133873_
                 (lambda (_L130680_ _L130681_ _L130682_ _L130683_ _L130684_)
                   (let ((__tmp135136
                          (let () (declare (not safe)) (gx#stx-e _L130681_))))
                     (declare (not safe))
                     (hash-put! _methods129857_ __tmp135136 '#t))
                   (for-each
                    (lambda (_g130724130726_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130724130726_
                         _self129856_
                         _methods129857_
                         _slots129858_)))
                    (let ((__tmp135137
                           (lambda (_g130728130731_ _g130729130733_)
                             (let ()
                               (declare (not safe))
                               (cons _g130728130731_ _g130729130733_)))))
                      (declare (not safe))
                      (foldr1 __tmp135137 '() _L130680_)))))
                (___kont133876133877_
                 (lambda (_L130513_ _L130514_ _L130515_)
                   (let ((__tmp135138
                          (let () (declare (not safe)) (gx#stx-e _L130513_))))
                     (declare (not safe))
                     (hash-put! _slots129858_ __tmp135138 '#t))))
                (___kont133878133879_
                 (lambda (_L130390_ _L130391_ _L130392_ _L130393_)
                   (let ((__tmp135139
                          (let () (declare (not safe)) (gx#stx-e _L130391_))))
                     (declare (not safe))
                     (hash-put! _slots129858_ __tmp135139 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130390_
                      _self129856_
                      _methods129857_
                      _slots129858_))))
                (___kont133880133881_
                 (lambda (_L130264_ _L130265_)
                   (let* ((_accessor130287_
                           (let ((__tmp135140
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130265_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135140)))
                          (_klass130289_
                           (let ((__tmp135141
                                  (##structure-ref
                                   _accessor130287_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129855_
                              __tmp135141)))
                          (_slot130291_
                           (##structure-ref
                            _accessor130287_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135143
                                     (##structure-ref
                                      _accessor130287_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135143))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130289_
                                     _slot130291_))
                                  (##structure-ref
                                   _klass130289_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135142
                                (##structure-ref
                                 _accessor130287_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots129858_ __tmp135142 '#t))))))
                (___kont133882133883_
                 (lambda (_L130164_ _L130165_ _L130166_)
                   (let* ((_mutator130193_
                           (let ((__tmp135144
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130166_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135144)))
                          (_klass130195_
                           (let ((__tmp135145
                                  (##structure-ref
                                   _mutator130193_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129855_
                              __tmp135145)))
                          (_slot130197_
                           (##structure-ref
                            _mutator130193_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135146
                                     (##structure-ref
                                      _mutator130193_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135146))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130195_
                                     _slot130197_))
                                  (##structure-ref
                                   _klass130195_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots129858_ _slot130197_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130164_
                        _self129856_
                        _methods129857_
                        _slots129858_)))))
                (___kont133884133885_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx129855_
                      _self129856_
                      _methods129857_
                      _slots129858_)))))
            (let* ((___match134365134366_
                    (lambda (_e130062130100_
                             _hd130061130103_
                             _tl130060130105_
                             _e130065130108_
                             _hd130064130111_
                             _tl130063130113_
                             _e130068130116_
                             _hd130067130119_
                             _tl130066130121_
                             _e130071130124_
                             _hd130070130127_
                             _tl130069130129_
                             _e130074130132_
                             _hd130073130135_
                             _tl130072130137_
                             _e130077130140_
                             _hd130076130143_
                             _tl130075130145_
                             _e130080130148_
                             _hd130079130151_
                             _tl130078130153_
                             _e130083130156_
                             _hd130082130159_
                             _tl130081130161_)
                      (let ((_L130164_ _hd130082130159_)
                            (_L130165_ _hd130079130151_)
                            (_L130166_ _hd130070130127_))
                        (if (and (let ((__tmp135147
                                        (let ((__tmp135148
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130166_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135148))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135147
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130165_
                                    _self129856_)))
                            (___kont133882133883_
                             _L130164_
                             _L130165_
                             _L130166_)
                            (___kont133884133885_)))))
                   (___match134363134364_
                    (lambda (_e130062130100_
                             _hd130061130103_
                             _tl130060130105_
                             _e130065130108_
                             _hd130064130111_
                             _tl130063130113_
                             _e130068130116_
                             _hd130067130119_
                             _tl130066130121_
                             _e130071130124_
                             _hd130070130127_
                             _tl130069130129_
                             _e130074130132_
                             _hd130073130135_
                             _tl130072130137_
                             _e130077130140_
                             _hd130076130143_
                             _tl130075130145_
                             _e130080130148_
                             _hd130079130151_
                             _tl130078130153_
                             _e130083130156_
                             _hd130082130159_
                             _tl130081130161_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130081130161_))
                          (___match134365134366_
                           _e130062130100_
                           _hd130061130103_
                           _tl130060130105_
                           _e130065130108_
                           _hd130064130111_
                           _tl130063130113_
                           _e130068130116_
                           _hd130067130119_
                           _tl130066130121_
                           _e130071130124_
                           _hd130070130127_
                           _tl130069130129_
                           _e130074130132_
                           _hd130073130135_
                           _tl130072130137_
                           _e130077130140_
                           _hd130076130143_
                           _tl130075130145_
                           _e130080130148_
                           _hd130079130151_
                           _tl130078130153_
                           _e130083130156_
                           _hd130082130159_
                           _tl130081130161_)
                          (___kont133884133885_))))
                   (___match134357134358_
                    (lambda (_e130062130100_
                             _hd130061130103_
                             _tl130060130105_
                             _e130065130108_
                             _hd130064130111_
                             _tl130063130113_
                             _e130068130116_
                             _hd130067130119_
                             _tl130066130121_
                             _e130071130124_
                             _hd130070130127_
                             _tl130069130129_
                             _e130074130132_
                             _hd130073130135_
                             _tl130072130137_
                             _e130077130140_
                             _hd130076130143_
                             _tl130075130145_
                             _e130080130148_
                             _hd130079130151_
                             _tl130078130153_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130072130137_))
                          (let ((_e130083130156_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130072130137_))))
                            (let ((_tl130081130161_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130083130156_)))
                                  (_hd130082130159_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130083130156_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130081130161_))
                                  (___match134365134366_
                                   _e130062130100_
                                   _hd130061130103_
                                   _tl130060130105_
                                   _e130065130108_
                                   _hd130064130111_
                                   _tl130063130113_
                                   _e130068130116_
                                   _hd130067130119_
                                   _tl130066130121_
                                   _e130071130124_
                                   _hd130070130127_
                                   _tl130069130129_
                                   _e130074130132_
                                   _hd130073130135_
                                   _tl130072130137_
                                   _e130077130140_
                                   _hd130076130143_
                                   _tl130075130145_
                                   _e130080130148_
                                   _hd130079130151_
                                   _tl130078130153_
                                   _e130083130156_
                                   _hd130082130159_
                                   _tl130081130161_)
                                  (___kont133884133885_))))
                          (___kont133884133885_))))
                   (___match134303134304_
                    (lambda (_e130038130208_
                             _hd130037130211_
                             _tl130036130213_
                             _e130041130216_
                             _hd130040130219_
                             _tl130039130221_
                             _e130044130224_
                             _hd130043130227_
                             _tl130042130229_
                             _e130047130232_
                             _hd130046130235_
                             _tl130045130237_
                             _e130050130240_
                             _hd130049130243_
                             _tl130048130245_
                             _e130053130248_
                             _hd130052130251_
                             _tl130051130253_
                             _e130056130256_
                             _hd130055130259_
                             _tl130054130261_)
                      (let ((_L130264_ _hd130055130259_)
                            (_L130265_ _hd130046130235_))
                        (if (and (let ((__tmp135149
                                        (let ((__tmp135150
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130265_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135150))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135149
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130264_
                                    _self129856_)))
                            (___kont133880133881_ _L130264_ _L130265_)
                            (___kont133884133885_)))))
                   (___match134301134302_
                    (lambda (_e130038130208_
                             _hd130037130211_
                             _tl130036130213_
                             _e130041130216_
                             _hd130040130219_
                             _tl130039130221_
                             _e130044130224_
                             _hd130043130227_
                             _tl130042130229_
                             _e130047130232_
                             _hd130046130235_
                             _tl130045130237_
                             _e130050130240_
                             _hd130049130243_
                             _tl130048130245_
                             _e130053130248_
                             _hd130052130251_
                             _tl130051130253_
                             _e130056130256_
                             _hd130055130259_
                             _tl130054130261_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130048130245_))
                          (___match134303134304_
                           _e130038130208_
                           _hd130037130211_
                           _tl130036130213_
                           _e130041130216_
                           _hd130040130219_
                           _tl130039130221_
                           _e130044130224_
                           _hd130043130227_
                           _tl130042130229_
                           _e130047130232_
                           _hd130046130235_
                           _tl130045130237_
                           _e130050130240_
                           _hd130049130243_
                           _tl130048130245_
                           _e130053130248_
                           _hd130052130251_
                           _tl130051130253_
                           _e130056130256_
                           _hd130055130259_
                           _tl130054130261_)
                          (___match134357134358_
                           _e130038130208_
                           _hd130037130211_
                           _tl130036130213_
                           _e130041130216_
                           _hd130040130219_
                           _tl130039130221_
                           _e130044130224_
                           _hd130043130227_
                           _tl130042130229_
                           _e130047130232_
                           _hd130046130235_
                           _tl130045130237_
                           _e130050130240_
                           _hd130049130243_
                           _tl130048130245_
                           _e130053130248_
                           _hd130052130251_
                           _tl130051130253_
                           _e130056130256_
                           _hd130055130259_
                           _tl130054130261_))))
                   (___match134247134248_
                    (lambda (_e130003130302_
                             _hd130002130305_
                             _tl130001130307_
                             _e130006130310_
                             _hd130005130313_
                             _tl130004130315_
                             _e130009130318_
                             _hd130008130321_
                             _tl130007130323_
                             _e130012130326_
                             _hd130011130329_
                             _tl130010130331_
                             _e130015130334_
                             _hd130014130337_
                             _tl130013130339_
                             _e130018130342_
                             _hd130017130345_
                             _tl130016130347_
                             _e130021130350_
                             _hd130020130353_
                             _tl130019130355_
                             _e130024130358_
                             _hd130023130361_
                             _tl130022130363_
                             _e130027130366_
                             _hd130026130369_
                             _tl130025130371_
                             _e130030130374_
                             _hd130029130377_
                             _tl130028130379_
                             _e130033130382_
                             _hd130032130385_
                             _tl130031130387_)
                      (let ((_L130390_ _hd130032130385_)
                            (_L130391_ _hd130029130377_)
                            (_L130392_ _hd130020130353_)
                            (_L130393_ _hd130011130329_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130393_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130393_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130392_
                                    _self129856_)))
                            (___kont133878133879_
                             _L130390_
                             _L130391_
                             _L130392_
                             _L130393_)
                            (___kont133884133885_)))))
                   (___match134239134240_
                    (lambda (_e130003130302_
                             _hd130002130305_
                             _tl130001130307_
                             _e130006130310_
                             _hd130005130313_
                             _tl130004130315_
                             _e130009130318_
                             _hd130008130321_
                             _tl130007130323_
                             _e130012130326_
                             _hd130011130329_
                             _tl130010130331_
                             _e130015130334_
                             _hd130014130337_
                             _tl130013130339_
                             _e130018130342_
                             _hd130017130345_
                             _tl130016130347_
                             _e130021130350_
                             _hd130020130353_
                             _tl130019130355_
                             _e130024130358_
                             _hd130023130361_
                             _tl130022130363_
                             _e130027130366_
                             _hd130026130369_
                             _tl130025130371_
                             _e130030130374_
                             _hd130029130377_
                             _tl130028130379_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130022130363_))
                          (let ((_e130033130382_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130022130363_))))
                            (let ((_tl130031130387_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130033130382_)))
                                  (_hd130032130385_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130033130382_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130031130387_))
                                  (___match134247134248_
                                   _e130003130302_
                                   _hd130002130305_
                                   _tl130001130307_
                                   _e130006130310_
                                   _hd130005130313_
                                   _tl130004130315_
                                   _e130009130318_
                                   _hd130008130321_
                                   _tl130007130323_
                                   _e130012130326_
                                   _hd130011130329_
                                   _tl130010130331_
                                   _e130015130334_
                                   _hd130014130337_
                                   _tl130013130339_
                                   _e130018130342_
                                   _hd130017130345_
                                   _tl130016130347_
                                   _e130021130350_
                                   _hd130020130353_
                                   _tl130019130355_
                                   _e130024130358_
                                   _hd130023130361_
                                   _tl130022130363_
                                   _e130027130366_
                                   _hd130026130369_
                                   _tl130025130371_
                                   _e130030130374_
                                   _hd130029130377_
                                   _tl130028130379_
                                   _e130033130382_
                                   _hd130032130385_
                                   _tl130031130387_)
                                  (___kont133884133885_))))
                          (___match134363134364_
                           _e130003130302_
                           _hd130002130305_
                           _tl130001130307_
                           _e130006130310_
                           _hd130005130313_
                           _tl130004130315_
                           _e130009130318_
                           _hd130008130321_
                           _tl130007130323_
                           _e130012130326_
                           _hd130011130329_
                           _tl130010130331_
                           _e130015130334_
                           _hd130014130337_
                           _tl130013130339_
                           _e130018130342_
                           _hd130017130345_
                           _tl130016130347_
                           _e130021130350_
                           _hd130020130353_
                           _tl130019130355_
                           _e130024130358_
                           _hd130023130361_
                           _tl130022130363_))))
                   (___match134161134162_
                    (lambda (_e129969130433_
                             _hd129968130436_
                             _tl129967130438_
                             _e129972130441_
                             _hd129971130444_
                             _tl129970130446_
                             _e129975130449_
                             _hd129974130452_
                             _tl129973130454_
                             _e129978130457_
                             _hd129977130460_
                             _tl129976130462_
                             _e129981130465_
                             _hd129980130468_
                             _tl129979130470_
                             _e129984130473_
                             _hd129983130476_
                             _tl129982130478_
                             _e129987130481_
                             _hd129986130484_
                             _tl129985130486_
                             _e129990130489_
                             _hd129989130492_
                             _tl129988130494_
                             _e129993130497_
                             _hd129992130500_
                             _tl129991130502_
                             _e129996130505_
                             _hd129995130508_
                             _tl129994130510_)
                      (let ((_L130513_ _hd129995130508_)
                            (_L130514_ _hd129986130484_)
                            (_L130515_ _hd129977130460_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130515_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130515_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130514_
                                    _self129856_)))
                            (___kont133876133877_
                             _L130513_
                             _L130514_
                             _L130515_)
                            (___match134365134366_
                             _e129969130433_
                             _hd129968130436_
                             _tl129967130438_
                             _e129972130441_
                             _hd129971130444_
                             _tl129970130446_
                             _e129975130449_
                             _hd129974130452_
                             _tl129973130454_
                             _e129978130457_
                             _hd129977130460_
                             _tl129976130462_
                             _e129981130465_
                             _hd129980130468_
                             _tl129979130470_
                             _e129984130473_
                             _hd129983130476_
                             _tl129982130478_
                             _e129987130481_
                             _hd129986130484_
                             _tl129985130486_
                             _e129990130489_
                             _hd129989130492_
                             _tl129988130494_)))))
                   (___match134159134160_
                    (lambda (_e129969130433_
                             _hd129968130436_
                             _tl129967130438_
                             _e129972130441_
                             _hd129971130444_
                             _tl129970130446_
                             _e129975130449_
                             _hd129974130452_
                             _tl129973130454_
                             _e129978130457_
                             _hd129977130460_
                             _tl129976130462_
                             _e129981130465_
                             _hd129980130468_
                             _tl129979130470_
                             _e129984130473_
                             _hd129983130476_
                             _tl129982130478_
                             _e129987130481_
                             _hd129986130484_
                             _tl129985130486_
                             _e129990130489_
                             _hd129989130492_
                             _tl129988130494_
                             _e129993130497_
                             _hd129992130500_
                             _tl129991130502_
                             _e129996130505_
                             _hd129995130508_
                             _tl129994130510_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129988130494_))
                          (___match134161134162_
                           _e129969130433_
                           _hd129968130436_
                           _tl129967130438_
                           _e129972130441_
                           _hd129971130444_
                           _tl129970130446_
                           _e129975130449_
                           _hd129974130452_
                           _tl129973130454_
                           _e129978130457_
                           _hd129977130460_
                           _tl129976130462_
                           _e129981130465_
                           _hd129980130468_
                           _tl129979130470_
                           _e129984130473_
                           _hd129983130476_
                           _tl129982130478_
                           _e129987130481_
                           _hd129986130484_
                           _tl129985130486_
                           _e129990130489_
                           _hd129989130492_
                           _tl129988130494_
                           _e129993130497_
                           _hd129992130500_
                           _tl129991130502_
                           _e129996130505_
                           _hd129995130508_
                           _tl129994130510_)
                          (___match134239134240_
                           _e129969130433_
                           _hd129968130436_
                           _tl129967130438_
                           _e129972130441_
                           _hd129971130444_
                           _tl129970130446_
                           _e129975130449_
                           _hd129974130452_
                           _tl129973130454_
                           _e129978130457_
                           _hd129977130460_
                           _tl129976130462_
                           _e129981130465_
                           _hd129980130468_
                           _tl129979130470_
                           _e129984130473_
                           _hd129983130476_
                           _tl129982130478_
                           _e129987130481_
                           _hd129986130484_
                           _tl129985130486_
                           _e129990130489_
                           _hd129989130492_
                           _tl129988130494_
                           _e129993130497_
                           _hd129992130500_
                           _tl129991130502_
                           _e129996130505_
                           _hd129995130508_
                           _tl129994130510_))))
                   (___match134149134150_
                    (lambda (_e129969130433_
                             _hd129968130436_
                             _tl129967130438_
                             _e129972130441_
                             _hd129971130444_
                             _tl129970130446_
                             _e129975130449_
                             _hd129974130452_
                             _tl129973130454_
                             _e129978130457_
                             _hd129977130460_
                             _tl129976130462_
                             _e129981130465_
                             _hd129980130468_
                             _tl129979130470_
                             _e129984130473_
                             _hd129983130476_
                             _tl129982130478_
                             _e129987130481_
                             _hd129986130484_
                             _tl129985130486_
                             _e129990130489_
                             _hd129989130492_
                             _tl129988130494_
                             _e129993130497_
                             _hd129992130500_
                             _tl129991130502_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129992130500_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129991130502_))
                              (let ((_e129996130505_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129991130502_))))
                                (let ((_tl129994130510_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129996130505_)))
                                      (_hd129995130508_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129996130505_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129994130510_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129988130494_))
                                          (___match134161134162_
                                           _e129969130433_
                                           _hd129968130436_
                                           _tl129967130438_
                                           _e129972130441_
                                           _hd129971130444_
                                           _tl129970130446_
                                           _e129975130449_
                                           _hd129974130452_
                                           _tl129973130454_
                                           _e129978130457_
                                           _hd129977130460_
                                           _tl129976130462_
                                           _e129981130465_
                                           _hd129980130468_
                                           _tl129979130470_
                                           _e129984130473_
                                           _hd129983130476_
                                           _tl129982130478_
                                           _e129987130481_
                                           _hd129986130484_
                                           _tl129985130486_
                                           _e129990130489_
                                           _hd129989130492_
                                           _tl129988130494_
                                           _e129993130497_
                                           _hd129992130500_
                                           _tl129991130502_
                                           _e129996130505_
                                           _hd129995130508_
                                           _tl129994130510_)
                                          (___match134239134240_
                                           _e129969130433_
                                           _hd129968130436_
                                           _tl129967130438_
                                           _e129972130441_
                                           _hd129971130444_
                                           _tl129970130446_
                                           _e129975130449_
                                           _hd129974130452_
                                           _tl129973130454_
                                           _e129978130457_
                                           _hd129977130460_
                                           _tl129976130462_
                                           _e129981130465_
                                           _hd129980130468_
                                           _tl129979130470_
                                           _e129984130473_
                                           _hd129983130476_
                                           _tl129982130478_
                                           _e129987130481_
                                           _hd129986130484_
                                           _tl129985130486_
                                           _e129990130489_
                                           _hd129989130492_
                                           _tl129988130494_
                                           _e129993130497_
                                           _hd129992130500_
                                           _tl129991130502_
                                           _e129996130505_
                                           _hd129995130508_
                                           _tl129994130510_))
                                      (___match134363134364_
                                       _e129969130433_
                                       _hd129968130436_
                                       _tl129967130438_
                                       _e129972130441_
                                       _hd129971130444_
                                       _tl129970130446_
                                       _e129975130449_
                                       _hd129974130452_
                                       _tl129973130454_
                                       _e129978130457_
                                       _hd129977130460_
                                       _tl129976130462_
                                       _e129981130465_
                                       _hd129980130468_
                                       _tl129979130470_
                                       _e129984130473_
                                       _hd129983130476_
                                       _tl129982130478_
                                       _e129987130481_
                                       _hd129986130484_
                                       _tl129985130486_
                                       _e129990130489_
                                       _hd129989130492_
                                       _tl129988130494_))))
                              (___match134363134364_
                               _e129969130433_
                               _hd129968130436_
                               _tl129967130438_
                               _e129972130441_
                               _hd129971130444_
                               _tl129970130446_
                               _e129975130449_
                               _hd129974130452_
                               _tl129973130454_
                               _e129978130457_
                               _hd129977130460_
                               _tl129976130462_
                               _e129981130465_
                               _hd129980130468_
                               _tl129979130470_
                               _e129984130473_
                               _hd129983130476_
                               _tl129982130478_
                               _e129987130481_
                               _hd129986130484_
                               _tl129985130486_
                               _e129990130489_
                               _hd129989130492_
                               _tl129988130494_))
                          (___match134363134364_
                           _e129969130433_
                           _hd129968130436_
                           _tl129967130438_
                           _e129972130441_
                           _hd129971130444_
                           _tl129970130446_
                           _e129975130449_
                           _hd129974130452_
                           _tl129973130454_
                           _e129978130457_
                           _hd129977130460_
                           _tl129976130462_
                           _e129981130465_
                           _hd129980130468_
                           _tl129979130470_
                           _e129984130473_
                           _hd129983130476_
                           _tl129982130478_
                           _e129987130481_
                           _hd129986130484_
                           _tl129985130486_
                           _e129990130489_
                           _hd129989130492_
                           _tl129988130494_))))
                   (___match134081134082_
                    (lambda (_e129918130552_
                             _hd129917130555_
                             _tl129916130557_
                             _e129921130560_
                             _hd129920130563_
                             _tl129919130565_
                             _e129924130568_
                             _hd129923130571_
                             _tl129922130573_
                             _e129927130576_
                             _hd129926130579_
                             _tl129925130581_
                             _e129930130584_
                             _hd129929130587_
                             _tl129928130589_
                             _e129933130592_
                             _hd129932130595_
                             _tl129931130597_
                             _e129936130600_
                             _hd129935130603_
                             _tl129934130605_
                             _e129939130608_
                             _hd129938130611_
                             _tl129937130613_
                             _e129942130616_
                             _hd129941130619_
                             _tl129940130621_
                             _e129945130624_
                             _hd129944130627_
                             _tl129943130629_
                             _e129948130632_
                             _hd129947130635_
                             _tl129946130637_
                             _e129951130640_
                             _hd129950130643_
                             _tl129949130645_
                             _e129954130648_
                             _hd129953130651_
                             _tl129952130653_
                             ___splice133874133875_
                             _target129955130656_
                             _tl129957130658_)
                      (letrec ((_loop129958130661_
                                (lambda (_hd129956130664_ _args129962130666_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129956130664_))
                                      (let ((_e129959130669_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129956130664_))))
                                        (let ((_lp-tl129961130674_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129959130669_)))
                                              (_lp-hd129960130672_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129959130669_))))
                                          (let ((__tmp135151
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129960130672_
                                                         _args129962130666_))))
                                            (declare (not safe))
                                            (_loop129958130661_
                                             _lp-tl129961130674_
                                             __tmp135151))))
                                      (let ((_args129963130677_
                                             (reverse _args129962130666_)))
                                        (let ((_L130680_ _args129963130677_)
                                              (_L130681_ _hd129953130651_)
                                              (_L130682_ _hd129944130627_)
                                              (_L130683_ _hd129935130603_)
                                              (_L130684_ _hd129926130579_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130684_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130683_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130682_
                                                      _self129856_)))
                                              (___kont133872133873_
                                               _L130680_
                                               _L130681_
                                               _L130682_
                                               _L130683_
                                               _L130684_)
                                              (___kont133884133885_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129958130661_ _target129955130656_ '())))))
                   (___match134039134040_
                    (lambda (_e129918130552_
                             _hd129917130555_
                             _tl129916130557_
                             _e129921130560_
                             _hd129920130563_
                             _tl129919130565_
                             _e129924130568_
                             _hd129923130571_
                             _tl129922130573_
                             _e129927130576_
                             _hd129926130579_
                             _tl129925130581_
                             _e129930130584_
                             _hd129929130587_
                             _tl129928130589_
                             _e129933130592_
                             _hd129932130595_
                             _tl129931130597_
                             _e129936130600_
                             _hd129935130603_
                             _tl129934130605_
                             _e129939130608_
                             _hd129938130611_
                             _tl129937130613_
                             _e129942130616_
                             _hd129941130619_
                             _tl129940130621_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129941130619_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129940130621_))
                              (let ((_e129945130624_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129940130621_))))
                                (let ((_tl129943130629_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129945130624_)))
                                      (_hd129944130627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129945130624_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129943130629_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129937130613_))
                                          (let ((_e129948130632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129937130613_))))
                                            (let ((_tl129946130637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129948130632_)))
                                                  (_hd129947130635_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129948130632_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129947130635_))
                                                  (let ((_e129951130640_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129947130635_))))
                                                    (let ((_tl129949130645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129951130640_)))
                                                          (_hd129950130643_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129951130640_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129950130643_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129950130643_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129949130645_))
                          (let ((_e129954130648_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129949130645_))))
                            (let ((_tl129952130653_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129954130648_)))
                                  (_hd129953130651_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129954130648_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129952130653_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129946130637_))
                                      (let ((___splice133874133875_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129946130637_
                                                '0))))
                                        (let ((_tl129957130658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133874133875_
                                                  '1)))
                                              (_target129955130656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133874133875_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129957130658_))
                                              (___match134081134082_
                                               _e129918130552_
                                               _hd129917130555_
                                               _tl129916130557_
                                               _e129921130560_
                                               _hd129920130563_
                                               _tl129919130565_
                                               _e129924130568_
                                               _hd129923130571_
                                               _tl129922130573_
                                               _e129927130576_
                                               _hd129926130579_
                                               _tl129925130581_
                                               _e129930130584_
                                               _hd129929130587_
                                               _tl129928130589_
                                               _e129933130592_
                                               _hd129932130595_
                                               _tl129931130597_
                                               _e129936130600_
                                               _hd129935130603_
                                               _tl129934130605_
                                               _e129939130608_
                                               _hd129938130611_
                                               _tl129937130613_
                                               _e129942130616_
                                               _hd129941130619_
                                               _tl129940130621_
                                               _e129945130624_
                                               _hd129944130627_
                                               _tl129943130629_
                                               _e129948130632_
                                               _hd129947130635_
                                               _tl129946130637_
                                               _e129951130640_
                                               _hd129950130643_
                                               _tl129949130645_
                                               _e129954130648_
                                               _hd129953130651_
                                               _tl129952130653_
                                               ___splice133874133875_
                                               _target129955130656_
                                               _tl129957130658_)
                                              (___kont133884133885_))))
                                      (___kont133884133885_))
                                  (___kont133884133885_))))
                          (___kont133884133885_))
                      (___kont133884133885_))
                  (___kont133884133885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133884133885_))))
                                          (___match134363134364_
                                           _e129918130552_
                                           _hd129917130555_
                                           _tl129916130557_
                                           _e129921130560_
                                           _hd129920130563_
                                           _tl129919130565_
                                           _e129924130568_
                                           _hd129923130571_
                                           _tl129922130573_
                                           _e129927130576_
                                           _hd129926130579_
                                           _tl129925130581_
                                           _e129930130584_
                                           _hd129929130587_
                                           _tl129928130589_
                                           _e129933130592_
                                           _hd129932130595_
                                           _tl129931130597_
                                           _e129936130600_
                                           _hd129935130603_
                                           _tl129934130605_
                                           _e129939130608_
                                           _hd129938130611_
                                           _tl129937130613_))
                                      (___match134363134364_
                                       _e129918130552_
                                       _hd129917130555_
                                       _tl129916130557_
                                       _e129921130560_
                                       _hd129920130563_
                                       _tl129919130565_
                                       _e129924130568_
                                       _hd129923130571_
                                       _tl129922130573_
                                       _e129927130576_
                                       _hd129926130579_
                                       _tl129925130581_
                                       _e129930130584_
                                       _hd129929130587_
                                       _tl129928130589_
                                       _e129933130592_
                                       _hd129932130595_
                                       _tl129931130597_
                                       _e129936130600_
                                       _hd129935130603_
                                       _tl129934130605_
                                       _e129939130608_
                                       _hd129938130611_
                                       _tl129937130613_))))
                              (___match134363134364_
                               _e129918130552_
                               _hd129917130555_
                               _tl129916130557_
                               _e129921130560_
                               _hd129920130563_
                               _tl129919130565_
                               _e129924130568_
                               _hd129923130571_
                               _tl129922130573_
                               _e129927130576_
                               _hd129926130579_
                               _tl129925130581_
                               _e129930130584_
                               _hd129929130587_
                               _tl129928130589_
                               _e129933130592_
                               _hd129932130595_
                               _tl129931130597_
                               _e129936130600_
                               _hd129935130603_
                               _tl129934130605_
                               _e129939130608_
                               _hd129938130611_
                               _tl129937130613_))
                          (___match134149134150_
                           _e129918130552_
                           _hd129917130555_
                           _tl129916130557_
                           _e129921130560_
                           _hd129920130563_
                           _tl129919130565_
                           _e129924130568_
                           _hd129923130571_
                           _tl129922130573_
                           _e129927130576_
                           _hd129926130579_
                           _tl129925130581_
                           _e129930130584_
                           _hd129929130587_
                           _tl129928130589_
                           _e129933130592_
                           _hd129932130595_
                           _tl129931130597_
                           _e129936130600_
                           _hd129935130603_
                           _tl129934130605_
                           _e129939130608_
                           _hd129938130611_
                           _tl129937130613_
                           _e129942130616_
                           _hd129941130619_
                           _tl129940130621_))))
                   (___match133971133972_
                    (lambda (_e129874130741_
                             _hd129873130744_
                             _tl129872130746_
                             _e129877130749_
                             _hd129876130752_
                             _tl129875130754_
                             _e129880130757_
                             _hd129879130760_
                             _tl129878130762_
                             _e129883130765_
                             _hd129882130768_
                             _tl129881130770_
                             _e129886130773_
                             _hd129885130776_
                             _tl129884130778_
                             _e129889130781_
                             _hd129888130784_
                             _tl129887130786_
                             _e129892130789_
                             _hd129891130792_
                             _tl129890130794_
                             _e129895130797_
                             _hd129894130800_
                             _tl129893130802_
                             _e129898130805_
                             _hd129897130808_
                             _tl129896130810_
                             _e129901130813_
                             _hd129900130816_
                             _tl129899130818_
                             ___splice133870133871_
                             _target129902130821_
                             _tl129904130823_)
                      (letrec ((_loop129905130826_
                                (lambda (_hd129903130829_ _args129909130831_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129903130829_))
                                      (let ((_e129906130834_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129903130829_))))
                                        (let ((_lp-tl129908130839_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129906130834_)))
                                              (_lp-hd129907130837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129906130834_))))
                                          (let ((__tmp135152
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129907130837_
                                                         _args129909130831_))))
                                            (declare (not safe))
                                            (_loop129905130826_
                                             _lp-tl129908130839_
                                             __tmp135152))))
                                      (let ((_args129910130842_
                                             (reverse _args129909130831_)))
                                        (let ((_L130845_ _args129910130842_)
                                              (_L130846_ _hd129900130816_)
                                              (_L130847_ _hd129891130792_)
                                              (_L130848_ _hd129882130768_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130848_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130847_
                                                      _self129856_)))
                                              (___kont133868133869_
                                               _L130845_
                                               _L130846_
                                               _L130847_
                                               _L130848_)
                                              (___match134159134160_
                                               _e129874130741_
                                               _hd129873130744_
                                               _tl129872130746_
                                               _e129877130749_
                                               _hd129876130752_
                                               _tl129875130754_
                                               _e129880130757_
                                               _hd129879130760_
                                               _tl129878130762_
                                               _e129883130765_
                                               _hd129882130768_
                                               _tl129881130770_
                                               _e129886130773_
                                               _hd129885130776_
                                               _tl129884130778_
                                               _e129889130781_
                                               _hd129888130784_
                                               _tl129887130786_
                                               _e129892130789_
                                               _hd129891130792_
                                               _tl129890130794_
                                               _e129895130797_
                                               _hd129894130800_
                                               _tl129893130802_
                                               _e129898130805_
                                               _hd129897130808_
                                               _tl129896130810_
                                               _e129901130813_
                                               _hd129900130816_
                                               _tl129899130818_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129905130826_ _target129902130821_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133866133867_))
                  (let ((_e129874130741_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133866133867_))))
                    (let ((_tl129872130746_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129874130741_)))
                          (_hd129873130744_
                           (let ()
                             (declare (not safe))
                             (##car _e129874130741_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129872130746_))
                          (let ((_e129877130749_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129872130746_))))
                            (let ((_tl129875130754_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129877130749_)))
                                  (_hd129876130752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129877130749_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129876130752_))
                                  (let ((_e129880130757_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129876130752_))))
                                    (let ((_tl129878130762_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129880130757_)))
                                          (_hd129879130760_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129880130757_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129879130760_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129879130760_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129878130762_))
                                                  (let ((_e129883130765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129878130762_))))
                                                    (let ((_tl129881130770_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129883130765_)))
                                                          (_hd129882130768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129883130765_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129881130770_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129875130754_))
                      (let ((_e129886130773_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129875130754_))))
                        (let ((_tl129884130778_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129886130773_)))
                              (_hd129885130776_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129886130773_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129885130776_))
                              (let ((_e129889130781_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129885130776_))))
                                (let ((_tl129887130786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129889130781_)))
                                      (_hd129888130784_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129889130781_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129888130784_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129888130784_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129887130786_))
                                              (let ((_e129892130789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129887130786_))))
                                                (let ((_tl129890130794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129892130789_)))
                                                      (_hd129891130792_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129892130789_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129890130794_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129884130778_))
                                                          (let ((_e129895130797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129884130778_))))
                    (let ((_tl129893130802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129895130797_)))
                          (_hd129894130800_
                           (let ()
                             (declare (not safe))
                             (##car _e129895130797_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129894130800_))
                          (let ((_e129898130805_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129894130800_))))
                            (let ((_tl129896130810_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129898130805_)))
                                  (_hd129897130808_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129898130805_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129897130808_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129897130808_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129896130810_))
                                          (let ((_e129901130813_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129896130810_))))
                                            (let ((_tl129899130818_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129901130813_)))
                                                  (_hd129900130816_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129901130813_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129899130818_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129893130802_))
                                                      (let ((___splice133870133871_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129893130802_ '0))))
                (let ((_tl129904130823_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133870133871_ '1)))
                      (_target129902130821_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133870133871_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129904130823_))
                      (___match133971133972_
                       _e129874130741_
                       _hd129873130744_
                       _tl129872130746_
                       _e129877130749_
                       _hd129876130752_
                       _tl129875130754_
                       _e129880130757_
                       _hd129879130760_
                       _tl129878130762_
                       _e129883130765_
                       _hd129882130768_
                       _tl129881130770_
                       _e129886130773_
                       _hd129885130776_
                       _tl129884130778_
                       _e129889130781_
                       _hd129888130784_
                       _tl129887130786_
                       _e129892130789_
                       _hd129891130792_
                       _tl129890130794_
                       _e129895130797_
                       _hd129894130800_
                       _tl129893130802_
                       _e129898130805_
                       _hd129897130808_
                       _tl129896130810_
                       _e129901130813_
                       _hd129900130816_
                       _tl129899130818_
                       ___splice133870133871_
                       _target129902130821_
                       _tl129904130823_)
                      (___match134159134160_
                       _e129874130741_
                       _hd129873130744_
                       _tl129872130746_
                       _e129877130749_
                       _hd129876130752_
                       _tl129875130754_
                       _e129880130757_
                       _hd129879130760_
                       _tl129878130762_
                       _e129883130765_
                       _hd129882130768_
                       _tl129881130770_
                       _e129886130773_
                       _hd129885130776_
                       _tl129884130778_
                       _e129889130781_
                       _hd129888130784_
                       _tl129887130786_
                       _e129892130789_
                       _hd129891130792_
                       _tl129890130794_
                       _e129895130797_
                       _hd129894130800_
                       _tl129893130802_
                       _e129898130805_
                       _hd129897130808_
                       _tl129896130810_
                       _e129901130813_
                       _hd129900130816_
                       _tl129899130818_))))
              (___match134159134160_
               _e129874130741_
               _hd129873130744_
               _tl129872130746_
               _e129877130749_
               _hd129876130752_
               _tl129875130754_
               _e129880130757_
               _hd129879130760_
               _tl129878130762_
               _e129883130765_
               _hd129882130768_
               _tl129881130770_
               _e129886130773_
               _hd129885130776_
               _tl129884130778_
               _e129889130781_
               _hd129888130784_
               _tl129887130786_
               _e129892130789_
               _hd129891130792_
               _tl129890130794_
               _e129895130797_
               _hd129894130800_
               _tl129893130802_
               _e129898130805_
               _hd129897130808_
               _tl129896130810_
               _e129901130813_
               _hd129900130816_
               _tl129899130818_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134363134364_
                                                   _e129874130741_
                                                   _hd129873130744_
                                                   _tl129872130746_
                                                   _e129877130749_
                                                   _hd129876130752_
                                                   _tl129875130754_
                                                   _e129880130757_
                                                   _hd129879130760_
                                                   _tl129878130762_
                                                   _e129883130765_
                                                   _hd129882130768_
                                                   _tl129881130770_
                                                   _e129886130773_
                                                   _hd129885130776_
                                                   _tl129884130778_
                                                   _e129889130781_
                                                   _hd129888130784_
                                                   _tl129887130786_
                                                   _e129892130789_
                                                   _hd129891130792_
                                                   _tl129890130794_
                                                   _e129895130797_
                                                   _hd129894130800_
                                                   _tl129893130802_))))
                                          (___match134363134364_
                                           _e129874130741_
                                           _hd129873130744_
                                           _tl129872130746_
                                           _e129877130749_
                                           _hd129876130752_
                                           _tl129875130754_
                                           _e129880130757_
                                           _hd129879130760_
                                           _tl129878130762_
                                           _e129883130765_
                                           _hd129882130768_
                                           _tl129881130770_
                                           _e129886130773_
                                           _hd129885130776_
                                           _tl129884130778_
                                           _e129889130781_
                                           _hd129888130784_
                                           _tl129887130786_
                                           _e129892130789_
                                           _hd129891130792_
                                           _tl129890130794_
                                           _e129895130797_
                                           _hd129894130800_
                                           _tl129893130802_))
                                      (___match134039134040_
                                       _e129874130741_
                                       _hd129873130744_
                                       _tl129872130746_
                                       _e129877130749_
                                       _hd129876130752_
                                       _tl129875130754_
                                       _e129880130757_
                                       _hd129879130760_
                                       _tl129878130762_
                                       _e129883130765_
                                       _hd129882130768_
                                       _tl129881130770_
                                       _e129886130773_
                                       _hd129885130776_
                                       _tl129884130778_
                                       _e129889130781_
                                       _hd129888130784_
                                       _tl129887130786_
                                       _e129892130789_
                                       _hd129891130792_
                                       _tl129890130794_
                                       _e129895130797_
                                       _hd129894130800_
                                       _tl129893130802_
                                       _e129898130805_
                                       _hd129897130808_
                                       _tl129896130810_))
                                  (___match134363134364_
                                   _e129874130741_
                                   _hd129873130744_
                                   _tl129872130746_
                                   _e129877130749_
                                   _hd129876130752_
                                   _tl129875130754_
                                   _e129880130757_
                                   _hd129879130760_
                                   _tl129878130762_
                                   _e129883130765_
                                   _hd129882130768_
                                   _tl129881130770_
                                   _e129886130773_
                                   _hd129885130776_
                                   _tl129884130778_
                                   _e129889130781_
                                   _hd129888130784_
                                   _tl129887130786_
                                   _e129892130789_
                                   _hd129891130792_
                                   _tl129890130794_
                                   _e129895130797_
                                   _hd129894130800_
                                   _tl129893130802_))))
                          (___match134363134364_
                           _e129874130741_
                           _hd129873130744_
                           _tl129872130746_
                           _e129877130749_
                           _hd129876130752_
                           _tl129875130754_
                           _e129880130757_
                           _hd129879130760_
                           _tl129878130762_
                           _e129883130765_
                           _hd129882130768_
                           _tl129881130770_
                           _e129886130773_
                           _hd129885130776_
                           _tl129884130778_
                           _e129889130781_
                           _hd129888130784_
                           _tl129887130786_
                           _e129892130789_
                           _hd129891130792_
                           _tl129890130794_
                           _e129895130797_
                           _hd129894130800_
                           _tl129893130802_))))
                  (___match134301134302_
                   _e129874130741_
                   _hd129873130744_
                   _tl129872130746_
                   _e129877130749_
                   _hd129876130752_
                   _tl129875130754_
                   _e129880130757_
                   _hd129879130760_
                   _tl129878130762_
                   _e129883130765_
                   _hd129882130768_
                   _tl129881130770_
                   _e129886130773_
                   _hd129885130776_
                   _tl129884130778_
                   _e129889130781_
                   _hd129888130784_
                   _tl129887130786_
                   _e129892130789_
                   _hd129891130792_
                   _tl129890130794_))
              (___kont133884133885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133884133885_))
                                          (___kont133884133885_))
                                      (___kont133884133885_))))
                              (___kont133884133885_))))
                      (___kont133884133885_))
                  (___kont133884133885_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133884133885_))
                                              (___kont133884133885_))
                                          (___kont133884133885_))))
                                  (___kont133884133885_))))
                          (___kont133884133885_))))
                  (___kont133884133885_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx128790_
               _self128791_
               _$klass128792_
               _methods128793_
               _slots128794_)
        (letrec ((_force-e128796_
                  (lambda (_target129853_)
                    (let ((__tmp135153
                           (let ((__tmp135157
                                  (let ((__tmp135158
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135158)))
                                 (__tmp135154
                                  (let ((__tmp135155
                                         (let ((__tmp135156
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target129853_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135156))))
                                    (declare (not safe))
                                    (cons __tmp135155 '()))))
                             (declare (not safe))
                             (cons __tmp135157 __tmp135154))))
                      (declare (not safe))
                      (cons '%#call __tmp135153)))))
          (let* ((___stx134368134369_ _stx128790_)
                 (_g128804129026_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134368134369_)))))
            (let ((___kont134370134371_
                   (lambda (_L129799_ _L129800_ _L129801_ _L129802_)
                     (let ((_$method129847_
                            (let ((__tmp135159
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129800_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128793_ __tmp135159)))
                           (_args129848_
                            (map (lambda (_g129835129837_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129835129837_
                                      _self128791_
                                      _$klass128792_
                                      _methods128793_
                                      _slots128794_)))
                                 (let ((__tmp135160
                                        (lambda (_g129839129842_
                                                 _g129840129844_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129839129842_
                                                  _g129840129844_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135160 '() _L129799_)))))
                       (let ((__tmp135161
                              (let ((__tmp135162
                                     (let ((__tmp135166
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128796_
                                               _$method129847_)))
                                           (__tmp135163
                                            (let ((__tmp135164
                                                   (let ((__tmp135165
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self128791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135165))))
                                              (declare (not safe))
                                              (cons __tmp135164
                                                    _args129848_))))
                                       (declare (not safe))
                                       (cons __tmp135166 __tmp135163))))
                                (declare (not safe))
                                (cons '%#call __tmp135162))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135161 _stx128790_)))))
                  (___kont134374134375_
                   (lambda (_L129631_ _L129632_ _L129633_ _L129634_ _L129635_)
                     (let ((_$method129687_
                            (let ((__tmp135167
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129632_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128793_ __tmp135167)))
                           (_args129688_
                            (map (lambda (_g129675129677_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129675129677_
                                      _self128791_
                                      _$klass128792_
                                      _methods128793_
                                      _slots128794_)))
                                 (let ((__tmp135168
                                        (lambda (_g129679129682_
                                                 _g129680129684_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129679129682_
                                                  _g129680129684_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135168 '() _L129631_)))))
                       (let ((__tmp135169
                              (let ((__tmp135170
                                     (let ((__tmp135176
                                            (let ((__tmp135177
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135177)))
                                           (__tmp135171
                                            (let ((__tmp135175
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128796_
                                                      _$method129687_)))
                                                  (__tmp135172
                                                   (let ((__tmp135173
                                                          (let ((__tmp135174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128791_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135173
                                                           _args129688_))))
                                              (declare (not safe))
                                              (cons __tmp135175 __tmp135172))))
                                       (declare (not safe))
                                       (cons __tmp135176 __tmp135171))))
                                (declare (not safe))
                                (cons '%#call __tmp135170))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135169 _stx128790_)))))
                  (___kont134378134379_
                   (lambda (_L129462_ _L129463_ _L129464_)
                     (let* ((_$field129496_
                             (let ((__tmp135178
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129462_))))
                               (declare (not safe))
                               (hash-ref__0 _slots128794_ __tmp135178)))
                            (__tmp135179
                             (let ((__tmp135180
                                    (let ((__tmp135187
                                           (let ((__tmp135188
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass128792_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135188)))
                                          (__tmp135181
                                           (let ((__tmp135185
                                                  (let ((__tmp135186
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135186)))
                                                 (__tmp135182
                                                  (let ((__tmp135183
                                                         (let ((__tmp135184
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self128791_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135183 '()))))
                                             (declare (not safe))
                                             (cons __tmp135185 __tmp135182))))
                                      (declare (not safe))
                                      (cons __tmp135187 __tmp135181))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135180))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135179 _stx128790_))))
                  (___kont134380134381_
                   (lambda (_L129336_ _L129337_ _L129338_ _L129339_)
                     (let ((_$field129374_
                            (let ((__tmp135189
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129337_))))
                              (declare (not safe))
                              (hash-ref__0 _slots128794_ __tmp135189)))
                           (_expr129375_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129336_
                               _self128791_
                               _$klass128792_
                               _methods128793_
                               _slots128794_))))
                       (let ((__tmp135190
                              (let ((__tmp135191
                                     (let ((__tmp135199
                                            (let ((__tmp135200
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass128792_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135200)))
                                           (__tmp135192
                                            (let ((__tmp135197
                                                   (let ((__tmp135198
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135198)))
                                                  (__tmp135193
                                                   (let ((__tmp135195
                                                          (let ((__tmp135196
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128791_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135196)))
                 (__tmp135194
                  (let () (declare (not safe)) (cons _expr129375_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135195
                                                           __tmp135194))))
                                              (declare (not safe))
                                              (cons __tmp135197 __tmp135193))))
                                       (declare (not safe))
                                       (cons __tmp135199 __tmp135192))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135191))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135190 _stx128790_)))))
                  (___kont134382134383_
                   (lambda (_L129208_ _L129209_)
                     (let* ((_accessor129231_
                             (let ((__tmp135201
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129209_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135201)))
                            (_klass129233_
                             (let ((__tmp135202
                                    (##structure-ref
                                     _accessor129231_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128790_
                                __tmp135202)))
                            (_slot129235_
                             (##structure-ref
                              _accessor129231_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135213
                                       (##structure-ref
                                        _accessor129231_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135213))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129233_
                                       _slot129235_))
                                    (##structure-ref
                                     _klass129233_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx128790_
                           (let* ((_$field129241_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots128794_ _slot129235_)))
                                  (__tmp135203
                                   (let ((__tmp135204
                                          (let ((__tmp135211
                                                 (let ((__tmp135212
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass128792_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135212)))
                                                (__tmp135205
                                                 (let ((__tmp135209
                                                        (let ((__tmp135210
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129241_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135210)))
               (__tmp135206
                (let ((__tmp135207
                       (let ((__tmp135208
                              (let ()
                                (declare (not safe))
                                (cons _self128791_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135208))))
                  (declare (not safe))
                  (cons __tmp135207 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135209
                                                         __tmp135206))))
                                            (declare (not safe))
                                            (cons __tmp135211 __tmp135205))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135204))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135203
                              _stx128790_))))))
                  (___kont134384134385_
                   (lambda (_L129102_ _L129103_ _L129104_)
                     (let* ((_mutator129133_
                             (let ((__tmp135214
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129104_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135214)))
                            (_klass129135_
                             (let ((__tmp135215
                                    (##structure-ref
                                     _mutator129133_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128790_
                                __tmp135215)))
                            (_slot129137_
                             (##structure-ref
                              _mutator129133_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129139_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129102_
                                _self128791_
                                _$klass128792_
                                _methods128793_
                                _slots128794_))))
                       (if (and (let ((__tmp135237
                                       (##structure-ref
                                        _mutator129133_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135237))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129135_
                                       _slot129137_))
                                    (##structure-ref
                                     _klass129135_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135227
                                  (let ((__tmp135228
                                         (let ((__tmp135234
                                                (let ((__tmp135236
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135235
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129104_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135236
                                                        __tmp135235)))
                                               (__tmp135229
                                                (let ((__tmp135231
                                                       (let ((__tmp135233
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135232
                      (let () (declare (not safe)) (cons _L129103_ '()))))
                 (declare (not safe))
                 (cons __tmp135233 __tmp135232)))
              (__tmp135230
               (let () (declare (not safe)) (cons _expr129139_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135231
                                                        __tmp135230))))
                                           (declare (not safe))
                                           (cons __tmp135234 __tmp135229))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135228))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135227 _stx128790_))
                           (let* ((_$field129145_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots128794_ _slot129137_)))
                                  (__tmp135216
                                   (let ((__tmp135217
                                          (let ((__tmp135225
                                                 (let ((__tmp135226
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass128792_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135226)))
                                                (__tmp135218
                                                 (let ((__tmp135223
                                                        (let ((__tmp135224
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129145_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135224)))
               (__tmp135219
                (let ((__tmp135221
                       (let ((__tmp135222
                              (let ()
                                (declare (not safe))
                                (cons _self128791_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135222)))
                      (__tmp135220
                       (let () (declare (not safe)) (cons _expr129139_ '()))))
                  (declare (not safe))
                  (cons __tmp135221 __tmp135220))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135223
                                                         __tmp135219))))
                                            (declare (not safe))
                                            (cons __tmp135225 __tmp135218))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135217))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135216
                              _stx128790_))))))
                  (___kont134386134387_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx128790_
                        _self128791_
                        _$klass128792_
                        _methods128793_
                        _slots128794_)))))
              (let* ((___match134867134868_
                      (lambda (_e129000129038_
                               _hd128999129041_
                               _tl128998129043_
                               _e129003129046_
                               _hd129002129049_
                               _tl129001129051_
                               _e129006129054_
                               _hd129005129057_
                               _tl129004129059_
                               _e129009129062_
                               _hd129008129065_
                               _tl129007129067_
                               _e129012129070_
                               _hd129011129073_
                               _tl129010129075_
                               _e129015129078_
                               _hd129014129081_
                               _tl129013129083_
                               _e129018129086_
                               _hd129017129089_
                               _tl129016129091_
                               _e129021129094_
                               _hd129020129097_
                               _tl129019129099_)
                        (let ((_L129102_ _hd129020129097_)
                              (_L129103_ _hd129017129089_)
                              (_L129104_ _hd129008129065_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129103_
                                      _self128791_))
                                   (let ((__tmp135238
                                          (let ((__tmp135239
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129104_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135239))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135238
                                      'gxc#!mutator::t)))
                              (___kont134384134385_
                               _L129102_
                               _L129103_
                               _L129104_)
                              (___kont134386134387_)))))
                     (___match134865134866_
                      (lambda (_e129000129038_
                               _hd128999129041_
                               _tl128998129043_
                               _e129003129046_
                               _hd129002129049_
                               _tl129001129051_
                               _e129006129054_
                               _hd129005129057_
                               _tl129004129059_
                               _e129009129062_
                               _hd129008129065_
                               _tl129007129067_
                               _e129012129070_
                               _hd129011129073_
                               _tl129010129075_
                               _e129015129078_
                               _hd129014129081_
                               _tl129013129083_
                               _e129018129086_
                               _hd129017129089_
                               _tl129016129091_
                               _e129021129094_
                               _hd129020129097_
                               _tl129019129099_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129019129099_))
                            (___match134867134868_
                             _e129000129038_
                             _hd128999129041_
                             _tl128998129043_
                             _e129003129046_
                             _hd129002129049_
                             _tl129001129051_
                             _e129006129054_
                             _hd129005129057_
                             _tl129004129059_
                             _e129009129062_
                             _hd129008129065_
                             _tl129007129067_
                             _e129012129070_
                             _hd129011129073_
                             _tl129010129075_
                             _e129015129078_
                             _hd129014129081_
                             _tl129013129083_
                             _e129018129086_
                             _hd129017129089_
                             _tl129016129091_
                             _e129021129094_
                             _hd129020129097_
                             _tl129019129099_)
                            (___kont134386134387_))))
                     (___match134859134860_
                      (lambda (_e129000129038_
                               _hd128999129041_
                               _tl128998129043_
                               _e129003129046_
                               _hd129002129049_
                               _tl129001129051_
                               _e129006129054_
                               _hd129005129057_
                               _tl129004129059_
                               _e129009129062_
                               _hd129008129065_
                               _tl129007129067_
                               _e129012129070_
                               _hd129011129073_
                               _tl129010129075_
                               _e129015129078_
                               _hd129014129081_
                               _tl129013129083_
                               _e129018129086_
                               _hd129017129089_
                               _tl129016129091_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129010129075_))
                            (let ((_e129021129094_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129010129075_))))
                              (let ((_tl129019129099_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129021129094_)))
                                    (_hd129020129097_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129021129094_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129019129099_))
                                    (___match134867134868_
                                     _e129000129038_
                                     _hd128999129041_
                                     _tl128998129043_
                                     _e129003129046_
                                     _hd129002129049_
                                     _tl129001129051_
                                     _e129006129054_
                                     _hd129005129057_
                                     _tl129004129059_
                                     _e129009129062_
                                     _hd129008129065_
                                     _tl129007129067_
                                     _e129012129070_
                                     _hd129011129073_
                                     _tl129010129075_
                                     _e129015129078_
                                     _hd129014129081_
                                     _tl129013129083_
                                     _e129018129086_
                                     _hd129017129089_
                                     _tl129016129091_
                                     _e129021129094_
                                     _hd129020129097_
                                     _tl129019129099_)
                                    (___kont134386134387_))))
                            (___kont134386134387_))))
                     (___match134805134806_
                      (lambda (_e128976129152_
                               _hd128975129155_
                               _tl128974129157_
                               _e128979129160_
                               _hd128978129163_
                               _tl128977129165_
                               _e128982129168_
                               _hd128981129171_
                               _tl128980129173_
                               _e128985129176_
                               _hd128984129179_
                               _tl128983129181_
                               _e128988129184_
                               _hd128987129187_
                               _tl128986129189_
                               _e128991129192_
                               _hd128990129195_
                               _tl128989129197_
                               _e128994129200_
                               _hd128993129203_
                               _tl128992129205_)
                        (let ((_L129208_ _hd128993129203_)
                              (_L129209_ _hd128984129179_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129208_
                                      _self128791_))
                                   (let ((__tmp135240
                                          (let ((__tmp135241
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129209_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135241))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135240
                                      'gxc#!accessor::t)))
                              (___kont134382134383_ _L129208_ _L129209_)
                              (___kont134386134387_)))))
                     (___match134803134804_
                      (lambda (_e128976129152_
                               _hd128975129155_
                               _tl128974129157_
                               _e128979129160_
                               _hd128978129163_
                               _tl128977129165_
                               _e128982129168_
                               _hd128981129171_
                               _tl128980129173_
                               _e128985129176_
                               _hd128984129179_
                               _tl128983129181_
                               _e128988129184_
                               _hd128987129187_
                               _tl128986129189_
                               _e128991129192_
                               _hd128990129195_
                               _tl128989129197_
                               _e128994129200_
                               _hd128993129203_
                               _tl128992129205_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128986129189_))
                            (___match134805134806_
                             _e128976129152_
                             _hd128975129155_
                             _tl128974129157_
                             _e128979129160_
                             _hd128978129163_
                             _tl128977129165_
                             _e128982129168_
                             _hd128981129171_
                             _tl128980129173_
                             _e128985129176_
                             _hd128984129179_
                             _tl128983129181_
                             _e128988129184_
                             _hd128987129187_
                             _tl128986129189_
                             _e128991129192_
                             _hd128990129195_
                             _tl128989129197_
                             _e128994129200_
                             _hd128993129203_
                             _tl128992129205_)
                            (___match134859134860_
                             _e128976129152_
                             _hd128975129155_
                             _tl128974129157_
                             _e128979129160_
                             _hd128978129163_
                             _tl128977129165_
                             _e128982129168_
                             _hd128981129171_
                             _tl128980129173_
                             _e128985129176_
                             _hd128984129179_
                             _tl128983129181_
                             _e128988129184_
                             _hd128987129187_
                             _tl128986129189_
                             _e128991129192_
                             _hd128990129195_
                             _tl128989129197_
                             _e128994129200_
                             _hd128993129203_
                             _tl128992129205_))))
                     (___match134749134750_
                      (lambda (_e128941129248_
                               _hd128940129251_
                               _tl128939129253_
                               _e128944129256_
                               _hd128943129259_
                               _tl128942129261_
                               _e128947129264_
                               _hd128946129267_
                               _tl128945129269_
                               _e128950129272_
                               _hd128949129275_
                               _tl128948129277_
                               _e128953129280_
                               _hd128952129283_
                               _tl128951129285_
                               _e128956129288_
                               _hd128955129291_
                               _tl128954129293_
                               _e128959129296_
                               _hd128958129299_
                               _tl128957129301_
                               _e128962129304_
                               _hd128961129307_
                               _tl128960129309_
                               _e128965129312_
                               _hd128964129315_
                               _tl128963129317_
                               _e128968129320_
                               _hd128967129323_
                               _tl128966129325_
                               _e128971129328_
                               _hd128970129331_
                               _tl128969129333_)
                        (let ((_L129336_ _hd128970129331_)
                              (_L129337_ _hd128967129323_)
                              (_L129338_ _hd128958129299_)
                              (_L129339_ _hd128949129275_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129339_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129339_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129338_
                                      _self128791_)))
                              (___kont134380134381_
                               _L129336_
                               _L129337_
                               _L129338_
                               _L129339_)
                              (___kont134386134387_)))))
                     (___match134741134742_
                      (lambda (_e128941129248_
                               _hd128940129251_
                               _tl128939129253_
                               _e128944129256_
                               _hd128943129259_
                               _tl128942129261_
                               _e128947129264_
                               _hd128946129267_
                               _tl128945129269_
                               _e128950129272_
                               _hd128949129275_
                               _tl128948129277_
                               _e128953129280_
                               _hd128952129283_
                               _tl128951129285_
                               _e128956129288_
                               _hd128955129291_
                               _tl128954129293_
                               _e128959129296_
                               _hd128958129299_
                               _tl128957129301_
                               _e128962129304_
                               _hd128961129307_
                               _tl128960129309_
                               _e128965129312_
                               _hd128964129315_
                               _tl128963129317_
                               _e128968129320_
                               _hd128967129323_
                               _tl128966129325_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128960129309_))
                            (let ((_e128971129328_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128960129309_))))
                              (let ((_tl128969129333_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128971129328_)))
                                    (_hd128970129331_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128971129328_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128969129333_))
                                    (___match134749134750_
                                     _e128941129248_
                                     _hd128940129251_
                                     _tl128939129253_
                                     _e128944129256_
                                     _hd128943129259_
                                     _tl128942129261_
                                     _e128947129264_
                                     _hd128946129267_
                                     _tl128945129269_
                                     _e128950129272_
                                     _hd128949129275_
                                     _tl128948129277_
                                     _e128953129280_
                                     _hd128952129283_
                                     _tl128951129285_
                                     _e128956129288_
                                     _hd128955129291_
                                     _tl128954129293_
                                     _e128959129296_
                                     _hd128958129299_
                                     _tl128957129301_
                                     _e128962129304_
                                     _hd128961129307_
                                     _tl128960129309_
                                     _e128965129312_
                                     _hd128964129315_
                                     _tl128963129317_
                                     _e128968129320_
                                     _hd128967129323_
                                     _tl128966129325_
                                     _e128971129328_
                                     _hd128970129331_
                                     _tl128969129333_)
                                    (___kont134386134387_))))
                            (___match134865134866_
                             _e128941129248_
                             _hd128940129251_
                             _tl128939129253_
                             _e128944129256_
                             _hd128943129259_
                             _tl128942129261_
                             _e128947129264_
                             _hd128946129267_
                             _tl128945129269_
                             _e128950129272_
                             _hd128949129275_
                             _tl128948129277_
                             _e128953129280_
                             _hd128952129283_
                             _tl128951129285_
                             _e128956129288_
                             _hd128955129291_
                             _tl128954129293_
                             _e128959129296_
                             _hd128958129299_
                             _tl128957129301_
                             _e128962129304_
                             _hd128961129307_
                             _tl128960129309_))))
                     (___match134663134664_
                      (lambda (_e128907129382_
                               _hd128906129385_
                               _tl128905129387_
                               _e128910129390_
                               _hd128909129393_
                               _tl128908129395_
                               _e128913129398_
                               _hd128912129401_
                               _tl128911129403_
                               _e128916129406_
                               _hd128915129409_
                               _tl128914129411_
                               _e128919129414_
                               _hd128918129417_
                               _tl128917129419_
                               _e128922129422_
                               _hd128921129425_
                               _tl128920129427_
                               _e128925129430_
                               _hd128924129433_
                               _tl128923129435_
                               _e128928129438_
                               _hd128927129441_
                               _tl128926129443_
                               _e128931129446_
                               _hd128930129449_
                               _tl128929129451_
                               _e128934129454_
                               _hd128933129457_
                               _tl128932129459_)
                        (let ((_L129462_ _hd128933129457_)
                              (_L129463_ _hd128924129433_)
                              (_L129464_ _hd128915129409_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129464_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129464_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129463_
                                      _self128791_)))
                              (___kont134378134379_
                               _L129462_
                               _L129463_
                               _L129464_)
                              (___match134867134868_
                               _e128907129382_
                               _hd128906129385_
                               _tl128905129387_
                               _e128910129390_
                               _hd128909129393_
                               _tl128908129395_
                               _e128913129398_
                               _hd128912129401_
                               _tl128911129403_
                               _e128916129406_
                               _hd128915129409_
                               _tl128914129411_
                               _e128919129414_
                               _hd128918129417_
                               _tl128917129419_
                               _e128922129422_
                               _hd128921129425_
                               _tl128920129427_
                               _e128925129430_
                               _hd128924129433_
                               _tl128923129435_
                               _e128928129438_
                               _hd128927129441_
                               _tl128926129443_)))))
                     (___match134661134662_
                      (lambda (_e128907129382_
                               _hd128906129385_
                               _tl128905129387_
                               _e128910129390_
                               _hd128909129393_
                               _tl128908129395_
                               _e128913129398_
                               _hd128912129401_
                               _tl128911129403_
                               _e128916129406_
                               _hd128915129409_
                               _tl128914129411_
                               _e128919129414_
                               _hd128918129417_
                               _tl128917129419_
                               _e128922129422_
                               _hd128921129425_
                               _tl128920129427_
                               _e128925129430_
                               _hd128924129433_
                               _tl128923129435_
                               _e128928129438_
                               _hd128927129441_
                               _tl128926129443_
                               _e128931129446_
                               _hd128930129449_
                               _tl128929129451_
                               _e128934129454_
                               _hd128933129457_
                               _tl128932129459_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128926129443_))
                            (___match134663134664_
                             _e128907129382_
                             _hd128906129385_
                             _tl128905129387_
                             _e128910129390_
                             _hd128909129393_
                             _tl128908129395_
                             _e128913129398_
                             _hd128912129401_
                             _tl128911129403_
                             _e128916129406_
                             _hd128915129409_
                             _tl128914129411_
                             _e128919129414_
                             _hd128918129417_
                             _tl128917129419_
                             _e128922129422_
                             _hd128921129425_
                             _tl128920129427_
                             _e128925129430_
                             _hd128924129433_
                             _tl128923129435_
                             _e128928129438_
                             _hd128927129441_
                             _tl128926129443_
                             _e128931129446_
                             _hd128930129449_
                             _tl128929129451_
                             _e128934129454_
                             _hd128933129457_
                             _tl128932129459_)
                            (___match134741134742_
                             _e128907129382_
                             _hd128906129385_
                             _tl128905129387_
                             _e128910129390_
                             _hd128909129393_
                             _tl128908129395_
                             _e128913129398_
                             _hd128912129401_
                             _tl128911129403_
                             _e128916129406_
                             _hd128915129409_
                             _tl128914129411_
                             _e128919129414_
                             _hd128918129417_
                             _tl128917129419_
                             _e128922129422_
                             _hd128921129425_
                             _tl128920129427_
                             _e128925129430_
                             _hd128924129433_
                             _tl128923129435_
                             _e128928129438_
                             _hd128927129441_
                             _tl128926129443_
                             _e128931129446_
                             _hd128930129449_
                             _tl128929129451_
                             _e128934129454_
                             _hd128933129457_
                             _tl128932129459_))))
                     (___match134651134652_
                      (lambda (_e128907129382_
                               _hd128906129385_
                               _tl128905129387_
                               _e128910129390_
                               _hd128909129393_
                               _tl128908129395_
                               _e128913129398_
                               _hd128912129401_
                               _tl128911129403_
                               _e128916129406_
                               _hd128915129409_
                               _tl128914129411_
                               _e128919129414_
                               _hd128918129417_
                               _tl128917129419_
                               _e128922129422_
                               _hd128921129425_
                               _tl128920129427_
                               _e128925129430_
                               _hd128924129433_
                               _tl128923129435_
                               _e128928129438_
                               _hd128927129441_
                               _tl128926129443_
                               _e128931129446_
                               _hd128930129449_
                               _tl128929129451_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128930129449_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128929129451_))
                                (let ((_e128934129454_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128929129451_))))
                                  (let ((_tl128932129459_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128934129454_)))
                                        (_hd128933129457_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128934129454_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128932129459_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128926129443_))
                                            (___match134663134664_
                                             _e128907129382_
                                             _hd128906129385_
                                             _tl128905129387_
                                             _e128910129390_
                                             _hd128909129393_
                                             _tl128908129395_
                                             _e128913129398_
                                             _hd128912129401_
                                             _tl128911129403_
                                             _e128916129406_
                                             _hd128915129409_
                                             _tl128914129411_
                                             _e128919129414_
                                             _hd128918129417_
                                             _tl128917129419_
                                             _e128922129422_
                                             _hd128921129425_
                                             _tl128920129427_
                                             _e128925129430_
                                             _hd128924129433_
                                             _tl128923129435_
                                             _e128928129438_
                                             _hd128927129441_
                                             _tl128926129443_
                                             _e128931129446_
                                             _hd128930129449_
                                             _tl128929129451_
                                             _e128934129454_
                                             _hd128933129457_
                                             _tl128932129459_)
                                            (___match134741134742_
                                             _e128907129382_
                                             _hd128906129385_
                                             _tl128905129387_
                                             _e128910129390_
                                             _hd128909129393_
                                             _tl128908129395_
                                             _e128913129398_
                                             _hd128912129401_
                                             _tl128911129403_
                                             _e128916129406_
                                             _hd128915129409_
                                             _tl128914129411_
                                             _e128919129414_
                                             _hd128918129417_
                                             _tl128917129419_
                                             _e128922129422_
                                             _hd128921129425_
                                             _tl128920129427_
                                             _e128925129430_
                                             _hd128924129433_
                                             _tl128923129435_
                                             _e128928129438_
                                             _hd128927129441_
                                             _tl128926129443_
                                             _e128931129446_
                                             _hd128930129449_
                                             _tl128929129451_
                                             _e128934129454_
                                             _hd128933129457_
                                             _tl128932129459_))
                                        (___match134865134866_
                                         _e128907129382_
                                         _hd128906129385_
                                         _tl128905129387_
                                         _e128910129390_
                                         _hd128909129393_
                                         _tl128908129395_
                                         _e128913129398_
                                         _hd128912129401_
                                         _tl128911129403_
                                         _e128916129406_
                                         _hd128915129409_
                                         _tl128914129411_
                                         _e128919129414_
                                         _hd128918129417_
                                         _tl128917129419_
                                         _e128922129422_
                                         _hd128921129425_
                                         _tl128920129427_
                                         _e128925129430_
                                         _hd128924129433_
                                         _tl128923129435_
                                         _e128928129438_
                                         _hd128927129441_
                                         _tl128926129443_))))
                                (___match134865134866_
                                 _e128907129382_
                                 _hd128906129385_
                                 _tl128905129387_
                                 _e128910129390_
                                 _hd128909129393_
                                 _tl128908129395_
                                 _e128913129398_
                                 _hd128912129401_
                                 _tl128911129403_
                                 _e128916129406_
                                 _hd128915129409_
                                 _tl128914129411_
                                 _e128919129414_
                                 _hd128918129417_
                                 _tl128917129419_
                                 _e128922129422_
                                 _hd128921129425_
                                 _tl128920129427_
                                 _e128925129430_
                                 _hd128924129433_
                                 _tl128923129435_
                                 _e128928129438_
                                 _hd128927129441_
                                 _tl128926129443_))
                            (___match134865134866_
                             _e128907129382_
                             _hd128906129385_
                             _tl128905129387_
                             _e128910129390_
                             _hd128909129393_
                             _tl128908129395_
                             _e128913129398_
                             _hd128912129401_
                             _tl128911129403_
                             _e128916129406_
                             _hd128915129409_
                             _tl128914129411_
                             _e128919129414_
                             _hd128918129417_
                             _tl128917129419_
                             _e128922129422_
                             _hd128921129425_
                             _tl128920129427_
                             _e128925129430_
                             _hd128924129433_
                             _tl128923129435_
                             _e128928129438_
                             _hd128927129441_
                             _tl128926129443_))))
                     (___match134583134584_
                      (lambda (_e128856129503_
                               _hd128855129506_
                               _tl128854129508_
                               _e128859129511_
                               _hd128858129514_
                               _tl128857129516_
                               _e128862129519_
                               _hd128861129522_
                               _tl128860129524_
                               _e128865129527_
                               _hd128864129530_
                               _tl128863129532_
                               _e128868129535_
                               _hd128867129538_
                               _tl128866129540_
                               _e128871129543_
                               _hd128870129546_
                               _tl128869129548_
                               _e128874129551_
                               _hd128873129554_
                               _tl128872129556_
                               _e128877129559_
                               _hd128876129562_
                               _tl128875129564_
                               _e128880129567_
                               _hd128879129570_
                               _tl128878129572_
                               _e128883129575_
                               _hd128882129578_
                               _tl128881129580_
                               _e128886129583_
                               _hd128885129586_
                               _tl128884129588_
                               _e128889129591_
                               _hd128888129594_
                               _tl128887129596_
                               _e128892129599_
                               _hd128891129602_
                               _tl128890129604_
                               ___splice134376134377_
                               _target128893129607_
                               _tl128895129609_)
                        (letrec ((_loop128896129612_
                                  (lambda (_hd128894129615_ _args128900129617_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128894129615_))
                                        (let ((_e128897129620_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128894129615_))))
                                          (let ((_lp-tl128899129625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128897129620_)))
                                                (_lp-hd128898129623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128897129620_))))
                                            (let ((__tmp135242
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128898129623_
                                                           _args128900129617_))))
                                              (declare (not safe))
                                              (_loop128896129612_
                                               _lp-tl128899129625_
                                               __tmp135242))))
                                        (let ((_args128901129628_
                                               (reverse _args128900129617_)))
                                          (let ((_L129631_ _args128901129628_)
                                                (_L129632_ _hd128891129602_)
                                                (_L129633_ _hd128882129578_)
                                                (_L129634_ _hd128873129554_)
                                                (_L129635_ _hd128864129530_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129635_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129634_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129633_
                                                        _self128791_)))
                                                (___kont134374134375_
                                                 _L129631_
                                                 _L129632_
                                                 _L129633_
                                                 _L129634_
                                                 _L129635_)
                                                (___kont134386134387_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128896129612_ _target128893129607_ '())))))
                     (___match134541134542_
                      (lambda (_e128856129503_
                               _hd128855129506_
                               _tl128854129508_
                               _e128859129511_
                               _hd128858129514_
                               _tl128857129516_
                               _e128862129519_
                               _hd128861129522_
                               _tl128860129524_
                               _e128865129527_
                               _hd128864129530_
                               _tl128863129532_
                               _e128868129535_
                               _hd128867129538_
                               _tl128866129540_
                               _e128871129543_
                               _hd128870129546_
                               _tl128869129548_
                               _e128874129551_
                               _hd128873129554_
                               _tl128872129556_
                               _e128877129559_
                               _hd128876129562_
                               _tl128875129564_
                               _e128880129567_
                               _hd128879129570_
                               _tl128878129572_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128879129570_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128878129572_))
                                (let ((_e128883129575_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128878129572_))))
                                  (let ((_tl128881129580_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128883129575_)))
                                        (_hd128882129578_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128883129575_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128881129580_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128875129564_))
                                            (let ((_e128886129583_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128875129564_))))
                                              (let ((_tl128884129588_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128886129583_)))
                                                    (_hd128885129586_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128886129583_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128885129586_))
                                                    (let ((_e128889129591_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128885129586_))))
                                                      (let ((_tl128887129596_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128889129591_)))
                    (_hd128888129594_
                     (let () (declare (not safe)) (##car _e128889129591_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128888129594_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128888129594_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128887129596_))
                            (let ((_e128892129599_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128887129596_))))
                              (let ((_tl128890129604_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128892129599_)))
                                    (_hd128891129602_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128892129599_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128890129604_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128884129588_))
                                        (let ((___splice134376134377_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128884129588_
                                                  '0))))
                                          (let ((_tl128895129609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134376134377_
                                                    '1)))
                                                (_target128893129607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134376134377_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128895129609_))
                                                (___match134583134584_
                                                 _e128856129503_
                                                 _hd128855129506_
                                                 _tl128854129508_
                                                 _e128859129511_
                                                 _hd128858129514_
                                                 _tl128857129516_
                                                 _e128862129519_
                                                 _hd128861129522_
                                                 _tl128860129524_
                                                 _e128865129527_
                                                 _hd128864129530_
                                                 _tl128863129532_
                                                 _e128868129535_
                                                 _hd128867129538_
                                                 _tl128866129540_
                                                 _e128871129543_
                                                 _hd128870129546_
                                                 _tl128869129548_
                                                 _e128874129551_
                                                 _hd128873129554_
                                                 _tl128872129556_
                                                 _e128877129559_
                                                 _hd128876129562_
                                                 _tl128875129564_
                                                 _e128880129567_
                                                 _hd128879129570_
                                                 _tl128878129572_
                                                 _e128883129575_
                                                 _hd128882129578_
                                                 _tl128881129580_
                                                 _e128886129583_
                                                 _hd128885129586_
                                                 _tl128884129588_
                                                 _e128889129591_
                                                 _hd128888129594_
                                                 _tl128887129596_
                                                 _e128892129599_
                                                 _hd128891129602_
                                                 _tl128890129604_
                                                 ___splice134376134377_
                                                 _target128893129607_
                                                 _tl128895129609_)
                                                (___kont134386134387_))))
                                        (___kont134386134387_))
                                    (___kont134386134387_))))
                            (___kont134386134387_))
                        (___kont134386134387_))
                    (___kont134386134387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134386134387_))))
                                            (___match134865134866_
                                             _e128856129503_
                                             _hd128855129506_
                                             _tl128854129508_
                                             _e128859129511_
                                             _hd128858129514_
                                             _tl128857129516_
                                             _e128862129519_
                                             _hd128861129522_
                                             _tl128860129524_
                                             _e128865129527_
                                             _hd128864129530_
                                             _tl128863129532_
                                             _e128868129535_
                                             _hd128867129538_
                                             _tl128866129540_
                                             _e128871129543_
                                             _hd128870129546_
                                             _tl128869129548_
                                             _e128874129551_
                                             _hd128873129554_
                                             _tl128872129556_
                                             _e128877129559_
                                             _hd128876129562_
                                             _tl128875129564_))
                                        (___match134865134866_
                                         _e128856129503_
                                         _hd128855129506_
                                         _tl128854129508_
                                         _e128859129511_
                                         _hd128858129514_
                                         _tl128857129516_
                                         _e128862129519_
                                         _hd128861129522_
                                         _tl128860129524_
                                         _e128865129527_
                                         _hd128864129530_
                                         _tl128863129532_
                                         _e128868129535_
                                         _hd128867129538_
                                         _tl128866129540_
                                         _e128871129543_
                                         _hd128870129546_
                                         _tl128869129548_
                                         _e128874129551_
                                         _hd128873129554_
                                         _tl128872129556_
                                         _e128877129559_
                                         _hd128876129562_
                                         _tl128875129564_))))
                                (___match134865134866_
                                 _e128856129503_
                                 _hd128855129506_
                                 _tl128854129508_
                                 _e128859129511_
                                 _hd128858129514_
                                 _tl128857129516_
                                 _e128862129519_
                                 _hd128861129522_
                                 _tl128860129524_
                                 _e128865129527_
                                 _hd128864129530_
                                 _tl128863129532_
                                 _e128868129535_
                                 _hd128867129538_
                                 _tl128866129540_
                                 _e128871129543_
                                 _hd128870129546_
                                 _tl128869129548_
                                 _e128874129551_
                                 _hd128873129554_
                                 _tl128872129556_
                                 _e128877129559_
                                 _hd128876129562_
                                 _tl128875129564_))
                            (___match134651134652_
                             _e128856129503_
                             _hd128855129506_
                             _tl128854129508_
                             _e128859129511_
                             _hd128858129514_
                             _tl128857129516_
                             _e128862129519_
                             _hd128861129522_
                             _tl128860129524_
                             _e128865129527_
                             _hd128864129530_
                             _tl128863129532_
                             _e128868129535_
                             _hd128867129538_
                             _tl128866129540_
                             _e128871129543_
                             _hd128870129546_
                             _tl128869129548_
                             _e128874129551_
                             _hd128873129554_
                             _tl128872129556_
                             _e128877129559_
                             _hd128876129562_
                             _tl128875129564_
                             _e128880129567_
                             _hd128879129570_
                             _tl128878129572_))))
                     (___match134473134474_
                      (lambda (_e128812129695_
                               _hd128811129698_
                               _tl128810129700_
                               _e128815129703_
                               _hd128814129706_
                               _tl128813129708_
                               _e128818129711_
                               _hd128817129714_
                               _tl128816129716_
                               _e128821129719_
                               _hd128820129722_
                               _tl128819129724_
                               _e128824129727_
                               _hd128823129730_
                               _tl128822129732_
                               _e128827129735_
                               _hd128826129738_
                               _tl128825129740_
                               _e128830129743_
                               _hd128829129746_
                               _tl128828129748_
                               _e128833129751_
                               _hd128832129754_
                               _tl128831129756_
                               _e128836129759_
                               _hd128835129762_
                               _tl128834129764_
                               _e128839129767_
                               _hd128838129770_
                               _tl128837129772_
                               ___splice134372134373_
                               _target128840129775_
                               _tl128842129777_)
                        (letrec ((_loop128843129780_
                                  (lambda (_hd128841129783_ _args128847129785_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128841129783_))
                                        (let ((_e128844129788_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128841129783_))))
                                          (let ((_lp-tl128846129793_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128844129788_)))
                                                (_lp-hd128845129791_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128844129788_))))
                                            (let ((__tmp135243
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128845129791_
                                                           _args128847129785_))))
                                              (declare (not safe))
                                              (_loop128843129780_
                                               _lp-tl128846129793_
                                               __tmp135243))))
                                        (let ((_args128848129796_
                                               (reverse _args128847129785_)))
                                          (let ((_L129799_ _args128848129796_)
                                                (_L129800_ _hd128838129770_)
                                                (_L129801_ _hd128829129746_)
                                                (_L129802_ _hd128820129722_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129802_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129801_
                                                        _self128791_)))
                                                (___kont134370134371_
                                                 _L129799_
                                                 _L129800_
                                                 _L129801_
                                                 _L129802_)
                                                (___match134661134662_
                                                 _e128812129695_
                                                 _hd128811129698_
                                                 _tl128810129700_
                                                 _e128815129703_
                                                 _hd128814129706_
                                                 _tl128813129708_
                                                 _e128818129711_
                                                 _hd128817129714_
                                                 _tl128816129716_
                                                 _e128821129719_
                                                 _hd128820129722_
                                                 _tl128819129724_
                                                 _e128824129727_
                                                 _hd128823129730_
                                                 _tl128822129732_
                                                 _e128827129735_
                                                 _hd128826129738_
                                                 _tl128825129740_
                                                 _e128830129743_
                                                 _hd128829129746_
                                                 _tl128828129748_
                                                 _e128833129751_
                                                 _hd128832129754_
                                                 _tl128831129756_
                                                 _e128836129759_
                                                 _hd128835129762_
                                                 _tl128834129764_
                                                 _e128839129767_
                                                 _hd128838129770_
                                                 _tl128837129772_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128843129780_ _target128840129775_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134368134369_))
                    (let ((_e128812129695_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134368134369_))))
                      (let ((_tl128810129700_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128812129695_)))
                            (_hd128811129698_
                             (let ()
                               (declare (not safe))
                               (##car _e128812129695_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128810129700_))
                            (let ((_e128815129703_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128810129700_))))
                              (let ((_tl128813129708_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128815129703_)))
                                    (_hd128814129706_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128815129703_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128814129706_))
                                    (let ((_e128818129711_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128814129706_))))
                                      (let ((_tl128816129716_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128818129711_)))
                                            (_hd128817129714_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128818129711_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128817129714_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128817129714_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128816129716_))
                                                    (let ((_e128821129719_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128816129716_))))
                                                      (let ((_tl128819129724_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128821129719_)))
                    (_hd128820129722_
                     (let () (declare (not safe)) (##car _e128821129719_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128819129724_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128813129708_))
                        (let ((_e128824129727_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128813129708_))))
                          (let ((_tl128822129732_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128824129727_)))
                                (_hd128823129730_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128824129727_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128823129730_))
                                (let ((_e128827129735_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128823129730_))))
                                  (let ((_tl128825129740_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128827129735_)))
                                        (_hd128826129738_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128827129735_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128826129738_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128826129738_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128825129740_))
                                                (let ((_e128830129743_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128825129740_))))
                                                  (let ((_tl128828129748_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128830129743_)))
                                                        (_hd128829129746_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128830129743_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128828129748_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128822129732_))
                                                            (let ((_e128833129751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128822129732_))))
                      (let ((_tl128831129756_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128833129751_)))
                            (_hd128832129754_
                             (let ()
                               (declare (not safe))
                               (##car _e128833129751_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128832129754_))
                            (let ((_e128836129759_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128832129754_))))
                              (let ((_tl128834129764_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128836129759_)))
                                    (_hd128835129762_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128836129759_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128835129762_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128835129762_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128834129764_))
                                            (let ((_e128839129767_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128834129764_))))
                                              (let ((_tl128837129772_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128839129767_)))
                                                    (_hd128838129770_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128839129767_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128837129772_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128831129756_))
                                                        (let ((___splice134372134373_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128831129756_ '0))))
                  (let ((_tl128842129777_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134372134373_ '1)))
                        (_target128840129775_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134372134373_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128842129777_))
                        (___match134473134474_
                         _e128812129695_
                         _hd128811129698_
                         _tl128810129700_
                         _e128815129703_
                         _hd128814129706_
                         _tl128813129708_
                         _e128818129711_
                         _hd128817129714_
                         _tl128816129716_
                         _e128821129719_
                         _hd128820129722_
                         _tl128819129724_
                         _e128824129727_
                         _hd128823129730_
                         _tl128822129732_
                         _e128827129735_
                         _hd128826129738_
                         _tl128825129740_
                         _e128830129743_
                         _hd128829129746_
                         _tl128828129748_
                         _e128833129751_
                         _hd128832129754_
                         _tl128831129756_
                         _e128836129759_
                         _hd128835129762_
                         _tl128834129764_
                         _e128839129767_
                         _hd128838129770_
                         _tl128837129772_
                         ___splice134372134373_
                         _target128840129775_
                         _tl128842129777_)
                        (___match134661134662_
                         _e128812129695_
                         _hd128811129698_
                         _tl128810129700_
                         _e128815129703_
                         _hd128814129706_
                         _tl128813129708_
                         _e128818129711_
                         _hd128817129714_
                         _tl128816129716_
                         _e128821129719_
                         _hd128820129722_
                         _tl128819129724_
                         _e128824129727_
                         _hd128823129730_
                         _tl128822129732_
                         _e128827129735_
                         _hd128826129738_
                         _tl128825129740_
                         _e128830129743_
                         _hd128829129746_
                         _tl128828129748_
                         _e128833129751_
                         _hd128832129754_
                         _tl128831129756_
                         _e128836129759_
                         _hd128835129762_
                         _tl128834129764_
                         _e128839129767_
                         _hd128838129770_
                         _tl128837129772_))))
                (___match134661134662_
                 _e128812129695_
                 _hd128811129698_
                 _tl128810129700_
                 _e128815129703_
                 _hd128814129706_
                 _tl128813129708_
                 _e128818129711_
                 _hd128817129714_
                 _tl128816129716_
                 _e128821129719_
                 _hd128820129722_
                 _tl128819129724_
                 _e128824129727_
                 _hd128823129730_
                 _tl128822129732_
                 _e128827129735_
                 _hd128826129738_
                 _tl128825129740_
                 _e128830129743_
                 _hd128829129746_
                 _tl128828129748_
                 _e128833129751_
                 _hd128832129754_
                 _tl128831129756_
                 _e128836129759_
                 _hd128835129762_
                 _tl128834129764_
                 _e128839129767_
                 _hd128838129770_
                 _tl128837129772_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134865134866_
                                                     _e128812129695_
                                                     _hd128811129698_
                                                     _tl128810129700_
                                                     _e128815129703_
                                                     _hd128814129706_
                                                     _tl128813129708_
                                                     _e128818129711_
                                                     _hd128817129714_
                                                     _tl128816129716_
                                                     _e128821129719_
                                                     _hd128820129722_
                                                     _tl128819129724_
                                                     _e128824129727_
                                                     _hd128823129730_
                                                     _tl128822129732_
                                                     _e128827129735_
                                                     _hd128826129738_
                                                     _tl128825129740_
                                                     _e128830129743_
                                                     _hd128829129746_
                                                     _tl128828129748_
                                                     _e128833129751_
                                                     _hd128832129754_
                                                     _tl128831129756_))))
                                            (___match134865134866_
                                             _e128812129695_
                                             _hd128811129698_
                                             _tl128810129700_
                                             _e128815129703_
                                             _hd128814129706_
                                             _tl128813129708_
                                             _e128818129711_
                                             _hd128817129714_
                                             _tl128816129716_
                                             _e128821129719_
                                             _hd128820129722_
                                             _tl128819129724_
                                             _e128824129727_
                                             _hd128823129730_
                                             _tl128822129732_
                                             _e128827129735_
                                             _hd128826129738_
                                             _tl128825129740_
                                             _e128830129743_
                                             _hd128829129746_
                                             _tl128828129748_
                                             _e128833129751_
                                             _hd128832129754_
                                             _tl128831129756_))
                                        (___match134541134542_
                                         _e128812129695_
                                         _hd128811129698_
                                         _tl128810129700_
                                         _e128815129703_
                                         _hd128814129706_
                                         _tl128813129708_
                                         _e128818129711_
                                         _hd128817129714_
                                         _tl128816129716_
                                         _e128821129719_
                                         _hd128820129722_
                                         _tl128819129724_
                                         _e128824129727_
                                         _hd128823129730_
                                         _tl128822129732_
                                         _e128827129735_
                                         _hd128826129738_
                                         _tl128825129740_
                                         _e128830129743_
                                         _hd128829129746_
                                         _tl128828129748_
                                         _e128833129751_
                                         _hd128832129754_
                                         _tl128831129756_
                                         _e128836129759_
                                         _hd128835129762_
                                         _tl128834129764_))
                                    (___match134865134866_
                                     _e128812129695_
                                     _hd128811129698_
                                     _tl128810129700_
                                     _e128815129703_
                                     _hd128814129706_
                                     _tl128813129708_
                                     _e128818129711_
                                     _hd128817129714_
                                     _tl128816129716_
                                     _e128821129719_
                                     _hd128820129722_
                                     _tl128819129724_
                                     _e128824129727_
                                     _hd128823129730_
                                     _tl128822129732_
                                     _e128827129735_
                                     _hd128826129738_
                                     _tl128825129740_
                                     _e128830129743_
                                     _hd128829129746_
                                     _tl128828129748_
                                     _e128833129751_
                                     _hd128832129754_
                                     _tl128831129756_))))
                            (___match134865134866_
                             _e128812129695_
                             _hd128811129698_
                             _tl128810129700_
                             _e128815129703_
                             _hd128814129706_
                             _tl128813129708_
                             _e128818129711_
                             _hd128817129714_
                             _tl128816129716_
                             _e128821129719_
                             _hd128820129722_
                             _tl128819129724_
                             _e128824129727_
                             _hd128823129730_
                             _tl128822129732_
                             _e128827129735_
                             _hd128826129738_
                             _tl128825129740_
                             _e128830129743_
                             _hd128829129746_
                             _tl128828129748_
                             _e128833129751_
                             _hd128832129754_
                             _tl128831129756_))))
                    (___match134803134804_
                     _e128812129695_
                     _hd128811129698_
                     _tl128810129700_
                     _e128815129703_
                     _hd128814129706_
                     _tl128813129708_
                     _e128818129711_
                     _hd128817129714_
                     _tl128816129716_
                     _e128821129719_
                     _hd128820129722_
                     _tl128819129724_
                     _e128824129727_
                     _hd128823129730_
                     _tl128822129732_
                     _e128827129735_
                     _hd128826129738_
                     _tl128825129740_
                     _e128830129743_
                     _hd128829129746_
                     _tl128828129748_))
                (___kont134386134387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134386134387_))
                                            (___kont134386134387_))
                                        (___kont134386134387_))))
                                (___kont134386134387_))))
                        (___kont134386134387_))
                    (___kont134386134387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134386134387_))
                                                (___kont134386134387_))
                                            (___kont134386134387_))))
                                    (___kont134386134387_))))
                            (___kont134386134387_))))
                    (___kont134386134387_))))))))))
