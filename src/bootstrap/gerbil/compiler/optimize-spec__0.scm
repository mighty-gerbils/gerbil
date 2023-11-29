(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1701927554)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl45292_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp46896 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl45292_ __tmp46896))
           (let ()
             (declare (not safe))
             (table-set! _tbl45292_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl45292_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl45292_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45292_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl45292_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx45275_ . _args45277_)
        (let ((__tmp46898
               (lambda ()
                 (declare (not safe))
                 (if (null? _args45277_)
                     (gxc#compile-e__0 _stx45275_)
                     (let ((_arg145282_ (car _args45277_))
                           (_rest45284_ (cdr _args45277_)))
                       (if (null? _rest45284_)
                           (gxc#compile-e__1 _stx45275_ _arg145282_)
                           (let ((_arg245287_ (car _rest45284_))
                                 (_rest45289_ (cdr _rest45284_)))
                             (if (null? _rest45289_)
                                 (gxc#compile-e__2
                                  _stx45275_
                                  _arg145282_
                                  _arg245287_)
                                 (apply gxc#compile-e
                                        _stx45275_
                                        _arg145282_
                                        _arg245287_
                                        _rest45289_))))))))
              (__tmp46897 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp46898
           gxc#current-compile-methods
           __tmp46897))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl45272_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp46899 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl45272_ __tmp46899))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl45272_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl45272_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl45272_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx45255_ . _args45257_)
        (let ((__tmp46901
               (lambda ()
                 (declare (not safe))
                 (if (null? _args45257_)
                     (gxc#compile-e__0 _stx45255_)
                     (let ((_arg145262_ (car _args45257_))
                           (_rest45264_ (cdr _args45257_)))
                       (if (null? _rest45264_)
                           (gxc#compile-e__1 _stx45255_ _arg145262_)
                           (let ((_arg245267_ (car _rest45264_))
                                 (_rest45269_ (cdr _rest45264_)))
                             (if (null? _rest45269_)
                                 (gxc#compile-e__2
                                  _stx45255_
                                  _arg145262_
                                  _arg245267_)
                                 (apply gxc#compile-e
                                        _stx45255_
                                        _arg145262_
                                        _arg245267_
                                        _rest45269_))))))))
              (__tmp46900 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp46901
           gxc#current-compile-methods
           __tmp46900))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl45252_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp46902 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl45252_ __tmp46902))
           (let ()
             (declare (not safe))
             (table-set! _tbl45252_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl45252_ '%#call gxc#subst-object-refs-call%))
           _tbl45252_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx45235_ . _args45237_)
        (let ((__tmp46904
               (lambda ()
                 (declare (not safe))
                 (if (null? _args45237_)
                     (gxc#compile-e__0 _stx45235_)
                     (let ((_arg145242_ (car _args45237_))
                           (_rest45244_ (cdr _args45237_)))
                       (if (null? _rest45244_)
                           (gxc#compile-e__1 _stx45235_ _arg145242_)
                           (let ((_arg245247_ (car _rest45244_))
                                 (_rest45249_ (cdr _rest45244_)))
                             (if (null? _rest45249_)
                                 (gxc#compile-e__2
                                  _stx45235_
                                  _arg145242_
                                  _arg245247_)
                                 (apply gxc#compile-e
                                        _stx45235_
                                        _arg145242_
                                        _arg245247_
                                        _rest45249_))))))))
              (__tmp46903 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp46904
           gxc#current-compile-methods
           __tmp46903))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx41905_)
        (letrec ((_generate-method-bind41907_
                  (lambda (_$t45229_ _id45230_ _$id45231_)
                    (let ((_$tmp45233_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp46949
                             (let ()
                               (declare (not safe))
                               (cons _$id45231_ '())))
                            (__tmp46905
                             (let ((__tmp46906
                                    (let ((__tmp46907
                                           (let ((__tmp46947
                                                  (let ((__tmp46948
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp46948)))
                                                 (__tmp46908
                                                  (let ((__tmp46909
                                                         (let ((__tmp46910
                                                                (let ((__tmp46911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp46912
                                      (let ((__tmp46913
                                             (let ((__tmp46933
                                                    (let ((__tmp46934
                                                           (let ((__tmp46946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$tmp45233_ '())))
                         (__tmp46935
                          (let ((__tmp46936
                                 (let ((__tmp46937
                                        (let ((__tmp46944
                                               (let ((__tmp46945
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp46945)))
                                              (__tmp46938
                                               (let ((__tmp46942
                                                      (let ((__tmp46943
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t45229_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp46943)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46939
                                                      (let ((__tmp46940
                                                             (let ((__tmp46941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id45230_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp46941))))
                (declare (not safe))
                (cons __tmp46940 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46942
                                                       __tmp46939))))
                                          (declare (not safe))
                                          (cons __tmp46944 __tmp46938))))
                                   (declare (not safe))
                                   (cons '%#call __tmp46937))))
                            (declare (not safe))
                            (cons __tmp46936 '()))))
                     (declare (not safe))
                     (cons __tmp46946 __tmp46935))))
              (declare (not safe))
              (cons __tmp46934 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp46914
                                                    (let ((__tmp46915
                                                           (let ((__tmp46916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp46931
                                 (let ((__tmp46932
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp45233_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp46932)))
                                (__tmp46917
                                 (let ((__tmp46929
                                        (let ((__tmp46930
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp45233_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp46930)))
                                       (__tmp46918
                                        (let ((__tmp46919
                                               (let ((__tmp46920
                                                      (let ((__tmp46927
                                                             (let ((__tmp46928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46928)))
                    (__tmp46921
                     (let ((__tmp46925
                            (let ((__tmp46926
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp46926)))
                           (__tmp46922
                            (let ((__tmp46923
                                   (let ((__tmp46924
                                          (let ()
                                            (declare (not safe))
                                            (cons _id45230_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp46924))))
                              (declare (not safe))
                              (cons __tmp46923 '()))))
                       (declare (not safe))
                       (cons __tmp46925 __tmp46922))))
                (declare (not safe))
                (cons __tmp46927 __tmp46921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp46920))))
                                          (declare (not safe))
                                          (cons __tmp46919 '()))))
                                   (declare (not safe))
                                   (cons __tmp46929 __tmp46918))))
                            (declare (not safe))
                            (cons __tmp46931 __tmp46917))))
                     (declare (not safe))
                     (cons '%#if __tmp46916))))
              (declare (not safe))
              (cons __tmp46915 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp46933 __tmp46914))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp46913))))
                                 (declare (not safe))
                                 (cons __tmp46912 '()))))
                          (declare (not safe))
                          (cons '() __tmp46911))))
                   (declare (not safe))
                   (cons '%#lambda __tmp46910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp46909 '()))))
                                             (declare (not safe))
                                             (cons __tmp46947 __tmp46908))))
                                      (declare (not safe))
                                      (cons '%#call __tmp46907))))
                               (declare (not safe))
                               (cons __tmp46906 '()))))
                        (declare (not safe))
                        (cons __tmp46949 __tmp46905)))))
                 (_generate-slot-bind41908_
                  (lambda (_$t45223_ _id45224_ _$id45225_)
                    (let ((_$tmp45227_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp46994
                             (let ()
                               (declare (not safe))
                               (cons _$id45225_ '())))
                            (__tmp46950
                             (let ((__tmp46951
                                    (let ((__tmp46952
                                           (let ((__tmp46980
                                                  (let ((__tmp46981
                                                         (let ((__tmp46993
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp45227_ '())))
                       (__tmp46982
                        (let ((__tmp46983
                               (let ((__tmp46984
                                      (let ((__tmp46991
                                             (let ((__tmp46992
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp46992)))
                                            (__tmp46985
                                             (let ((__tmp46989
                                                    (let ((__tmp46990
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t45223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp46990)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp46986
                                                    (let ((__tmp46987
                                                           (let ((__tmp46988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id45224_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp46988))))
              (declare (not safe))
              (cons __tmp46987 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp46989 __tmp46986))))
                                        (declare (not safe))
                                        (cons __tmp46991 __tmp46985))))
                                 (declare (not safe))
                                 (cons '%#call __tmp46984))))
                          (declare (not safe))
                          (cons __tmp46983 '()))))
                   (declare (not safe))
                   (cons __tmp46993 __tmp46982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp46981 '())))
                                                 (__tmp46953
                                                  (let ((__tmp46954
                                                         (let ((__tmp46955
                                                                (let ((__tmp46978
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp46979
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp45227_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp46979)))
                              (__tmp46956
                               (let ((__tmp46968
                                      (let ((__tmp46969
                                             (let ((__tmp46976
                                                    (let ((__tmp46977
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '##fx+
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp46977)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp46970
                                                    (let ((__tmp46974
                                                           (let ((__tmp46975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp45227_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp46975)))
                  (__tmp46971
                   (let ((__tmp46972
                          (let ((__tmp46973
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp46973))))
                     (declare (not safe))
                     (cons __tmp46972 '()))))
              (declare (not safe))
              (cons __tmp46974 __tmp46971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp46976 __tmp46970))))
                                        (declare (not safe))
                                        (cons '%#call __tmp46969)))
                                     (__tmp46957
                                      (let ((__tmp46958
                                             (let ((__tmp46959
                                                    (let ((__tmp46966
                                                           (let ((__tmp46967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp46967)))
                  (__tmp46960
                   (let ((__tmp46964
                          (let ((__tmp46965
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp46965)))
                         (__tmp46961
                          (let ((__tmp46962
                                 (let ((__tmp46963
                                        (let ()
                                          (declare (not safe))
                                          (cons _id45224_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp46963))))
                            (declare (not safe))
                            (cons __tmp46962 '()))))
                     (declare (not safe))
                     (cons __tmp46964 __tmp46961))))
              (declare (not safe))
              (cons __tmp46966 __tmp46960))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp46959))))
                                        (declare (not safe))
                                        (cons __tmp46958 '()))))
                                 (declare (not safe))
                                 (cons __tmp46968 __tmp46957))))
                          (declare (not safe))
                          (cons __tmp46978 __tmp46956))))
                   (declare (not safe))
                   (cons '%#if __tmp46955))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp46954 '()))))
                                             (declare (not safe))
                                             (cons __tmp46980 __tmp46953))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp46952))))
                               (declare (not safe))
                               (cons __tmp46951 '()))))
                        (declare (not safe))
                        (cons __tmp46994 __tmp46950)))))
                 (_generate-class-check-bind41909_
                  (lambda (_$t45219_ _class-type45220_ _$class-type45221_)
                    (let ((__tmp47006
                           (let ()
                             (declare (not safe))
                             (cons _$class-type45221_ '())))
                          (__tmp46995
                           (let ((__tmp46996
                                  (let ((__tmp46997
                                         (let ((__tmp47004
                                                (let ((__tmp47005
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp47005)))
                                               (__tmp46998
                                                (let ((__tmp47002
                                                       (let ((__tmp47003
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type45220_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp47003)))
              (__tmp46999
               (let ((__tmp47000
                      (let ((__tmp47001
                             (let ()
                               (declare (not safe))
                               (cons _$t45219_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp47001))))
                 (declare (not safe))
                 (cons __tmp47000 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47002
                                                        __tmp46999))))
                                           (declare (not safe))
                                           (cons __tmp47004 __tmp46998))))
                                    (declare (not safe))
                                    (cons '%#call __tmp46997))))
                             (declare (not safe))
                             (cons __tmp46996 '()))))
                      (declare (not safe))
                      (cons __tmp47006 __tmp46995))))
                 (_generate-struct-check-bind41910_
                  (lambda (_$t45215_ _class-type45216_ _$class-type45217_)
                    (let ((__tmp47018
                           (let ()
                             (declare (not safe))
                             (cons _$class-type45217_ '())))
                          (__tmp47007
                           (let ((__tmp47008
                                  (let ((__tmp47009
                                         (let ((__tmp47016
                                                (let ((__tmp47017
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp47017)))
                                               (__tmp47010
                                                (let ((__tmp47014
                                                       (let ((__tmp47015
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type45216_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp47015)))
              (__tmp47011
               (let ((__tmp47012
                      (let ((__tmp47013
                             (let ()
                               (declare (not safe))
                               (cons _$t45215_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp47013))))
                 (declare (not safe))
                 (cons __tmp47012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47014
                                                        __tmp47011))))
                                           (declare (not safe))
                                           (cons __tmp47016 __tmp47010))))
                                    (declare (not safe))
                                    (cons '%#call __tmp47009))))
                             (declare (not safe))
                             (cons __tmp47008 '()))))
                      (declare (not safe))
                      (cons __tmp47018 __tmp47007))))
                 (_generate-specializer-impl41911_
                  (lambda (_$t45164_
                           _methods-bind45165_
                           _slots-bind45166_
                           _class-check-bind45167_
                           _struct-check-bind45168_
                           _specializer-impl45169_
                           _lifted-specializer-id45170_
                           _unchecked-specializer-impl45171_)
                    (let ((__tmp47019
                           (let ((__tmp47020
                                  (let ((__tmp47045
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t45164_ '())))
                                        (__tmp47021
                                         (let ((__tmp47022
                                                (let ((__tmp47023
                                                       (let ((__tmp47042
                                                              (let ((__tmp47043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47044
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind45168_
                                              _class-check-bind45167_))))
                               (declare (not safe))
                               (foldr1 cons __tmp47044 _slots-bind45166_))))
                        (declare (not safe))
                        (foldr1 cons __tmp47043 _methods-bind45165_)))
                     (__tmp47024
                      (let ((__tmp47025
                             (if (or _lifted-specializer-id45170_
                                     _unchecked-specializer-impl45171_)
                                 (let* ((_$specializer45176_
                                         (make-symbol (gensym '__specializer)))
                                        (__tmp47026
                                         (let ((__tmp47038
                                                (let ((__tmp47039
                                                       (let ((__tmp47041
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer45176_ '())))
                     (__tmp47040
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl45169_ '()))))
                 (declare (not safe))
                 (cons __tmp47041 __tmp47040))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47039 '())))
                                               (__tmp47027
                                                (let ((__tmp47028
                                                       (let _recur45178_ ((_rest45180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (map caar _struct-check-bind45168_)))
                 (let* ((_rest4518145189_ _rest45180_)
                        (_else4518345197_
                         (lambda ()
                           (if _lifted-specializer-id45170_
                               (let ((__tmp47029
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id45170_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp47029))
                               _unchecked-specializer-impl45171_)))
                        (_K4518545203_
                         (lambda (_rest45200_ _checkq45201_)
                           (let ((__tmp47030
                                  (let ((__tmp47036
                                         (let ((__tmp47037
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq45201_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp47037)))
                                        (__tmp47031
                                         (let ((__tmp47035
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur45178_ _rest45200_)))
                                               (__tmp47032
                                                (let ((__tmp47033
                                                       (let ((__tmp47034
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer45176_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp47034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47033 '()))))
                                           (declare (not safe))
                                           (cons __tmp47035 __tmp47032))))
                                    (declare (not safe))
                                    (cons __tmp47036 __tmp47031))))
                             (declare (not safe))
                             (cons '%#if __tmp47030)))))
                   (if (let () (declare (not safe)) (##pair? _rest4518145189_))
                       (let ((_hd4518645206_
                              (let ()
                                (declare (not safe))
                                (##car _rest4518145189_)))
                             (_tl4518745208_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest4518145189_))))
                         (let* ((_checkq45211_ _hd4518645206_)
                                (_rest45213_ _tl4518745208_))
                           (declare (not safe))
                           (_K4518545203_ _rest45213_ _checkq45211_)))
                       (let () (declare (not safe)) (_else4518345197_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47028 '()))))
                                           (declare (not safe))
                                           (cons __tmp47038 __tmp47027))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp47026))
                                 _specializer-impl45169_)))
                        (declare (not safe))
                        (cons __tmp47025 '()))))
                 (declare (not safe))
                 (cons __tmp47042 __tmp47024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp47023))))
                                           (declare (not safe))
                                           (cons __tmp47022 '()))))
                                    (declare (not safe))
                                    (cons __tmp47045 __tmp47021))))
                             (declare (not safe))
                             (cons '%#lambda __tmp47020))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp47019 _stx41905_))))
                 (_generate-specializer-def41912_
                  (lambda (_id45158_
                           _specializer-id45159_
                           _specializer-impl45160_
                           _lifted-specializer-id45161_
                           _unchecked-specializer-impl45162_)
                    (let ((__tmp47046
                           (let ((__tmp47047
                                  (let ((__tmp47048
                                         (let ((__tmp47068
                                                (let ((__tmp47069
                                                       (let ((__tmp47070
                                                              (let ((__tmp47072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id45159_ '())))
                            (__tmp47071
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl45160_ '()))))
                        (declare (not safe))
                        (cons __tmp47072 __tmp47071))))
                 (declare (not safe))
                 (cons '%#define-values __tmp47070))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp47069
                                                   _stx41905_)))
                                               (__tmp47049
                                                (let ((__tmp47056
                                                       (let ((__tmp47057
                                                              (let ((__tmp47058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47059
                                    (let ((__tmp47066
                                           (let ((__tmp47067
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp47067)))
                                          (__tmp47060
                                           (let ((__tmp47064
                                                  (let ((__tmp47065
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id45158_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp47065)))
                                                 (__tmp47061
                                                  (let ((__tmp47062
                                                         (let ((__tmp47063
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id45159_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp47063))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47062 '()))))
                                             (declare (not safe))
                                             (cons __tmp47064 __tmp47061))))
                                      (declare (not safe))
                                      (cons __tmp47066 __tmp47060))))
                               (declare (not safe))
                               (cons '%#call __tmp47059))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp47058 _stx41905_))))
                 (declare (not safe))
                 (cons __tmp47057 '())))
              (__tmp47050
               (if _lifted-specializer-id45161_
                   (let ((__tmp47051
                          (let ((__tmp47052
                                 (let ((__tmp47053
                                        (let ((__tmp47055
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id45161_
                                                       '())))
                                              (__tmp47054
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl45162_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp47055 __tmp47054))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp47053))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp47052 _stx41905_))))
                     (declare (not safe))
                     (cons __tmp47051 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp47056
                                                          __tmp47050))))
                                           (declare (not safe))
                                           (cons __tmp47068 __tmp47049))))
                                    (declare (not safe))
                                    (cons _stx41905_ __tmp47048))))
                             (declare (not safe))
                             (cons '%#begin __tmp47047))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp47046 _stx41905_)))))
          (let* ((___stx4538145382_ _stx41905_)
                 (_g4191541935_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx4538145382_)))))
            (let ((___kont4538345384_
                   (lambda (_L41979_ _L41980_)
                     (let ((_method-calls41999_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs42000_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check42001_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check42002_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert42003_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty42004_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?42006_
                                 (lambda ()
                                   (if (let ((__tmp47077
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls41999_))))
                                         (declare (not safe))
                                         (fxzero? __tmp47077))
                                       (if (let ((__tmp47076
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs42000_))))
                                             (declare (not safe))
                                             (fxzero? __tmp47076))
                                           (if (let ((__tmp47075
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check42001_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp47075))
                                               (if (let ((__tmp47074
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check42002_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp47074))
                                                   (let ((__tmp47073
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert42003_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp47073))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?42007_
                                 (lambda ()
                                   (let ((_$e45151_
                                          (let ((__tmp47078
                                                 (let ((__tmp47079
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check42002_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp47079))))
                                            (declare (not safe))
                                            (not __tmp47078))))
                                     (if _$e45151_
                                         _$e45151_
                                         (let ((__tmp47080
                                                (let ((__tmp47081
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert42003_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp47081))))
                                           (declare (not safe))
                                           (not __tmp47080))))))
                                (_lift-unchecked-specializer?42008_
                                 (lambda ()
                                   (if (let ((__tmp47084
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls41999_))))
                                         (declare (not safe))
                                         (fxzero? __tmp47084))
                                       (if (let ((__tmp47083
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs42000_))))
                                             (declare (not safe))
                                             (fxzero? __tmp47083))
                                           (let ((__tmp47082
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check42001_))))
                                             (declare (not safe))
                                             (fxzero? __tmp47082))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L41979_))
                             (let* ((___stx4529545296_ _L41979_)
                                    (_g4252142539_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx4529545296_)))))
                               (let ((___kont4529745298_
                                      (lambda (_L42575_ _L42576_ _L42577_)
                                        (for-each
                                         (lambda (_g4259242594_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g4259242594_
                                              _L42577_
                                              _method-calls41999_
                                              _slot-refs42000_
                                              _class-type-check42001_
                                              _struct-type-check42002_
                                              _struct-type-assert42003_)))
                                         _L42575_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?42006_))
                                            _stx41905_
                                            (let* ((_specializer-id42603_
                                                    (let* ((_id42597_
                                                            (make-symbol
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L41980_))
                     '"::specialize"))
                   (_specializer-id42600_
                    (let ((__tmp47206
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx41905_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id42597_ __tmp47206))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id42600_))
              _specializer-id42600_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id42610_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?42008_))
                                                        (let* ((_id42605_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (gx#stx-e _L41980_))
                         '"::specialize::unchecked"))
                       (_lifted-specializer-id42607_
                        (let ((__tmp47207
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx41905_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id42605_ __tmp47207))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id42607_))
                  _lifted-specializer-id42607_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t42612_
                                                    (make-symbol
                                                     (gensym '__t)))
                                                   (_methods42614_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls41999_)))
                                                   (_$methods42618_
                                                    (map (lambda (_id42616_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id42616_)))
                                                         _methods42614_))
                                                   (_g47208_
                                                    (for-each
                                                     (lambda (_g4261942622_
                                                              _g4262042624_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls41999_
                                                          _g4261942622_
                                                          _g4262042624_)))
                                                     _methods42614_
                                                     _$methods42618_))
                                                   (_methods-bind42635_
                                                    (map (lambda (_g4262742630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4262842632_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind41907_
                      _$t42612_
                      _g4262742630_
                      _g4262842632_)))
                 _methods42614_
                 _$methods42618_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots42637_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs42000_)))
                                                   (_$slots42641_
                                                    (map (lambda (_id42639_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id42639_)))
                                                         _slots42637_))
                                                   (_g47209_
                                                    (for-each
                                                     (lambda (_g4264242645_
                                                              _g4264342647_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs42000_
                                                          _g4264242645_
                                                          _g4264342647_)))
                                                     _slots42637_
                                                     _$slots42641_))
                                                   (_slots-bind42658_
                                                    (map (lambda (_g4265042653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4265142655_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind41908_
                      _$t42612_
                      _g4265042653_
                      _g4265142655_)))
                 _slots42637_
                 _$slots42641_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check42660_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check42001_)))
                                                   (_$class-check42663_
                                                    (map (lambda (_g47210_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _class-check42660_))
                                                   (_g47211_
                                                    (for-each
                                                     (lambda (_g4266442667_
                                                              _g4266542669_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check42001_
                                                          _g4266442667_
                                                          _g4266542669_)))
                                                     _class-check42660_
                                                     _$class-check42663_))
                                                   (_class-check-bind42680_
                                                    (map (lambda (_g4267242675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4267342677_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind41909_
                      _$t42612_
                      _g4267242675_
                      _g4267342677_)))
                 _class-check42660_
                 _$class-check42663_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all42682_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check42002_
                                                       _struct-type-assert42003_)))
                                                   (_struct-check42684_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all42682_)))
                                                   (_$struct-check42687_
                                                    (map (lambda (_g47212_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _struct-check42684_))
                                                   (_g47213_
                                                    (for-each
                                                     (lambda (_g4268842691_
                                                              _g4268942693_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all42682_
                                                          _g4268842691_
                                                          _g4268942693_)))
                                                     _struct-check42684_
                                                     _$struct-check42687_))
                                                   (_struct-check-bind42704_
                                                    (map (lambda (_g4269642699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4269742701_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind41910_
                      _$t42612_
                      _g4269642699_
                      _g4269742701_)))
                 _struct-check42684_
                 _$struct-check42687_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl42715_
                                                    (lambda (_struct-type-check142706_
                                                             _struct-type-check242707_)
                                                      (let* ((_specializer-body42713_
                                                              (map (lambda (_g4270842710_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g4270842710_
                                _L42577_
                                _$t42612_
                                _method-calls41999_
                                _slot-refs42000_
                                _class-type-check42001_
                                _struct-type-check142706_
                                _struct-type-check242707_)))
                           _L42575_))
                     (__tmp47214
                      (let ((__tmp47215
                             (let ((__tmp47216
                                    (let ()
                                      (declare (not safe))
                                      (cons _L42577_ _L42576_))))
                               (declare (not safe))
                               (cons __tmp47216 _specializer-body42713_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp47215))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp47214 _stx41905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl42717_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl42715_
                                                       _struct-check-all42682_
                                                       _empty42004_)))
                                                   (_unchecked-specializer-impl42719_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?42007_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl42715_
                                                           _empty42004_
                                                           _struct-check-all42682_))
                                                        '#f))
                                                   (_specializer-impl42721_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl41911_
                                                       _$t42612_
                                                       _methods-bind42635_
                                                       _slots-bind42658_
                                                       _class-check-bind42680_
                                                       _struct-check-bind42704_
                                                       _specializer-impl42717_
                                                       _lifted-specializer-id42610_
                                                       _unchecked-specializer-impl42719_))))
                                              (let ((__tmp47218
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L41980_)))
                                                    (__tmp47217
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id42603_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp47218
                                                 '" => "
                                                 __tmp47217))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def41912_
                                                 _L41980_
                                                 _specializer-id42603_
                                                 _specializer-impl42721_
                                                 _lifted-specializer-id42610_
                                                 _unchecked-specializer-impl42719_))))))
                                     (___kont4529945300_
                                      (lambda () _stx41905_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx4529545296_))
                                     (let ((_e4252842551_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx4529545296_))))
                                       (let ((_tl4252642556_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4252842551_)))
                                             (_hd4252742554_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4252842551_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl4252642556_))
                                             (let ((_e4253142559_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl4252642556_))))
                                               (let ((_tl4252942564_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4253142559_)))
                                                     (_hd4253042562_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4253142559_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd4253042562_))
                                                     (let ((_e4253442567_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd4253042562_))))
                                                       (let ((_tl4253242572_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4253442567_)))
                     (_hd4253342570_
                      (let () (declare (not safe)) (##car _e4253442567_))))
                 (___kont4529745298_
                  _tl4252942564_
                  _tl4253242572_
                  _hd4253342570_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4529945300_))))
                                             (___kont4529945300_))))
                                     (___kont4529945300_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L41979_))
                                 (let* ((_g4272742746_
                                         (lambda (_g4272842743_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g4272842743_))))
                                        (_g4272643097_
                                         (lambda (_g4272842749_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _g4272842749_))
                                               (let ((_e4273242751_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g4272842749_))))
                                                 (let ((_hd4273142754_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4273242751_)))
                                                       (_tl4273042756_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4273242751_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl4273042756_))
                                                       (let ((_g47189_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl4273042756_ '0))))
                 (begin
                   (let ((_g47190_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g47189_)
                                (##vector-length _g47189_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g47190_ 2)))
                         (error "Context expects 2 values" _g47190_)))
                   (let ((_target4273342759_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g47189_ 0)))
                         (_tl4273542761_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g47189_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl4273542761_))
                         (letrec ((_loop4273642764_
                                   (lambda (_hd4273442767_ _clause4274042769_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd4273442767_))
                                         (let ((_e4273742772_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd4273442767_))))
                                           (let ((_lp-hd4273842775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4273742772_)))
                                                 (_lp-tl4273942777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4273742772_))))
                                             (let ((__tmp47205
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd4273842775_
                                                            _clause4274042769_))))
                                               (declare (not safe))
                                               (_loop4273642764_
                                                _lp-tl4273942777_
                                                __tmp47205))))
                                         (let ((_clause4274142780_
                                                (reverse _clause4274042769_)))
                                           ((lambda (_L42783_)
                                              (for-each
                                               (lambda (_clause42796_)
                                                 (let* ((___stx4532145322_
                                                         _clause42796_)
                                                        (_g4279942814_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx4532145322_)))))
                                                   (let ((___kont4532345324_
                                                          (lambda (_L42842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L42843_
                           _L42844_)
                    (for-each
                     (lambda (_g4285942861_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g4285942861_
                          _L42844_
                          _method-calls41999_
                          _slot-refs42000_
                          _class-type-check42001_
                          _struct-type-check42002_
                          _struct-type-assert42003_)))
                     _L42842_)))
                 (___kont4532545326_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx4532145322_))
                                                         (let ((_e4280642826_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx4532145322_))))
                   (let ((_tl4280442831_
                          (let () (declare (not safe)) (##cdr _e4280642826_)))
                         (_hd4280542829_
                          (let () (declare (not safe)) (##car _e4280642826_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd4280542829_))
                         (let ((_e4280942834_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd4280542829_))))
                           (let ((_tl4280742839_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4280942834_)))
                                 (_hd4280842837_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4280942834_))))
                             (___kont4532345324_
                              _tl4280442831_
                              _tl4280742839_
                              _hd4280842837_)))
                         (___kont4532545326_))))
                 (___kont4532545326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp47191
                                                      (lambda (_g4286642869_
                                                               _g4286742871_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4286642869_
                                                                _g4286742871_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp47191
                                                         '()
                                                         _L42783_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?42006_))
                                                  _stx41905_
                                                  (let* ((_specializer-id42880_
                                                          (let* ((_id42874_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L41980_))
                           '"::specialize"))
                         (_specializer-id42877_
                          (let ((__tmp47192
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx41905_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id42874_ __tmp47192))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id42877_))
                    _specializer-id42877_))
                 (_lifted-specializer-id42887_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?42008_))
                      (let* ((_id42882_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L41980_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id42884_
                              (let ((__tmp47193
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx41905_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id42882_
                                 __tmp47193))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id42884_))
                        _lifted-specializer-id42884_)
                      '#f))
                 (_$t42889_ (make-symbol (gensym '__t)))
                 (_methods42891_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls41999_)))
                 (_$methods42895_
                  (map (lambda (_id42893_)
                         (make-symbol '"__" (gensym _id42893_)))
                       _methods42891_))
                 (_g47194_
                  (for-each
                   (lambda (_g4289642899_ _g4289742901_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls41999_
                        _g4289642899_
                        _g4289742901_)))
                   _methods42891_
                   _$methods42895_))
                 (_methods-bind42912_
                  (map (lambda (_g4290442907_ _g4290542909_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind41907_
                            _$t42889_
                            _g4290442907_
                            _g4290542909_)))
                       _methods42891_
                       _$methods42895_))
                 (_slots42914_
                  (let () (declare (not safe)) (hash-keys _slot-refs42000_)))
                 (_$slots42918_
                  (map (lambda (_id42916_)
                         (make-symbol '"__" (gensym _id42916_)))
                       _slots42914_))
                 (_g47195_
                  (for-each
                   (lambda (_g4291942922_ _g4292042924_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs42000_
                        _g4291942922_
                        _g4292042924_)))
                   _slots42914_
                   _$slots42918_))
                 (_slots-bind42935_
                  (map (lambda (_g4292742930_ _g4292842932_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind41908_
                            _$t42889_
                            _g4292742930_
                            _g4292842932_)))
                       _slots42914_
                       _$slots42918_))
                 (_class-check42937_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check42001_)))
                 (_$class-check42940_
                  (map (lambda (_g47196_) (make-symbol (gensym '__class)))
                       _class-check42937_))
                 (_g47197_
                  (for-each
                   (lambda (_g4294142944_ _g4294242946_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check42001_
                        _g4294142944_
                        _g4294242946_)))
                   _class-check42937_
                   _$class-check42940_))
                 (_class-check-bind42957_
                  (map (lambda (_g4294942952_ _g4295042954_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind41909_
                            _$t42889_
                            _g4294942952_
                            _g4295042954_)))
                       _class-check42937_
                       _$class-check42940_))
                 (_struct-check-all42959_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check42002_
                     _struct-type-assert42003_)))
                 (_struct-check42961_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all42959_)))
                 (_$struct-check42964_
                  (map (lambda (_g47198_) (make-symbol (gensym '__class)))
                       _struct-check42961_))
                 (_g47199_
                  (for-each
                   (lambda (_g4296542968_ _g4296642970_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all42959_
                        _g4296542968_
                        _g4296642970_)))
                   _struct-check42961_
                   _$struct-check42964_))
                 (_struct-check-bind42981_
                  (map (lambda (_g4297342976_ _g4297442978_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind41910_
                            _$t42889_
                            _g4297342976_
                            _g4297442978_)))
                       _struct-check42961_
                       _$struct-check42964_))
                 (_make-specializer-impl43088_
                  (lambda (_struct-type-check142983_ _struct-type-check242984_)
                    (let* ((_specializer-clauses43086_
                            (map (lambda (_clause42986_)
                                   (let* ((___stx4534145342_ _clause42986_)
                                          (_g4298943004_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx4534145342_)))))
                                     (let ((___kont4534345344_
                                            (lambda (_L43032_
                                                     _L43033_
                                                     _L43034_)
                                              (let* ((_body43074_
                                                      (map (lambda (_g4306943071_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g4306943071_
                        _L43034_
                        _$t42889_
                        _method-calls41999_
                        _slot-refs42000_
                        _class-type-check42001_
                        _struct-type-check142983_
                        _struct-type-check242984_)))
                   _L43032_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp47200
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L43034_
                                                              _L43033_))))
                                                (declare (not safe))
                                                (cons __tmp47200
                                                      _body43074_))))
                                           (___kont4534545346_
                                            (lambda () _clause42986_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? ___stx4534145342_))
                                           (let ((_e4299643016_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx4534145342_))))
                                             (let ((_tl4299443021_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4299643016_)))
                                                   (_hd4299543019_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4299643016_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd4299543019_))
                                                   (let ((_e4299943024_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd4299543019_))))
                                                     (let ((_tl4299743029_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4299943024_)))
                                                           (_hd4299843027_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4299943024_))))
                                                       (___kont4534345344_
                                                        _tl4299443021_
                                                        _tl4299743029_
                                                        _hd4299843027_)))
                                                   (___kont4534545346_))))
                                           (___kont4534545346_)))))
                                 (let ((__tmp47201
                                        (lambda (_g4307843081_ _g4307943083_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4307843081_
                                                  _g4307943083_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47201 '() _L42783_))))
                           (__tmp47202
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses43086_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp47202 _stx41905_))))
                 (_specializer-impl43090_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl43088_
                     _struct-check-all42959_
                     _empty42004_)))
                 (_unchecked-specializer-impl43092_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?42007_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl43088_
                         _empty42004_
                         _struct-check-all42959_))
                      '#f))
                 (_specializer-impl43094_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl41911_
                     _$t42889_
                     _methods-bind42912_
                     _slots-bind42935_
                     _class-check-bind42957_
                     _struct-check-bind42981_
                     _specializer-impl43090_
                     _lifted-specializer-id42887_
                     _unchecked-specializer-impl43092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp47204
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L41980_)))
                                                          (__tmp47203
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id42880_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp47204
                                                       '" => "
                                                       __tmp47203))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def41912_
                                                       _L41980_
                                                       _specializer-id42880_
                                                       _specializer-impl43094_
                                                       _lifted-specializer-id42887_
                                                       _unchecked-specializer-impl43092_)))))
                                            _clause4274142780_))))))
                           (let ()
                             (declare (not safe))
                             (_loop4273642764_ _target4273342759_ '())))
                         (let ()
                           (declare (not safe))
                           (_g4272742746_ _g4272842749_))))))
               (let () (declare (not safe)) (_g4272742746_ _g4272842749_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4272742746_
                                                  _g4272842749_))))))
                                   (declare (not safe))
                                   (_g4272643097_ _L41979_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L41979_))
                                     (let* ((_g4310043130_
                                             (lambda (_g4310143127_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g4310143127_))))
                                            (_g4309943818_
                                             (lambda (_g4310143133_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4310143133_))
                                                   (let ((_e4310743135_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4310143133_))))
                                                     (let ((_hd4310643138_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4310743135_)))
                                                           (_tl4310543140_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4310743135_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4310543140_))
                                                           (let ((_e4311043143_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4310543140_))))
                     (let ((_hd4310943146_
                            (let ()
                              (declare (not safe))
                              (##car _e4311043143_)))
                           (_tl4310843148_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4311043143_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4310943146_))
                           (let ((_e4311343151_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4310943146_))))
                             (let ((_hd4311243154_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4311343151_)))
                                   (_tl4311143156_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4311343151_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4311243154_))
                                   (let ((_e4311643159_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4311243154_))))
                                     (let ((_hd4311543162_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4311643159_)))
                                           (_tl4311443164_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4311643159_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd4311543162_))
                                           (let ((_e4311943167_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd4311543162_))))
                                             (let ((_hd4311843170_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4311943167_)))
                                                   (_tl4311743172_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4311943167_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4311743172_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl4311443164_))
                                                       (let ((_e4312243175_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl4311443164_))))
                 (let ((_hd4312143178_
                        (let () (declare (not safe)) (##car _e4312243175_)))
                       (_tl4312043180_
                        (let () (declare (not safe)) (##cdr _e4312243175_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4312043180_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4311143156_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4310843148_))
                               (let ((_e4312543183_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4310843148_))))
                                 (let ((_hd4312443186_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4312543183_)))
                                       (_tl4312343188_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4312543183_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4312343188_))
                                       ((lambda (_L43191_ _L43192_ _L43193_)
                                          (let* ((_g4321643234_
                                                  (lambda (_g4321743231_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g4321743231_))))
                                                 (_g4321543285_
                                                  (lambda (_g4321743237_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4321743237_))
                                                        (let ((_e4322343239_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4321743237_))))
                  (let ((_hd4322243242_
                         (let () (declare (not safe)) (##car _e4322343239_)))
                        (_tl4322143244_
                         (let () (declare (not safe)) (##cdr _e4322343239_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl4322143244_))
                        (let ((_e4322643247_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl4322143244_))))
                          (let ((_hd4322543250_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4322643247_)))
                                (_tl4322443252_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4322643247_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd4322543250_))
                                (let ((_e4322943255_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd4322543250_))))
                                  (let ((_hd4322843258_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4322943255_)))
                                        (_tl4322743260_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4322943255_))))
                                    ((lambda (_L43263_ _L43264_ _L43265_)
                                       (for-each
                                        (lambda (_g4328043282_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g4328043282_
                                             _L43265_
                                             _method-calls41999_
                                             _slot-refs42000_
                                             _class-type-check42001_
                                             _struct-type-check42002_
                                             _struct-type-assert42003_)))
                                        _L43263_))
                                     _tl4322443252_
                                     _tl4322743260_
                                     _hd4322843258_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4321643234_ _g4321743237_)))))
                        (let ()
                          (declare (not safe))
                          (_g4321643234_ _g4321743237_)))))
                (let () (declare (not safe)) (_g4321643234_ _g4321743237_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4321543285_ _L43192_))
                                          (let* ((_g4328843307_
                                                  (lambda (_g4328943304_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g4328943304_))))
                                                 (_g4328743426_
                                                  (lambda (_g4328943310_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4328943310_))
                                                        (let ((_e4329343312_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4328943310_))))
                  (let ((_hd4329243315_
                         (let () (declare (not safe)) (##car _e4329343312_)))
                        (_tl4329143317_
                         (let () (declare (not safe)) (##cdr _e4329343312_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4329143317_))
                        (let ((_g47159_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl4329143317_ '0))))
                          (begin
                            (let ((_g47160_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g47159_)
                                         (##vector-length _g47159_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g47160_ 2)))
                                  (error "Context expects 2 values" _g47160_)))
                            (let ((_target4329443320_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g47159_ 0)))
                                  (_tl4329643322_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g47159_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4329643322_))
                                  (letrec ((_loop4329743325_
                                            (lambda (_hd4329543328_
                                                     _clause4330143330_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd4329543328_))
                                                  (let ((_e4329843333_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd4329543328_))))
                                                    (let ((_lp-hd4329943336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4329843333_)))
                                                          (_lp-tl4330043338_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4329843333_))))
                                                      (let ((__tmp47162
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd4329943336_ _clause4330143330_))))
                (declare (not safe))
                (_loop4329743325_ _lp-tl4330043338_ __tmp47162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause4330243341_
                                                         (reverse _clause4330143330_)))
                                                    ((lambda (_L43344_)
                                                       (for-each
                                                        (lambda (_clause43357_)
                                                          (let* ((_g4335943374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g4336043371_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g4336043371_))))
                         (_g4335843416_
                          (lambda (_g4336043377_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g4336043377_))
                                (let ((_e4336643379_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g4336043377_))))
                                  (let ((_hd4336543382_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4336643379_)))
                                        (_tl4336443384_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4336643379_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4336543382_))
                                        (let ((_e4336943387_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4336543382_))))
                                          (let ((_hd4336843390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4336943387_)))
                                                (_tl4336743392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4336943387_))))
                                            ((lambda (_L43395_
                                                      _L43396_
                                                      _L43397_)
                                               (for-each
                                                (lambda (_g4341143413_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g4341143413_
                                                     _L43397_
                                                     _method-calls41999_
                                                     _slot-refs42000_
                                                     _class-type-check42001_
                                                     _struct-type-check42002_
                                                     _struct-type-assert42003_)))
                                                _L43395_))
                                             _tl4336443384_
                                             _tl4336743392_
                                             _hd4336843390_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4335943374_ _g4336043377_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4335943374_ _g4336043377_))))))
                    (declare (not safe))
                    (_g4335843416_ _clause43357_)))
                (let ((__tmp47161
                       (lambda (_g4341843421_ _g4341943423_)
                         (let ()
                           (declare (not safe))
                           (cons _g4341843421_ _g4341943423_)))))
                  (declare (not safe))
                  (foldr1 __tmp47161 '() _L43344_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause4330243341_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop4329743325_
                                       _target4329443320_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g4328843307_ _g4328943310_))))))
                        (let ()
                          (declare (not safe))
                          (_g4328843307_ _g4328943310_)))))
                (let () (declare (not safe)) (_g4328843307_ _g4328943310_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4328743426_ _L43191_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?42006_))
                                              _stx41905_
                                              (let* ((_specializer-id43435_
                                                      (let* ((_id43429_
                                                              (make-symbol
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L41980_))
                       '"::specialize"))
                     (_specializer-id43432_
                      (let ((__tmp47163
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx41905_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id43429_ __tmp47163))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id43432_))
                _specializer-id43432_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id43442_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?42008_))
                                                          (let* ((_id43437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L41980_))
                           '"::specialize::unchecked"))
                         (_lifted-specializer-id43439_
                          (let ((__tmp47164
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx41905_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id43437_ __tmp47164))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id43439_))
                    _lifted-specializer-id43439_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t43444_
                                                      (make-symbol
                                                       (gensym '__t)))
                                                     (_methods43446_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls41999_)))
                                                     (_$methods43450_
                                                      (map (lambda (_id43448_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id43448_)))
                                                           _methods43446_))
                                                     (_g47165_
                                                      (for-each
                                                       (lambda (_g4345143454_
                                                                _g4345243456_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls41999_
                                                            _g4345143454_
                                                            _g4345243456_)))
                                                       _methods43446_
                                                       _$methods43450_))
                                                     (_methods-bind43467_
                                                      (map (lambda (_g4345943462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4346043464_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind41907_
                        _$t43444_
                        _g4345943462_
                        _g4346043464_)))
                   _methods43446_
                   _$methods43450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots43469_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs42000_)))
                                                     (_$slots43473_
                                                      (map (lambda (_id43471_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id43471_)))
                                                           _slots43469_))
                                                     (_g47166_
                                                      (for-each
                                                       (lambda (_g4347443477_
                                                                _g4347543479_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs42000_
                                                            _g4347443477_
                                                            _g4347543479_)))
                                                       _slots43469_
                                                       _$slots43473_))
                                                     (_slots-bind43490_
                                                      (map (lambda (_g4348243485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4348343487_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind41908_
                        _$t43444_
                        _g4348243485_
                        _g4348343487_)))
                   _slots43469_
                   _$slots43473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check43492_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check42001_)))
                                                     (_$class-check43495_
                                                      (map (lambda (_g47167_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _class-check43492_))
                                                     (_g47168_
                                                      (for-each
                                                       (lambda (_g4349643499_
                                                                _g4349743501_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check42001_
                                                            _g4349643499_
                                                            _g4349743501_)))
                                                       _class-check43492_
                                                       _$class-check43495_))
                                                     (_class-check-bind43512_
                                                      (map (lambda (_g4350443507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4350543509_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind41909_
                        _$t43444_
                        _g4350443507_
                        _g4350543509_)))
                   _class-check43492_
                   _$class-check43495_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all43514_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check42002_
                                                         _struct-type-assert42003_)))
                                                     (_struct-check43516_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all43514_)))
                                                     (_$struct-check43519_
                                                      (map (lambda (_g47169_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _struct-check43516_))
                                                     (_g47170_
                                                      (for-each
                                                       (lambda (_g4352043523_
                                                                _g4352143525_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all43514_
                                                            _g4352043523_
                                                            _g4352143525_)))
                                                       _struct-check43516_
                                                       _$struct-check43519_))
                                                     (_struct-check-bind43536_
                                                      (map (lambda (_g4352843531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4352943533_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind41910_
                        _$t43444_
                        _g4352843531_
                        _g4352943533_)))
                   _struct-check43516_
                   _$struct-check43519_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr43635_
                                                      (lambda (_struct-type-check143538_
                                                               _struct-type-check243539_)
                                                        (let* ((_g4354143559_
                                                                (lambda (_g4354243556_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g4354243556_))))
                       (_g4354043632_
                        (lambda (_g4354243562_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4354243562_))
                              (let ((_e4354843564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4354243562_))))
                                (let ((_hd4354743567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4354843564_)))
                                      (_tl4354643569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4354843564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4354643569_))
                                      (let ((_e4355143572_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4354643569_))))
                                        (let ((_hd4355043575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4355143572_)))
                                              (_tl4354943577_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4355143572_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd4355043575_))
                                              (let ((_e4355443580_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd4355043575_))))
                                                (let ((_hd4355343583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4355443580_)))
                                                      (_tl4355243585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4355443580_))))
                                                  ((lambda (_L43588_
                                                            _L43589_
                                                            _L43590_)
                                                     (let* ((_body43630_
                                                             (map (lambda (_g4362543627_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g4362543627_
                               _L43590_
                               _$t43444_
                               _method-calls41999_
                               _slot-refs42000_
                               _class-type-check42001_
                               _struct-type-check143538_
                               _struct-type-check243539_)))
                          _L43588_))
                    (__tmp47171
                     (let ((__tmp47172
                            (let ((__tmp47173
                                   (let ()
                                     (declare (not safe))
                                     (cons _L43590_ _L43589_))))
                              (declare (not safe))
                              (cons __tmp47173 _body43630_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp47172))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp47171 _L43192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl4354943577_
                                                   _tl4355243585_
                                                   _hd4355343583_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4354143559_
                                                 _g4354243562_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4354143559_ _g4354243562_)))))
                              (let ()
                                (declare (not safe))
                                (_g4354143559_ _g4354243562_))))))
                  (declare (not safe))
                  (_g4354043632_ _L43192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr43796_
                                                      (lambda (_struct-type-check143637_
                                                               _struct-type-check243638_)
                                                        (let* ((_g4364043659_
                                                                (lambda (_g4364143656_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g4364143656_))))
                       (_g4363943793_
                        (lambda (_g4364143662_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4364143662_))
                              (let ((_e4364543664_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4364143662_))))
                                (let ((_hd4364443667_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4364543664_)))
                                      (_tl4364343669_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4364543664_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl4364343669_))
                                      (let ((_g47174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl4364343669_
                                                '0))))
                                        (begin
                                          (let ((_g47175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g47174_)
                                                       (##vector-length
                                                        _g47174_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g47175_ 2)))
                                                (error "Context expects 2 values"
                                                       _g47175_)))
                                          (let ((_target4364643672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47174_ 0)))
                                                (_tl4364843674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g47174_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl4364843674_))
                                                (letrec ((_loop4364943677_
                                                          (lambda (_hd4364743680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause4365343682_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd4364743680_))
                        (let ((_e4365043685_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd4364743680_))))
                          (let ((_lp-hd4365143688_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4365043685_)))
                                (_lp-tl4365243690_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4365043685_))))
                            (let ((__tmp47179
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4365143688_
                                           _clause4365343682_))))
                              (declare (not safe))
                              (_loop4364943677_
                               _lp-tl4365243690_
                               __tmp47179))))
                        (let ((_clause4365443693_
                               (reverse _clause4365343682_)))
                          ((lambda (_L43696_)
                             (let* ((_clauses43791_
                                     (map (lambda (_clause43711_)
                                            (let* ((___stx4536145362_
                                                    _clause43711_)
                                                   (_g4371443729_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx4536145362_)))))
                                              (let ((___kont4536345364_
                                                     (lambda (_L43757_
                                                              _L43758_
                                                              _L43759_)
                                                       (let* ((_body43779_
                                                               (map (lambda (_g4377443776_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g4377443776_
                                 _L43759_
                                 _$t43444_
                                 _method-calls41999_
                                 _slot-refs42000_
                                 _class-type-check42001_
                                 _struct-type-check143637_
                                 _struct-type-check243638_)))
                            _L43757_))
                      (__tmp47176
                       (let () (declare (not safe)) (cons _L43759_ _L43758_))))
                 (declare (not safe))
                 (cons __tmp47176 _body43779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4536545366_
                                                     (lambda ()
                                                       _clause43711_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx4536145362_))
                                                    (let ((_e4372143741_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx4536145362_))))
                                                      (let ((_tl4371943746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4372143741_)))
                    (_hd4372043744_
                     (let () (declare (not safe)) (##car _e4372143741_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4372043744_))
                    (let ((_e4372443749_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4372043744_))))
                      (let ((_tl4372243754_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4372443749_)))
                            (_hd4372343752_
                             (let ()
                               (declare (not safe))
                               (##car _e4372443749_))))
                        (___kont4536345364_
                         _tl4371943746_
                         _tl4372243754_
                         _hd4372343752_)))
                    (___kont4536545366_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4536545366_)))))
                                          (let ((__tmp47177
                                                 (lambda (_g4378343786_
                                                          _g4378443788_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g4378343786_
                                                           _g4378443788_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp47177 '() _L43696_))))
                                    (__tmp47178
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses43791_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp47178 _L43191_)))
                           _clause4365443693_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop4364943677_
                                                     _target4364643672_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4364043659_
                                                   _g4364143662_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4364043659_ _g4364143662_)))))
                              (let ()
                                (declare (not safe))
                                (_g4364043659_ _g4364143662_))))))
                  (declare (not safe))
                  (_g4363943793_ _L43191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl43801_
                                                      (lambda (_specializer-lambda-expr43798_
                                                               _specializer-case-lambda-expr43799_)
                                                        (let ((__tmp47180
                                                               (let ((__tmp47181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp47183
                                     (let ((__tmp47184
                                            (let ((__tmp47186
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L43193_ '())))
                                                  (__tmp47185
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr43798_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp47186 __tmp47185))))
                                       (declare (not safe))
                                       (cons __tmp47184 '())))
                                    (__tmp47182
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr43799_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp47183 __tmp47182))))
                         (declare (not safe))
                         (cons '%#let-values __tmp47181))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp47180 _stx41905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr43803_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr43635_
                                                         _struct-check-all43514_
                                                         _empty42004_)))
                                                     (_specializer-case-lambda-expr43805_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr43796_
                                                         _struct-check-all43514_
                                                         _empty42004_)))
                                                     (_specializer-impl43807_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl43801_
                                                         _specializer-lambda-expr43803_
                                                         _specializer-case-lambda-expr43805_)))
                                                     (_unchecked-specializer-lambda-expr43809_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?42007_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr43635_
                                                             _empty42004_
                                                             _struct-check-all43514_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr43811_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?42007_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr43796_
                                                             _empty42004_
                                                             _struct-check-all43514_))
                                                          '#f))
                                                     (_unchecked-specializer-impl43813_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?42007_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl43801_
                                                             _unchecked-specializer-lambda-expr43809_
                                                             _unchecked-specializer-case-lambda-expr43811_))
                                                          '#f))
                                                     (_specializer-impl43815_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl41911_
                                                         _$t43444_
                                                         _methods-bind43467_
                                                         _slots-bind43490_
                                                         _class-check-bind43512_
                                                         _struct-check-bind43536_
                                                         _specializer-impl43807_
                                                         _lifted-specializer-id43442_
                                                         _unchecked-specializer-impl43813_))))
                                                (let ((__tmp47188
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L41980_)))
                                                      (__tmp47187
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id43435_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp47188
                                                   '" => "
                                                   __tmp47187))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def41912_
                                                   _L41980_
                                                   _specializer-id43435_
                                                   _specializer-impl43815_
                                                   _lifted-specializer-id43442_
                                                   _unchecked-specializer-impl43813_)))))
                                        _hd4312443186_
                                        _hd4312143178_
                                        _hd4311843170_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4310043130_ _g4310143133_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4310043130_ _g4310143133_)))
                           (let ()
                             (declare (not safe))
                             (_g4310043130_ _g4310143133_)))
                       (let ()
                         (declare (not safe))
                         (_g4310043130_ _g4310143133_)))))
               (let () (declare (not safe)) (_g4310043130_ _g4310143133_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4310043130_
                                                      _g4310143133_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4310043130_ _g4310143133_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4310043130_ _g4310143133_)))))
                           (let ()
                             (declare (not safe))
                             (_g4310043130_ _g4310143133_)))))
                   (let ()
                     (declare (not safe))
                     (_g4310043130_ _g4310143133_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4310043130_
                                                      _g4310143133_))))))
                                       (declare (not safe))
                                       (_g4309943818_ _L41979_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L41979_))
                                         (let* ((_g4382143874_
                                                 (lambda (_g4382243871_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g4382243871_))))
                                                (_g4382045146_
                                                 (lambda (_g4382243877_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4382243877_))
                                                       (let ((_e4383043879_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4382243877_))))
                 (let ((_hd4382943882_
                        (let () (declare (not safe)) (##car _e4383043879_)))
                       (_tl4382843884_
                        (let () (declare (not safe)) (##cdr _e4383043879_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd4382943882_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd4382943882_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4382843884_))
                               (let ((_e4383343887_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4382843884_))))
                                 (let ((_hd4383243890_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4383343887_)))
                                       (_tl4383143892_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4383343887_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4383243890_))
                                       (let ((_e4383643895_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4383243890_))))
                                         (let ((_hd4383543898_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4383643895_)))
                                               (_tl4383443900_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4383643895_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4383543898_))
                                               (let ((_e4383943903_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4383543898_))))
                                                 (let ((_hd4383843906_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4383943903_)))
                                                       (_tl4383743908_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4383943903_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd4383843906_))
                                                       (let ((_e4384243911_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd4383843906_))))
                 (let ((_hd4384143914_
                        (let () (declare (not safe)) (##car _e4384243911_)))
                       (_tl4384043916_
                        (let () (declare (not safe)) (##cdr _e4384243911_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4384043916_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl4383743908_))
                           (let ((_e4384543919_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl4383743908_))))
                             (let ((_hd4384443922_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4384543919_)))
                                   (_tl4384343924_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4384543919_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4384443922_))
                                   (let ((_e4384843927_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4384443922_))))
                                     (let ((_hd4384743930_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4384843927_)))
                                           (_tl4384643932_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4384843927_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd4384743930_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd4384743930_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl4384643932_))
                                                   (let ((_e4385143935_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl4384643932_))))
                                                     (let ((_hd4385043938_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4385143935_)))
                                                           (_tl4384943940_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4385143935_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd4385043938_))
                                                           (let ((_e4385443943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd4385043938_))))
                     (let ((_hd4385343946_
                            (let ()
                              (declare (not safe))
                              (##car _e4385443943_)))
                           (_tl4385243948_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4385443943_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4385343946_))
                           (let ((_e4385743951_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4385343946_))))
                             (let ((_hd4385643954_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4385743951_)))
                                   (_tl4385543956_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4385743951_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4385643954_))
                                   (let ((_e4386043959_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4385643954_))))
                                     (let ((_hd4385943962_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4386043959_)))
                                           (_tl4385843964_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4386043959_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4385843964_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _tl4385543956_))
                                               (let ((_e4386343967_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl4385543956_))))
                                                 (let ((_hd4386243970_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4386343967_)))
                                                       (_tl4386143972_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4386343967_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4386143972_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl4385243948_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl4384943940_))
                       (let ((_e4386643975_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4384943940_))))
                         (let ((_hd4386543978_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4386643975_)))
                               (_tl4386443980_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4386643975_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4386443980_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl4384343924_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4383443900_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl4383143892_))
                                           (let ((_e4386943983_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl4383143892_))))
                                             (let ((_hd4386843986_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4386943983_)))
                                                   (_tl4386743988_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4386943983_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4386743988_))
                                                   ((lambda (_L43991_
                                                             _L43992_
                                                             _L43993_
                                                             _L43994_
                                                             _L43995_)
                                                      (let* ((_g4403444096_
                                                              (lambda (_g4403544093_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g4403544093_))))
                     (_g4403345143_
                      (lambda (_g4403544099_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g4403544099_))
                            (let ((_e4404344101_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g4403544099_))))
                              (let ((_hd4404244104_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4404344101_)))
                                    (_tl4404144106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4404344101_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd4404244104_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd4404244104_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl4404144106_))
                                            (let ((_e4404644109_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl4404144106_))))
                                              (let ((_hd4404544112_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4404644109_)))
                                                    (_tl4404444114_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4404644109_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4404444114_))
                                                    (let ((_e4404944117_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4404444114_))))
                                                      (let ((_hd4404844120_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4404944117_)))
                    (_tl4404744122_
                     (let () (declare (not safe)) (##cdr _e4404944117_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4404844120_))
                    (let ((_e4405244125_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4404844120_))))
                      (let ((_hd4405144128_
                             (let ()
                               (declare (not safe))
                               (##car _e4405244125_)))
                            (_tl4405044130_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4405244125_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd4405144128_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd4405144128_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl4405044130_))
                                    (let ((_e4405544133_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl4405044130_))))
                                      (let ((_hd4405444136_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4405544133_)))
                                            (_tl4405344138_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4405544133_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd4405444136_))
                                            (let ((_e4405844141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd4405444136_))))
                                              (let ((_hd4405744144_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4405844141_)))
                                                    (_tl4405644146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4405844141_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd4405744144_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd4405744144_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl4405644146_))
                                                            (let ((_e4406144149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl4405644146_))))
                      (let ((_hd4406044152_
                             (let ()
                               (declare (not safe))
                               (##car _e4406144149_)))
                            (_tl4405944154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4406144149_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4405944154_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl4405344138_))
                                (let ((_e4406444157_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl4405344138_))))
                                  (let ((_hd4406344160_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4406444157_)))
                                        (_tl4406244162_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4406444157_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4406344160_))
                                        (let ((_e4406744165_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4406344160_))))
                                          (let ((_hd4406644168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4406744165_)))
                                                (_tl4406544170_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4406744165_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd4406644168_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd4406644168_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl4406544170_))
                                                        (let ((_e4407044173_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl4406544170_))))
                  (let ((_hd4406944176_
                         (let () (declare (not safe)) (##car _e4407044173_)))
                        (_tl4406844178_
                         (let () (declare (not safe)) (##cdr _e4407044173_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl4406844178_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4406244162_))
                            (let ((_e4407344181_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4406244162_))))
                              (let ((_hd4407244184_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4407344181_)))
                                    (_tl4407144186_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4407344181_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4407244184_))
                                    (let ((_e4407644189_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4407244184_))))
                                      (let ((_hd4407544192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4407644189_)))
                                            (_tl4407444194_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4407644189_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd4407544192_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd4407544192_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4407444194_))
                                                    (let ((_e4407944197_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4407444194_))))
                                                      (let ((_hd4407844200_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4407944197_)))
                    (_tl4407744202_
                     (let () (declare (not safe)) (##cdr _e4407944197_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl4407744202_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4407144186_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl4407144186_))
                                  '1)
                            (let ((_g47085_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4407144186_
                                      '1))))
                              (begin
                                (let ((_g47086_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g47085_)
                                             (##vector-length _g47085_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g47086_ 2)))
                                      (error "Context expects 2 values"
                                             _g47086_)))
                                (let ((_target4408044205_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47085_ 0)))
                                      (_tl4408244207_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47085_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4408244207_))
                                      (let ((_e4409144210_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4408244207_))))
                                        (let ((_hd4409044213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4409144210_)))
                                              (_tl4408944215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4409144210_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl4408944215_))
                                              (letrec ((_loop4408344218_
                                                        (lambda (_hd4408144221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref4408744223_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd4408144221_))
                      (let ((_e4408444226_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd4408144221_))))
                        (let ((_lp-hd4408544229_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4408444226_)))
                              (_lp-tl4408644231_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4408444226_))))
                          (let ((__tmp47158
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4408544229_
                                         _kw-ref4408744223_))))
                            (declare (not safe))
                            (_loop4408344218_ _lp-tl4408644231_ __tmp47158))))
                      (let ((_kw-ref4408844234_ (reverse _kw-ref4408744223_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4404744122_))
                            ((lambda (_L44237_
                                      _L44238_
                                      _L44239_
                                      _L44240_
                                      _L44241_)
                               (let* ((_kw-count44292_
                                       (length (let ((__tmp47087
                                                      (lambda (_g4428444287_
                                                               _g4428544289_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4428444287_
                                                                _g4428544289_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp47087
                                                         '()
                                                         _L44238_))))
                                      (_self-index44294_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count44292_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L43993_))
                                     (let* ((_g4429744311_
                                             (lambda (_g4429844308_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g4429844308_))))
                                            (_g4429644482_
                                             (lambda (_g4429844314_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4429844314_))
                                                   (let ((_e4430344316_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4429844314_))))
                                                     (let ((_hd4430244319_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4430344316_)))
                                                           (_tl4430144321_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4430344316_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4430144321_))
                                                           (let ((_e4430644324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4430144321_))))
                     (let ((_hd4430544327_
                            (let ()
                              (declare (not safe))
                              (##car _e4430644324_)))
                           (_tl4430444329_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4430644324_))))
                       ((lambda (_L44332_ _L44333_)
                          (let ((_self44349_
                                 (list-ref _L44333_ _self-index44294_)))
                            (for-each
                             (lambda (_g4435044352_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g4435044352_
                                  _self44349_
                                  _method-calls41999_
                                  _slot-refs42000_
                                  _class-type-check42001_
                                  _struct-type-check42002_
                                  _struct-type-assert42003_)))
                             _L44332_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?42006_))
                                _stx41905_
                                (let* ((_specializer-id44361_
                                        (let* ((_id44355_
                                                (make-symbol
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _L41980_))
                                                 '"::specialize"))
                                               (_specializer-id44358_
                                                (let ((__tmp47131
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx41905_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id44355_
                                                   __tmp47131))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id44358_))
                                          _specializer-id44358_))
                                       (_lifted-specializer-id44368_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?42008_))
                                            (let* ((_id44363_
                                                    (make-symbol
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L41980_))
                                                     '"::specialize::unchecked"))
                                                   (_lifted-specializer-id44365_
                                                    (let ((__tmp47132
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx41905_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id44363_
                                                       __tmp47132))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id44365_))
                                              _lifted-specializer-id44365_)
                                            '#f))
                                       (_$t44370_ (make-symbol (gensym '__t)))
                                       (_methods44372_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls41999_)))
                                       (_$methods44376_
                                        (map (lambda (_id44374_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id44374_)))
                                             _methods44372_))
                                       (_g47133_
                                        (for-each
                                         (lambda (_g4437744380_ _g4437844382_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls41999_
                                              _g4437744380_
                                              _g4437844382_)))
                                         _methods44372_
                                         _$methods44376_))
                                       (_methods-bind44393_
                                        (map (lambda (_g4438544388_
                                                      _g4438644390_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind41907_
                                                  _$t44370_
                                                  _g4438544388_
                                                  _g4438644390_)))
                                             _methods44372_
                                             _$methods44376_))
                                       (_slots44395_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs42000_)))
                                       (_$slots44399_
                                        (map (lambda (_id44397_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id44397_)))
                                             _slots44395_))
                                       (_g47134_
                                        (for-each
                                         (lambda (_g4440044403_ _g4440144405_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs42000_
                                              _g4440044403_
                                              _g4440144405_)))
                                         _slots44395_
                                         _$slots44399_))
                                       (_slots-bind44416_
                                        (map (lambda (_g4440844411_
                                                      _g4440944413_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind41908_
                                                  _$t44370_
                                                  _g4440844411_
                                                  _g4440944413_)))
                                             _slots44395_
                                             _$slots44399_))
                                       (_class-check44418_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _class-type-check42001_)))
                                       (_$class-check44421_
                                        (map (lambda (_g47135_)
                                               (make-symbol (gensym '__class)))
                                             _class-check44418_))
                                       (_g47136_
                                        (for-each
                                         (lambda (_g4442244425_ _g4442344427_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check42001_
                                              _g4442244425_
                                              _g4442344427_)))
                                         _class-check44418_
                                         _$class-check44421_))
                                       (_class-check-bind44438_
                                        (map (lambda (_g4443044433_
                                                      _g4443144435_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind41909_
                                                  _$t44370_
                                                  _g4443044433_
                                                  _g4443144435_)))
                                             _class-check44418_
                                             _$class-check44421_))
                                       (_struct-check-all44440_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check42002_
                                           _struct-type-assert42003_)))
                                       (_struct-check44442_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _struct-check-all44440_)))
                                       (_$struct-check44445_
                                        (map (lambda (_g47137_)
                                               (make-symbol (gensym '__class)))
                                             _struct-check44442_))
                                       (_g47138_
                                        (for-each
                                         (lambda (_g4444644449_ _g4444744451_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all44440_
                                              _g4444644449_
                                              _g4444744451_)))
                                         _struct-check44442_
                                         _$struct-check44445_))
                                       (_struct-check-bind44462_
                                        (map (lambda (_g4445444457_
                                                      _g4445544459_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind41910_
                                                  _$t44370_
                                                  _g4445444457_
                                                  _g4445544459_)))
                                             _struct-check44442_
                                             _$struct-check44445_))
                                       (_make-specializer-impl44473_
                                        (lambda (_struct-type-check144464_
                                                 _struct-type-check244465_)
                                          (let* ((_specializer-body44471_
                                                  (map (lambda (_g4446644468_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g4446644468_
                                                            _self44349_
                                                            _$t44370_
                                                            _method-calls41999_
                                                            _slot-refs42000_
                                                            _class-type-check42001_
                                                            _struct-type-check144464_
                                                            _struct-type-check244465_)))
                                                       _L44332_))
                                                 (__tmp47139
                                                  (let ((__tmp47140
                                                         (let ((__tmp47142
                                                                (let ((__tmp47143
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp47155
                                      (let ()
                                        (declare (not safe))
                                        (cons _L43995_ '())))
                                     (__tmp47144
                                      (let ((__tmp47145
                                             (let ((__tmp47146
                                                    (let ((__tmp47148
                                                           (let ((__tmp47149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp47154
                                 (let ()
                                   (declare (not safe))
                                   (cons _L43994_ '())))
                                (__tmp47150
                                 (let ((__tmp47151
                                        (let ((__tmp47152
                                               (let ((__tmp47153
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L44333_
                                                              _specializer-body44471_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda __tmp47153))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp47152
                                           _L43993_))))
                                   (declare (not safe))
                                   (cons __tmp47151 '()))))
                            (declare (not safe))
                            (cons __tmp47154 __tmp47150))))
                     (declare (not safe))
                     (cons __tmp47149 '())))
                  (__tmp47147
                   (let () (declare (not safe)) (cons _L43992_ '()))))
              (declare (not safe))
              (cons __tmp47148 __tmp47147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp47146))))
                                        (declare (not safe))
                                        (cons __tmp47145 '()))))
                                 (declare (not safe))
                                 (cons __tmp47155 __tmp47144))))
                          (declare (not safe))
                          (cons __tmp47143 '())))
                       (__tmp47141
                        (let () (declare (not safe)) (cons _L43991_ '()))))
                   (declare (not safe))
                   (cons __tmp47142 __tmp47141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp47140))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp47139
                                             _stx41905_))))
                                       (_specializer-impl44475_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl44473_
                                           _struct-check-all44440_
                                           _empty42004_)))
                                       (_unchecked-specializer-impl44477_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?42007_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl44473_
                                               _empty42004_
                                               _struct-check-all44440_))
                                            '#f))
                                       (_specializer-impl44479_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl41911_
                                           _$t44370_
                                           _methods-bind44393_
                                           _slots-bind44416_
                                           _class-check-bind44438_
                                           _struct-check-bind44462_
                                           _specializer-impl44475_
                                           _lifted-specializer-id44368_
                                           _unchecked-specializer-impl44477_))))
                                  (let ((__tmp47157
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L41980_)))
                                        (__tmp47156
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id44361_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp47157
                                     '" => "
                                     __tmp47156))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def41912_
                                     _L41980_
                                     _specializer-id44361_
                                     _specializer-impl44479_
                                     _lifted-specializer-id44368_
                                     _unchecked-specializer-impl44477_))))))
                        _tl4430444329_
                        _hd4430544327_)))
                   (let ()
                     (declare (not safe))
                     (_g4429744311_ _g4429844314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4429744311_
                                                      _g4429844314_))))))
                                       (declare (not safe))
                                       (_g4429644482_ _L43993_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L43993_))
                                         (let* ((_g4448544515_
                                                 (lambda (_g4448644512_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g4448644512_))))
                                                (_g4448445140_
                                                 (lambda (_g4448644518_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4448644518_))
                                                       (let ((_e4449244520_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4448644518_))))
                 (let ((_hd4449144523_
                        (let () (declare (not safe)) (##car _e4449244520_)))
                       (_tl4449044525_
                        (let () (declare (not safe)) (##cdr _e4449244520_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl4449044525_))
                       (let ((_e4449544528_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4449044525_))))
                         (let ((_hd4449444531_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4449544528_)))
                               (_tl4449344533_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4449544528_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd4449444531_))
                               (let ((_e4449844536_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd4449444531_))))
                                 (let ((_hd4449744539_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4449844536_)))
                                       (_tl4449644541_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4449844536_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4449744539_))
                                       (let ((_e4450144544_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4449744539_))))
                                         (let ((_hd4450044547_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4450144544_)))
                                               (_tl4449944549_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4450144544_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4450044547_))
                                               (let ((_e4450444552_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4450044547_))))
                                                 (let ((_hd4450344555_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4450444552_)))
                                                       (_tl4450244557_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4450444552_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4450244557_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4449944549_))
                                                           (let ((_e4450744560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4449944549_))))
                     (let ((_hd4450644563_
                            (let ()
                              (declare (not safe))
                              (##car _e4450744560_)))
                           (_tl4450544565_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4450744560_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4450544565_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4449644541_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl4449344533_))
                                   (let ((_e4451044568_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl4449344533_))))
                                     (let ((_hd4450944571_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4451044568_)))
                                           (_tl4450844573_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4451044568_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4450844573_))
                                           ((lambda (_L44576_
                                                     _L44577_
                                                     _L44578_)
                                              (let* ((_g4460144615_
                                                      (lambda (_g4460244612_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g4460244612_))))
                                                     (_g4460044656_
                                                      (lambda (_g4460244618_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4460244618_))
                                                            (let ((_e4460744620_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4460244618_))))
                      (let ((_hd4460644623_
                             (let ()
                               (declare (not safe))
                               (##car _e4460744620_)))
                            (_tl4460544625_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4460744620_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4460544625_))
                            (let ((_e4461044628_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4460544625_))))
                              (let ((_hd4460944631_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4461044628_)))
                                    (_tl4460844633_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4461044628_))))
                                ((lambda (_L44636_ _L44637_)
                                   (let ((_self44650_
                                          (list-ref
                                           _L44637_
                                           _self-index44294_)))
                                     (for-each
                                      (lambda (_g4465144653_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g4465144653_
                                           _self44650_
                                           _method-calls41999_
                                           _slot-refs42000_
                                           _class-type-check42001_
                                           _struct-type-check42002_
                                           _struct-type-assert42003_)))
                                      _L44636_)))
                                 _tl4460844633_
                                 _hd4460944631_)))
                            (let ()
                              (declare (not safe))
                              (_g4460144615_ _g4460244618_)))))
                    (let ()
                      (declare (not safe))
                      (_g4460144615_ _g4460244618_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4460044656_ _L44577_))
                                              (let* ((_g4465944678_
                                                      (lambda (_g4466044675_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g4466044675_))))
                                                     (_g4465844783_
                                                      (lambda (_g4466044681_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4466044681_))
                                                            (let ((_e4466444683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4466044681_))))
                      (let ((_hd4466344686_
                             (let ()
                               (declare (not safe))
                               (##car _e4466444683_)))
                            (_tl4466244688_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4466444683_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl4466244688_))
                            (let ((_g47088_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4466244688_
                                      '0))))
                              (begin
                                (let ((_g47089_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g47088_)
                                             (##vector-length _g47088_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g47089_ 2)))
                                      (error "Context expects 2 values"
                                             _g47089_)))
                                (let ((_target4466544691_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47088_ 0)))
                                      (_tl4466744693_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g47088_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl4466744693_))
                                      (letrec ((_loop4466844696_
                                                (lambda (_hd4466644699_
                                                         _clause4467244701_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd4466644699_))
                                                      (let ((_e4466944704_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd4466644699_))))
                (let ((_lp-hd4467044707_
                       (let () (declare (not safe)) (##car _e4466944704_)))
                      (_lp-tl4467144709_
                       (let () (declare (not safe)) (##cdr _e4466944704_))))
                  (let ((__tmp47091
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd4467044707_ _clause4467244701_))))
                    (declare (not safe))
                    (_loop4466844696_ _lp-tl4467144709_ __tmp47091))))
              (let ((_clause4467344712_ (reverse _clause4467244701_)))
                ((lambda (_L44715_)
                   (for-each
                    (lambda (_clause44728_)
                      (let* ((_g4473044741_
                              (lambda (_g4473144738_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g4473144738_))))
                             (_g4472944773_
                              (lambda (_g4473144744_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g4473144744_))
                                    (let ((_e4473644746_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g4473144744_))))
                                      (let ((_hd4473544749_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4473644746_)))
                                            (_tl4473444751_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4473644746_))))
                                        ((lambda (_L44754_ _L44755_)
                                           (let ((_self44767_
                                                  (list-ref
                                                   _L44755_
                                                   _self-index44294_)))
                                             (for-each
                                              (lambda (_g4476844770_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g4476844770_
                                                   _self44767_
                                                   _method-calls41999_
                                                   _slot-refs42000_
                                                   _class-type-check42001_
                                                   _struct-type-check42002_
                                                   _struct-type-assert42003_)))
                                              _L44754_)))
                                         _tl4473444751_
                                         _hd4473544749_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4473044741_ _g4473144744_))))))
                        (declare (not safe))
                        (_g4472944773_ _clause44728_)))
                    (let ((__tmp47090
                           (lambda (_g4477544778_ _g4477644780_)
                             (let ()
                               (declare (not safe))
                               (cons _g4477544778_ _g4477644780_)))))
                      (declare (not safe))
                      (foldr1 __tmp47090 '() _L44715_))))
                 _clause4467344712_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop4466844696_
                                           _target4466544691_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g4465944678_ _g4466044681_))))))
                            (let ()
                              (declare (not safe))
                              (_g4465944678_ _g4466044681_)))))
                    (let ()
                      (declare (not safe))
                      (_g4465944678_ _g4466044681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4465844783_ _L44576_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?42006_))
                                                  _stx41905_
                                                  (let* ((_specializer-id44792_
                                                          (let* ((_id44786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L41980_))
                           '"::specialize"))
                         (_specializer-id44789_
                          (let ((__tmp47092
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx41905_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id44786_ __tmp47092))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id44789_))
                    _specializer-id44789_))
                 (_lifted-specializer-id44799_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?42008_))
                      (let* ((_id44794_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L41980_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id44796_
                              (let ((__tmp47093
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx41905_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id44794_
                                 __tmp47093))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id44796_))
                        _lifted-specializer-id44796_)
                      '#f))
                 (_$t44801_ (make-symbol (gensym '__t)))
                 (_methods44803_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls41999_)))
                 (_$methods44807_
                  (map (lambda (_id44805_)
                         (make-symbol '"__" (gensym _id44805_)))
                       _methods44803_))
                 (_g47094_
                  (for-each
                   (lambda (_g4480844811_ _g4480944813_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls41999_
                        _g4480844811_
                        _g4480944813_)))
                   _methods44803_
                   _$methods44807_))
                 (_methods-bind44824_
                  (map (lambda (_g4481644819_ _g4481744821_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind41907_
                            _$t44801_
                            _g4481644819_
                            _g4481744821_)))
                       _methods44803_
                       _$methods44807_))
                 (_slots44826_
                  (let () (declare (not safe)) (hash-keys _slot-refs42000_)))
                 (_$slots44830_
                  (map (lambda (_id44828_)
                         (make-symbol '"__" (gensym _id44828_)))
                       _slots44826_))
                 (_g47095_
                  (for-each
                   (lambda (_g4483144834_ _g4483244836_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs42000_
                        _g4483144834_
                        _g4483244836_)))
                   _slots44826_
                   _$slots44830_))
                 (_slots-bind44847_
                  (map (lambda (_g4483944842_ _g4484044844_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind41908_
                            _$t44801_
                            _g4483944842_
                            _g4484044844_)))
                       _slots44826_
                       _$slots44830_))
                 (_class-check44849_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check42001_)))
                 (_$class-check44852_
                  (map (lambda (_g47096_) (make-symbol (gensym '__class)))
                       _class-check44849_))
                 (_g47097_
                  (for-each
                   (lambda (_g4485344856_ _g4485444858_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check42001_
                        _g4485344856_
                        _g4485444858_)))
                   _class-check44849_
                   _$class-check44852_))
                 (_class-check-bind44869_
                  (map (lambda (_g4486144864_ _g4486244866_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind41909_
                            _$t44801_
                            _g4486144864_
                            _g4486244866_)))
                       _class-check44849_
                       _$class-check44852_))
                 (_struct-check-all44871_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check42002_
                     _struct-type-assert42003_)))
                 (_struct-check44873_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all44871_)))
                 (_$struct-check44876_
                  (map (lambda (_g47098_) (make-symbol (gensym '__class)))
                       _struct-check44873_))
                 (_g47099_
                  (for-each
                   (lambda (_g4487744880_ _g4487844882_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all44871_
                        _g4487744880_
                        _g4487844882_)))
                   _struct-check44873_
                   _$struct-check44876_))
                 (_struct-check-bind44893_
                  (map (lambda (_g4488544888_ _g4488644890_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind41910_
                            _$t44801_
                            _g4488544888_
                            _g4488644890_)))
                       _struct-check44873_
                       _$struct-check44876_))
                 (_make-specializer-lambda-expr44979_
                  (lambda (_struct-type-check144895_ _struct-type-check244896_)
                    (let* ((_g4489844912_
                            (lambda (_g4489944909_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g4489944909_))))
                           (_g4489744976_
                            (lambda (_g4489944915_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4489944915_))
                                  (let ((_e4490444917_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4489944915_))))
                                    (let ((_hd4490344920_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4490444917_)))
                                          (_tl4490244922_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4490444917_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl4490244922_))
                                          (let ((_e4490744925_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl4490244922_))))
                                            (let ((_hd4490644928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4490744925_)))
                                                  (_tl4490544930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4490744925_))))
                                              ((lambda (_L44933_ _L44934_)
                                                 (let* ((_self44967_
                                                         (list-ref
                                                          _L44934_
                                                          _self-index44294_))
                                                        (_body44973_
                                                         (map (lambda (_g4496844970_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g4496844970_
                           _self44967_
                           _$t44801_
                           _method-calls41999_
                           _slot-refs42000_
                           _class-type-check42001_
                           _struct-type-check144895_
                           _struct-type-check244896_)))
                      _L44933_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp47100
                                                          (let ((__tmp47101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L44934_ _body44973_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp47101))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp47100
                                                      _L44577_))))
                                               _tl4490544930_
                                               _hd4490644928_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4489844912_ _g4489944915_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4489844912_ _g4489944915_))))))
                      (declare (not safe))
                      (_g4489744976_ _L44577_))))
                 (_make-specializer-case-lambda-expr45118_
                  (lambda (_struct-type-check144981_ _struct-type-check244982_)
                    (let* ((_g4498445003_
                            (lambda (_g4498545000_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g4498545000_))))
                           (_g4498345115_
                            (lambda (_g4498545006_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4498545006_))
                                  (let ((_e4498945008_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4498545006_))))
                                    (let ((_hd4498845011_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4498945008_)))
                                          (_tl4498745013_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4498945008_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl4498745013_))
                                          (let ((_g47102_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl4498745013_
                                                    '0))))
                                            (begin
                                              (let ((_g47103_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g47102_)
                                                           (##vector-length
                                                            _g47102_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g47103_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g47103_)))
                                              (let ((_target4499045016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47102_
                                                        0)))
                                                    (_tl4499245018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g47102_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl4499245018_))
                                                    (letrec ((_loop4499345021_
                                                              (lambda (_hd4499145024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause4499745026_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd4499145024_))
                            (let ((_e4499445029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd4499145024_))))
                              (let ((_lp-hd4499545032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4499445029_)))
                                    (_lp-tl4499645034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4499445029_))))
                                (let ((__tmp47106
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd4499545032_
                                               _clause4499745026_))))
                                  (declare (not safe))
                                  (_loop4499345021_
                                   _lp-tl4499645034_
                                   __tmp47106))))
                            (let ((_clause4499845037_
                                   (reverse _clause4499745026_)))
                              ((lambda (_L45040_)
                                 (let* ((_clauses45113_
                                         (map (lambda (_clause45055_)
                                                (let* ((_g4505745068_
                                                        (lambda (_g4505845065_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g4505845065_))))
                                                       (_g4505645103_
                                                        (lambda (_g4505845071_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g4505845071_))
                      (let ((_e4506345073_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g4505845071_))))
                        (let ((_hd4506245076_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4506345073_)))
                              (_tl4506145078_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4506345073_))))
                          ((lambda (_L45081_ _L45082_)
                             (let* ((_self45094_
                                     (list-ref _L45082_ _self-index44294_))
                                    (_body45100_
                                     (map (lambda (_g4509545097_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g4509545097_
                                               _self45094_
                                               _$t44801_
                                               _method-calls41999_
                                               _slot-refs42000_
                                               _class-type-check42001_
                                               _struct-type-check144981_
                                               _struct-type-check244982_)))
                                          _L45081_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L45082_ _body45100_))))
                           _tl4506145078_
                           _hd4506245076_)))
                      (let ()
                        (declare (not safe))
                        (_g4505745068_ _g4505845071_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g4505645103_
                                                   _clause45055_)))
                                              (let ((__tmp47104
                                                     (lambda (_g4510545108_
                                                              _g4510645110_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g4510545108_
                                                               _g4510645110_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp47104
                                                        '()
                                                        _L45040_))))
                                        (__tmp47105
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses45113_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp47105
                                    _L44576_)))
                               _clause4499845037_))))))
              (let ()
                (declare (not safe))
                (_loop4499345021_ _target4499045016_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4498445003_
                                                       _g4498545006_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4498445003_ _g4498545006_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4498445003_ _g4498545006_))))))
                      (declare (not safe))
                      (_g4498345115_ _L44576_))))
                 (_make-specializer-impl45123_
                  (lambda (_specializer-lambda-expr45120_
                           _specializer-case-lambda-expr45121_)
                    (let ((__tmp47107
                           (let ((__tmp47108
                                  (let ((__tmp47110
                                         (let ((__tmp47111
                                                (let ((__tmp47128
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L43995_ '())))
                                                      (__tmp47112
                                                       (let ((__tmp47113
                                                              (let ((__tmp47114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp47116
                                    (let ((__tmp47117
                                           (let ((__tmp47127
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L43994_ '())))
                                                 (__tmp47118
                                                  (let ((__tmp47119
                                                         (let ((__tmp47120
                                                                (let ((__tmp47121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp47123
                                      (let ((__tmp47124
                                             (let ((__tmp47126
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L44578_ '())))
                                                   (__tmp47125
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr45120_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp47126 __tmp47125))))
                                        (declare (not safe))
                                        (cons __tmp47124 '())))
                                     (__tmp47122
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr45121_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp47123 __tmp47122))))
                          (declare (not safe))
                          (cons '%#let-values __tmp47121))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp47120 _stx41905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47119 '()))))
                                             (declare (not safe))
                                             (cons __tmp47127 __tmp47118))))
                                      (declare (not safe))
                                      (cons __tmp47117 '())))
                                   (__tmp47115
                                    (let ()
                                      (declare (not safe))
                                      (cons _L43992_ '()))))
                               (declare (not safe))
                               (cons __tmp47116 __tmp47115))))
                        (declare (not safe))
                        (cons '%#let-values __tmp47114))))
                 (declare (not safe))
                 (cons __tmp47113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp47128
                                                        __tmp47112))))
                                           (declare (not safe))
                                           (cons __tmp47111 '())))
                                        (__tmp47109
                                         (let ()
                                           (declare (not safe))
                                           (cons _L43991_ '()))))
                                    (declare (not safe))
                                    (cons __tmp47110 __tmp47109))))
                             (declare (not safe))
                             (cons '%#let-values __tmp47108))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp47107 _stx41905_))))
                 (_specializer-lambda-expr45125_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr44979_
                     _struct-check-all44871_
                     _empty42004_)))
                 (_specializer-case-lambda-expr45127_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr45118_
                     _struct-check-all44871_
                     _empty42004_)))
                 (_specializer-impl45129_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl45123_
                     _specializer-lambda-expr45125_
                     _specializer-case-lambda-expr45127_)))
                 (_unchecked-specializer-lambda-expr45131_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?42007_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr44979_
                         _empty42004_
                         _struct-check-all44871_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr45133_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?42007_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr45118_
                         _empty42004_
                         _struct-check-all44871_))
                      '#f))
                 (_unchecked-specializer-impl45135_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?42007_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl45123_
                         _unchecked-specializer-lambda-expr45131_
                         _unchecked-specializer-case-lambda-expr45133_))
                      '#f))
                 (_specializer-impl45137_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl41911_
                     _$t44801_
                     _methods-bind44824_
                     _slots-bind44847_
                     _class-check-bind44869_
                     _struct-check-bind44893_
                     _specializer-impl45129_
                     _lifted-specializer-id44799_
                     _unchecked-specializer-impl45135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp47130
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L41980_)))
                                                          (__tmp47129
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id44792_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp47130
                                                       '" => "
                                                       __tmp47129))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def41912_
                                                       _L41980_
                                                       _specializer-id44792_
                                                       _specializer-impl45137_
                                                       _lifted-specializer-id44799_
                                                       _unchecked-specializer-impl45135_)))))
                                            _hd4450944571_
                                            _hd4450644563_
                                            _hd4450344555_)
                                           (let ()
                                             (declare (not safe))
                                             (_g4448544515_ _g4448644518_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4448544515_ _g4448644518_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4448544515_ _g4448644518_)))
                           (let ()
                             (declare (not safe))
                             (_g4448544515_ _g4448644518_)))))
                   (let () (declare (not safe)) (_g4448544515_ _g4448644518_)))
               (let () (declare (not safe)) (_g4448544515_ _g4448644518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4448544515_
                                                  _g4448644518_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4448544515_ _g4448644518_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4448544515_ _g4448644518_)))))
                       (let ()
                         (declare (not safe))
                         (_g4448544515_ _g4448644518_)))))
               (let () (declare (not safe)) (_g4448544515_ _g4448644518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4448445140_ _L43993_))
                                         _stx41905_))))
                             _hd4409044213_
                             _kw-ref4408844234_
                             _hd4407844200_
                             _hd4406944176_
                             _hd4406044152_)
                            (let ()
                              (declare (not safe))
                              (_g4403444096_ _g4403544099_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop4408344218_
                                                   _target4408044205_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g4403444096_
                                                 _g4403544099_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4403444096_ _g4403544099_))))))
                            (let ()
                              (declare (not safe))
                              (_g4403444096_ _g4403544099_)))
                        (let ()
                          (declare (not safe))
                          (_g4403444096_ _g4403544099_)))
                    (let ()
                      (declare (not safe))
                      (_g4403444096_ _g4403544099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4403444096_
                                                       _g4403544099_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4403444096_
                                                   _g4403544099_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4403444096_ _g4403544099_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4403444096_ _g4403544099_)))))
                            (let ()
                              (declare (not safe))
                              (_g4403444096_ _g4403544099_)))
                        (let ()
                          (declare (not safe))
                          (_g4403444096_ _g4403544099_)))))
                (let () (declare (not safe)) (_g4403444096_ _g4403544099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4403444096_
                                                       _g4403544099_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4403444096_
                                                   _g4403544099_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4403444096_ _g4403544099_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4403444096_ _g4403544099_)))
                            (let ()
                              (declare (not safe))
                              (_g4403444096_ _g4403544099_)))))
                    (let ()
                      (declare (not safe))
                      (_g4403444096_ _g4403544099_)))
                (let () (declare (not safe)) (_g4403444096_ _g4403544099_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4403444096_
                                                       _g4403544099_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4403444096_ _g4403544099_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4403444096_ _g4403544099_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4403444096_ _g4403544099_)))
                            (let ()
                              (declare (not safe))
                              (_g4403444096_ _g4403544099_)))))
                    (let ()
                      (declare (not safe))
                      (_g4403444096_ _g4403544099_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4403444096_
                                                       _g4403544099_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4403444096_ _g4403544099_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4403444096_ _g4403544099_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4403444096_ _g4403544099_)))))
                            (let ()
                              (declare (not safe))
                              (_g4403444096_ _g4403544099_))))))
                (declare (not safe))
                (_g4403345143_ _L43992_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd4386843986_
                                                    _hd4386543978_
                                                    _hd4386243970_
                                                    _hd4385943962_
                                                    _hd4384143914_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4382143874_
                                                      _g4382243877_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4382143874_ _g4382243877_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g4382143874_ _g4382243877_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g4382143874_ _g4382243877_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4382143874_ _g4382243877_)))))
                       (let ()
                         (declare (not safe))
                         (_g4382143874_ _g4382243877_)))
                   (let () (declare (not safe)) (_g4382143874_ _g4382243877_)))
               (let () (declare (not safe)) (_g4382143874_ _g4382243877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4382143874_
                                                  _g4382243877_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4382143874_ _g4382243877_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4382143874_ _g4382243877_)))))
                           (let ()
                             (declare (not safe))
                             (_g4382143874_ _g4382243877_)))))
                   (let ()
                     (declare (not safe))
                     (_g4382143874_ _g4382243877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4382143874_
                                                      _g4382243877_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4382143874_
                                                  _g4382243877_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4382143874_ _g4382243877_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4382143874_ _g4382243877_)))))
                           (let ()
                             (declare (not safe))
                             (_g4382143874_ _g4382243877_)))
                       (let ()
                         (declare (not safe))
                         (_g4382143874_ _g4382243877_)))))
               (let () (declare (not safe)) (_g4382143874_ _g4382243877_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4382143874_
                                                  _g4382243877_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4382143874_ _g4382243877_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4382143874_ _g4382243877_)))
                           (let ()
                             (declare (not safe))
                             (_g4382143874_ _g4382243877_)))
                       (let ()
                         (declare (not safe))
                         (_g4382143874_ _g4382243877_)))))
               (let () (declare (not safe)) (_g4382143874_ _g4382243877_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4382045146_ _L41979_))
                                         _stx41905_))))))))
                  (___kont4538545386_ (lambda () _stx41905_)))
              (let ((___match4541445415_
                     (lambda (_e4192141947_
                              _hd4192041950_
                              _tl4191941952_
                              _e4192441955_
                              _hd4192341958_
                              _tl4192241960_
                              _e4192741963_
                              _hd4192641966_
                              _tl4192541968_
                              _e4193041971_
                              _hd4192941974_
                              _tl4192841976_)
                       (let ((_L41979_ _hd4192941974_)
                             (_L41980_ _hd4192641966_))
                         (if (let ((__tmp47219
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L41980_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp47219))
                             (___kont4538345384_ _L41979_ _L41980_)
                             (___kont4538545386_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4538145382_))
                    (let ((_e4192141947_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4538145382_))))
                      (let ((_tl4191941952_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4192141947_)))
                            (_hd4192041950_
                             (let ()
                               (declare (not safe))
                               (##car _e4192141947_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4191941952_))
                            (let ((_e4192441955_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4191941952_))))
                              (let ((_tl4192241960_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4192441955_)))
                                    (_hd4192341958_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4192441955_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4192341958_))
                                    (let ((_e4192741963_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4192341958_))))
                                      (let ((_tl4192541968_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4192741963_)))
                                            (_hd4192641966_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4192741963_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl4192541968_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl4192241960_))
                                                (let ((_e4193041971_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl4192241960_))))
                                                  (let ((_tl4192841976_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4193041971_)))
                                                        (_hd4192941974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4193041971_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl4192841976_))
                                                        (___match4541445415_
                                                         _e4192141947_
                                                         _hd4192041950_
                                                         _tl4191941952_
                                                         _e4192441955_
                                                         _hd4192341958_
                                                         _tl4192241960_
                                                         _e4192741963_
                                                         _hd4192641966_
                                                         _tl4192541968_
                                                         _e4193041971_
                                                         _hd4192941974_
                                                         _tl4192841976_)
                                                        (___kont4538545386_))))
                                                (___kont4538545386_))
                                            (___kont4538545386_))))
                                    (___kont4538545386_))))
                            (___kont4538545386_))))
                    (___kont4538545386_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx40407_
               _self40408_
               _methods40409_
               _slots40410_
               _class-check40411_
               _struct-check40412_
               _struct-assert40413_)
        (let* ((___stx4541745418_ _stx40407_)
               (_g4042540743_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4541745418_)))))
          (let ((___kont4541945420_
                 (lambda (_L41854_ _L41855_ _L41856_ _L41857_)
                   (let ((__tmp47220
                          (let () (declare (not safe)) (gx#stx-e _L41855_))))
                     (declare (not safe))
                     (table-set! _methods40409_ __tmp47220 '#t))
                   (for-each
                    (lambda (_g4189041892_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g4189041892_
                         _self40408_
                         _methods40409_
                         _slots40410_
                         _class-check40411_
                         _struct-check40412_
                         _struct-assert40413_)))
                    (let ((__tmp47221
                           (lambda (_g4189441897_ _g4189541899_)
                             (let ()
                               (declare (not safe))
                               (cons _g4189441897_ _g4189541899_)))))
                      (declare (not safe))
                      (foldr1 __tmp47221 '() _L41854_)))))
                (___kont4542345424_
                 (lambda (_L41689_ _L41690_ _L41691_ _L41692_ _L41693_)
                   (let ((__tmp47222
                          (let () (declare (not safe)) (gx#stx-e _L41690_))))
                     (declare (not safe))
                     (table-set! _methods40409_ __tmp47222 '#t))
                   (for-each
                    (lambda (_g4173341735_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g4173341735_
                         _self40408_
                         _methods40409_
                         _slots40410_
                         _class-check40411_
                         _struct-check40412_
                         _struct-assert40413_)))
                    (let ((__tmp47223
                           (lambda (_g4173741740_ _g4173841742_)
                             (let ()
                               (declare (not safe))
                               (cons _g4173741740_ _g4173841742_)))))
                      (declare (not safe))
                      (foldr1 __tmp47223 '() _L41689_)))))
                (___kont4542745428_
                 (lambda (_L41522_ _L41523_ _L41524_)
                   (let ((__tmp47224
                          (let () (declare (not safe)) (gx#stx-e _L41522_))))
                     (declare (not safe))
                     (table-set! _slots40410_ __tmp47224 '#t))))
                (___kont4542945430_
                 (lambda (_L41399_ _L41400_ _L41401_ _L41402_)
                   (let ((__tmp47225
                          (let () (declare (not safe)) (gx#stx-e _L41400_))))
                     (declare (not safe))
                     (table-set! _slots40410_ __tmp47225 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L41399_
                      _self40408_
                      _methods40409_
                      _slots40410_
                      _class-check40411_
                      _struct-check40412_
                      _struct-assert40413_))))
                (___kont4543145432_
                 (lambda (_L41283_ _L41284_)
                   (let ((__tmp47226
                          (##structure-ref
                           (let ((__tmp47227
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L41284_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp47227))
                           '2
                           gxc#!class-getf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots40410_ __tmp47226 '#t))))
                (___kont4543345434_
                 (lambda (_L41195_ _L41196_ _L41197_)
                   (let ((__tmp47228
                          (##structure-ref
                           (let ((__tmp47229
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L41197_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp47229))
                           '2
                           gxc#!class-setf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots40410_ __tmp47228 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L41195_
                      _self40408_
                      _methods40409_
                      _slots40410_
                      _class-check40411_
                      _struct-check40412_
                      _struct-assert40413_))))
                (___kont4543545436_
                 (lambda (_L41103_ _L41104_)
                   (let ((__tmp47230
                          (##structure-ref
                           (let ((__tmp47231
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L41104_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp47231))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _class-check40411_ __tmp47230 '#t))))
                (___kont4543745438_
                 (lambda (_L41019_ _L41020_)
                   (let ((__tmp47232
                          (##structure-ref
                           (let ((__tmp47233
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L41020_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp47233))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _struct-check40412_ __tmp47232 '#t))))
                (___kont4543945440_
                 (lambda (_L40922_ _L40923_)
                   (let ((_getf40956_
                          (let ((__tmp47234
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L40923_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp47234))))
                     (if (##structure-ref
                          _getf40956_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (let ((__tmp47235
                                (##structure-ref
                                 _getf40956_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set!
                            _struct-assert40413_
                            __tmp47235
                            '#t))))))
                (___kont4544145442_
                 (lambda (_L40819_ _L40820_ _L40821_)
                   (let ((_setf40859_
                          (let ((__tmp47236
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L40821_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp47236))))
                     (if (##structure-ref
                          _setf40859_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (let ((__tmp47237
                                (##structure-ref
                                 _setf40859_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set! _struct-assert40413_ __tmp47237 '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L40819_
                        _self40408_
                        _methods40409_
                        _slots40410_
                        _class-check40411_
                        _struct-check40412_
                        _struct-assert40413_)))))
                (___kont4544345444_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx40407_
                      _self40408_
                      _methods40409_
                      _slots40410_
                      _class-check40411_
                      _struct-check40412_
                      _struct-assert40413_)))))
            (let* ((___match4615446155_
                    (lambda (_e4071740755_
                             _hd4071640758_
                             _tl4071540760_
                             _e4072040763_
                             _hd4071940766_
                             _tl4071840768_
                             _e4072340771_
                             _hd4072240774_
                             _tl4072140776_
                             _e4072640779_
                             _hd4072540782_
                             _tl4072440784_
                             _e4072940787_
                             _hd4072840790_
                             _tl4072740792_
                             _e4073240795_
                             _hd4073140798_
                             _tl4073040800_
                             _e4073540803_
                             _hd4073440806_
                             _tl4073340808_
                             _e4073840811_
                             _hd4073740814_
                             _tl4073640816_)
                      (let ((_L40819_ _hd4073740814_)
                            (_L40820_ _hd4073440806_)
                            (_L40821_ _hd4072540782_))
                        (if (if (let ((__tmp47240
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L40820_
                                          _self40408_))))
                                  (declare (not safe))
                                  (not __tmp47240))
                                '#f
                                (let ((_$e40848_
                                       (let ((__tmp47238
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L40821_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp47238))))
                                  (and _$e40848_
                                       ((lambda (_t40851_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t40851_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t4085240854_
                                                      (let ((__tmp47239
                                                             (##structure-ref
                                                              _t40851_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp47239))))
                                                 (and _struct-t4085240854_
                                                      (let ((_struct-t40857_
                                                             _struct-t4085240854_))
                                                        (##structure-ref
                                                         _struct-t40857_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e40848_))))
                            (___kont4544145442_ _L40819_ _L40820_ _L40821_)
                            (___kont4544345444_)))))
                   (___match4614646147_
                    (lambda (_e4071740755_
                             _hd4071640758_
                             _tl4071540760_
                             _e4072040763_
                             _hd4071940766_
                             _tl4071840768_
                             _e4072340771_
                             _hd4072240774_
                             _tl4072140776_
                             _e4072640779_
                             _hd4072540782_
                             _tl4072440784_
                             _e4072940787_
                             _hd4072840790_
                             _tl4072740792_
                             _e4073240795_
                             _hd4073140798_
                             _tl4073040800_
                             _e4073540803_
                             _hd4073440806_
                             _tl4073340808_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl4072740792_))
                          (let ((_e4073840811_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl4072740792_))))
                            (let ((_tl4073640816_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4073840811_)))
                                  (_hd4073740814_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4073840811_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4073640816_))
                                  (___match4615446155_
                                   _e4071740755_
                                   _hd4071640758_
                                   _tl4071540760_
                                   _e4072040763_
                                   _hd4071940766_
                                   _tl4071840768_
                                   _e4072340771_
                                   _hd4072240774_
                                   _tl4072140776_
                                   _e4072640779_
                                   _hd4072540782_
                                   _tl4072440784_
                                   _e4072940787_
                                   _hd4072840790_
                                   _tl4072740792_
                                   _e4073240795_
                                   _hd4073140798_
                                   _tl4073040800_
                                   _e4073540803_
                                   _hd4073440806_
                                   _tl4073340808_
                                   _e4073840811_
                                   _hd4073740814_
                                   _tl4073640816_)
                                  (___kont4544345444_))))
                          (___kont4544345444_))))
                   (___match4609246093_
                    (lambda (_e4069340866_
                             _hd4069240869_
                             _tl4069140871_
                             _e4069640874_
                             _hd4069540877_
                             _tl4069440879_
                             _e4069940882_
                             _hd4069840885_
                             _tl4069740887_
                             _e4070240890_
                             _hd4070140893_
                             _tl4070040895_
                             _e4070540898_
                             _hd4070440901_
                             _tl4070340903_
                             _e4070840906_
                             _hd4070740909_
                             _tl4070640911_
                             _e4071140914_
                             _hd4071040917_
                             _tl4070940919_)
                      (let ((_L40922_ _hd4071040917_)
                            (_L40923_ _hd4070140893_))
                        (if (if (let ((__tmp47243
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L40922_
                                          _self40408_))))
                                  (declare (not safe))
                                  (not __tmp47243))
                                '#f
                                (let ((_$e40945_
                                       (let ((__tmp47241
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L40923_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp47241))))
                                  (and _$e40945_
                                       ((lambda (_t40948_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t40948_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t4094940951_
                                                      (let ((__tmp47242
                                                             (##structure-ref
                                                              _t40948_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp47242))))
                                                 (and _struct-t4094940951_
                                                      (let ((_struct-t40954_
                                                             _struct-t4094940951_))
                                                        (##structure-ref
                                                         _struct-t40954_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e40945_))))
                            (___kont4543945440_ _L40922_ _L40923_)
                            (___kont4544345444_)))))
                   (___match4603646037_
                    (lambda (_e4067040963_
                             _hd4066940966_
                             _tl4066840968_
                             _e4067340971_
                             _hd4067240974_
                             _tl4067140976_
                             _e4067640979_
                             _hd4067540982_
                             _tl4067440984_
                             _e4067940987_
                             _hd4067840990_
                             _tl4067740992_
                             _e4068240995_
                             _hd4068140998_
                             _tl4068041000_
                             _e4068541003_
                             _hd4068441006_
                             _tl4068341008_
                             _e4068841011_
                             _hd4068741014_
                             _tl4068641016_)
                      (let ((_L41019_ _hd4068741014_)
                            (_L41020_ _hd4067840990_))
                        (if (and (let ((__tmp47244
                                        (let ((__tmp47245
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L41020_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp47245))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp47244
                                    'gxc#!struct-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L41019_
                                    _self40408_)))
                            (___kont4543745438_ _L41019_ _L41020_)
                            (___match4609246093_
                             _e4067040963_
                             _hd4066940966_
                             _tl4066840968_
                             _e4067340971_
                             _hd4067240974_
                             _tl4067140976_
                             _e4067640979_
                             _hd4067540982_
                             _tl4067440984_
                             _e4067940987_
                             _hd4067840990_
                             _tl4067740992_
                             _e4068240995_
                             _hd4068140998_
                             _tl4068041000_
                             _e4068541003_
                             _hd4068441006_
                             _tl4068341008_
                             _e4068841011_
                             _hd4068741014_
                             _tl4068641016_)))))
                   (___match4598045981_
                    (lambda (_e4064741047_
                             _hd4064641050_
                             _tl4064541052_
                             _e4065041055_
                             _hd4064941058_
                             _tl4064841060_
                             _e4065341063_
                             _hd4065241066_
                             _tl4065141068_
                             _e4065641071_
                             _hd4065541074_
                             _tl4065441076_
                             _e4065941079_
                             _hd4065841082_
                             _tl4065741084_
                             _e4066241087_
                             _hd4066141090_
                             _tl4066041092_
                             _e4066541095_
                             _hd4066441098_
                             _tl4066341100_)
                      (let ((_L41103_ _hd4066441098_)
                            (_L41104_ _hd4065541074_))
                        (if (and (let ((__tmp47246
                                        (let ((__tmp47247
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L41104_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp47247))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp47246
                                    'gxc#!class-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L41103_
                                    _self40408_)))
                            (___kont4543545436_ _L41103_ _L41104_)
                            (___match4603646037_
                             _e4064741047_
                             _hd4064641050_
                             _tl4064541052_
                             _e4065041055_
                             _hd4064941058_
                             _tl4064841060_
                             _e4065341063_
                             _hd4065241066_
                             _tl4065141068_
                             _e4065641071_
                             _hd4065541074_
                             _tl4065441076_
                             _e4065941079_
                             _hd4065841082_
                             _tl4065741084_
                             _e4066241087_
                             _hd4066141090_
                             _tl4066041092_
                             _e4066541095_
                             _hd4066441098_
                             _tl4066341100_)))))
                   (___match4597845979_
                    (lambda (_e4064741047_
                             _hd4064641050_
                             _tl4064541052_
                             _e4065041055_
                             _hd4064941058_
                             _tl4064841060_
                             _e4065341063_
                             _hd4065241066_
                             _tl4065141068_
                             _e4065641071_
                             _hd4065541074_
                             _tl4065441076_
                             _e4065941079_
                             _hd4065841082_
                             _tl4065741084_
                             _e4066241087_
                             _hd4066141090_
                             _tl4066041092_
                             _e4066541095_
                             _hd4066441098_
                             _tl4066341100_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl4065741084_))
                          (___match4598045981_
                           _e4064741047_
                           _hd4064641050_
                           _tl4064541052_
                           _e4065041055_
                           _hd4064941058_
                           _tl4064841060_
                           _e4065341063_
                           _hd4065241066_
                           _tl4065141068_
                           _e4065641071_
                           _hd4065541074_
                           _tl4065441076_
                           _e4065941079_
                           _hd4065841082_
                           _tl4065741084_
                           _e4066241087_
                           _hd4066141090_
                           _tl4066041092_
                           _e4066541095_
                           _hd4066441098_
                           _tl4066341100_)
                          (___match4614646147_
                           _e4064741047_
                           _hd4064641050_
                           _tl4064541052_
                           _e4065041055_
                           _hd4064941058_
                           _tl4064841060_
                           _e4065341063_
                           _hd4065241066_
                           _tl4065141068_
                           _e4065641071_
                           _hd4065541074_
                           _tl4065441076_
                           _e4065941079_
                           _hd4065841082_
                           _tl4065741084_
                           _e4066241087_
                           _hd4066141090_
                           _tl4066041092_
                           _e4066541095_
                           _hd4066441098_
                           _tl4066341100_))))
                   (___match4592445925_
                    (lambda (_e4062141131_
                             _hd4062041134_
                             _tl4061941136_
                             _e4062441139_
                             _hd4062341142_
                             _tl4062241144_
                             _e4062741147_
                             _hd4062641150_
                             _tl4062541152_
                             _e4063041155_
                             _hd4062941158_
                             _tl4062841160_
                             _e4063341163_
                             _hd4063241166_
                             _tl4063141168_
                             _e4063641171_
                             _hd4063541174_
                             _tl4063441176_
                             _e4063941179_
                             _hd4063841182_
                             _tl4063741184_
                             _e4064241187_
                             _hd4064141190_
                             _tl4064041192_)
                      (let ((_L41195_ _hd4064141190_)
                            (_L41196_ _hd4063841182_)
                            (_L41197_ _hd4062941158_))
                        (if (and (let ((__tmp47248
                                        (let ((__tmp47249
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L41197_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp47249))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp47248
                                    'gxc#!class-setf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L41196_
                                    _self40408_)))
                            (___kont4543345434_ _L41195_ _L41196_ _L41197_)
                            (___match4615446155_
                             _e4062141131_
                             _hd4062041134_
                             _tl4061941136_
                             _e4062441139_
                             _hd4062341142_
                             _tl4062241144_
                             _e4062741147_
                             _hd4062641150_
                             _tl4062541152_
                             _e4063041155_
                             _hd4062941158_
                             _tl4062841160_
                             _e4063341163_
                             _hd4063241166_
                             _tl4063141168_
                             _e4063641171_
                             _hd4063541174_
                             _tl4063441176_
                             _e4063941179_
                             _hd4063841182_
                             _tl4063741184_
                             _e4064241187_
                             _hd4064141190_
                             _tl4064041192_)))))
                   (___match4592245923_
                    (lambda (_e4062141131_
                             _hd4062041134_
                             _tl4061941136_
                             _e4062441139_
                             _hd4062341142_
                             _tl4062241144_
                             _e4062741147_
                             _hd4062641150_
                             _tl4062541152_
                             _e4063041155_
                             _hd4062941158_
                             _tl4062841160_
                             _e4063341163_
                             _hd4063241166_
                             _tl4063141168_
                             _e4063641171_
                             _hd4063541174_
                             _tl4063441176_
                             _e4063941179_
                             _hd4063841182_
                             _tl4063741184_
                             _e4064241187_
                             _hd4064141190_
                             _tl4064041192_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl4064041192_))
                          (___match4592445925_
                           _e4062141131_
                           _hd4062041134_
                           _tl4061941136_
                           _e4062441139_
                           _hd4062341142_
                           _tl4062241144_
                           _e4062741147_
                           _hd4062641150_
                           _tl4062541152_
                           _e4063041155_
                           _hd4062941158_
                           _tl4062841160_
                           _e4063341163_
                           _hd4063241166_
                           _tl4063141168_
                           _e4063641171_
                           _hd4063541174_
                           _tl4063441176_
                           _e4063941179_
                           _hd4063841182_
                           _tl4063741184_
                           _e4064241187_
                           _hd4064141190_
                           _tl4064041192_)
                          (___kont4544345444_))))
                   (___match4591645917_
                    (lambda (_e4062141131_
                             _hd4062041134_
                             _tl4061941136_
                             _e4062441139_
                             _hd4062341142_
                             _tl4062241144_
                             _e4062741147_
                             _hd4062641150_
                             _tl4062541152_
                             _e4063041155_
                             _hd4062941158_
                             _tl4062841160_
                             _e4063341163_
                             _hd4063241166_
                             _tl4063141168_
                             _e4063641171_
                             _hd4063541174_
                             _tl4063441176_
                             _e4063941179_
                             _hd4063841182_
                             _tl4063741184_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl4063141168_))
                          (let ((_e4064241187_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl4063141168_))))
                            (let ((_tl4064041192_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4064241187_)))
                                  (_hd4064141190_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4064241187_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4064041192_))
                                  (___match4592445925_
                                   _e4062141131_
                                   _hd4062041134_
                                   _tl4061941136_
                                   _e4062441139_
                                   _hd4062341142_
                                   _tl4062241144_
                                   _e4062741147_
                                   _hd4062641150_
                                   _tl4062541152_
                                   _e4063041155_
                                   _hd4062941158_
                                   _tl4062841160_
                                   _e4063341163_
                                   _hd4063241166_
                                   _tl4063141168_
                                   _e4063641171_
                                   _hd4063541174_
                                   _tl4063441176_
                                   _e4063941179_
                                   _hd4063841182_
                                   _tl4063741184_
                                   _e4064241187_
                                   _hd4064141190_
                                   _tl4064041192_)
                                  (___kont4544345444_))))
                          (___match4597845979_
                           _e4062141131_
                           _hd4062041134_
                           _tl4061941136_
                           _e4062441139_
                           _hd4062341142_
                           _tl4062241144_
                           _e4062741147_
                           _hd4062641150_
                           _tl4062541152_
                           _e4063041155_
                           _hd4062941158_
                           _tl4062841160_
                           _e4063341163_
                           _hd4063241166_
                           _tl4063141168_
                           _e4063641171_
                           _hd4063541174_
                           _tl4063441176_
                           _e4063941179_
                           _hd4063841182_
                           _tl4063741184_))))
                   (___match4586245863_
                    (lambda (_e4059741227_
                             _hd4059641230_
                             _tl4059541232_
                             _e4060041235_
                             _hd4059941238_
                             _tl4059841240_
                             _e4060341243_
                             _hd4060241246_
                             _tl4060141248_
                             _e4060641251_
                             _hd4060541254_
                             _tl4060441256_
                             _e4060941259_
                             _hd4060841262_
                             _tl4060741264_
                             _e4061241267_
                             _hd4061141270_
                             _tl4061041272_
                             _e4061541275_
                             _hd4061441278_
                             _tl4061341280_)
                      (let ((_L41283_ _hd4061441278_)
                            (_L41284_ _hd4060541254_))
                        (if (and (let ((__tmp47250
                                        (let ((__tmp47251
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L41284_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp47251))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp47250
                                    'gxc#!class-getf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L41283_
                                    _self40408_)))
                            (___kont4543145432_ _L41283_ _L41284_)
                            (___match4598045981_
                             _e4059741227_
                             _hd4059641230_
                             _tl4059541232_
                             _e4060041235_
                             _hd4059941238_
                             _tl4059841240_
                             _e4060341243_
                             _hd4060241246_
                             _tl4060141248_
                             _e4060641251_
                             _hd4060541254_
                             _tl4060441256_
                             _e4060941259_
                             _hd4060841262_
                             _tl4060741264_
                             _e4061241267_
                             _hd4061141270_
                             _tl4061041272_
                             _e4061541275_
                             _hd4061441278_
                             _tl4061341280_)))))
                   (___match4586045861_
                    (lambda (_e4059741227_
                             _hd4059641230_
                             _tl4059541232_
                             _e4060041235_
                             _hd4059941238_
                             _tl4059841240_
                             _e4060341243_
                             _hd4060241246_
                             _tl4060141248_
                             _e4060641251_
                             _hd4060541254_
                             _tl4060441256_
                             _e4060941259_
                             _hd4060841262_
                             _tl4060741264_
                             _e4061241267_
                             _hd4061141270_
                             _tl4061041272_
                             _e4061541275_
                             _hd4061441278_
                             _tl4061341280_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl4060741264_))
                          (___match4586245863_
                           _e4059741227_
                           _hd4059641230_
                           _tl4059541232_
                           _e4060041235_
                           _hd4059941238_
                           _tl4059841240_
                           _e4060341243_
                           _hd4060241246_
                           _tl4060141248_
                           _e4060641251_
                           _hd4060541254_
                           _tl4060441256_
                           _e4060941259_
                           _hd4060841262_
                           _tl4060741264_
                           _e4061241267_
                           _hd4061141270_
                           _tl4061041272_
                           _e4061541275_
                           _hd4061441278_
                           _tl4061341280_)
                          (___match4591645917_
                           _e4059741227_
                           _hd4059641230_
                           _tl4059541232_
                           _e4060041235_
                           _hd4059941238_
                           _tl4059841240_
                           _e4060341243_
                           _hd4060241246_
                           _tl4060141248_
                           _e4060641251_
                           _hd4060541254_
                           _tl4060441256_
                           _e4060941259_
                           _hd4060841262_
                           _tl4060741264_
                           _e4061241267_
                           _hd4061141270_
                           _tl4061041272_
                           _e4061541275_
                           _hd4061441278_
                           _tl4061341280_))))
                   (___match4580645807_
                    (lambda (_e4056241311_
                             _hd4056141314_
                             _tl4056041316_
                             _e4056541319_
                             _hd4056441322_
                             _tl4056341324_
                             _e4056841327_
                             _hd4056741330_
                             _tl4056641332_
                             _e4057141335_
                             _hd4057041338_
                             _tl4056941340_
                             _e4057441343_
                             _hd4057341346_
                             _tl4057241348_
                             _e4057741351_
                             _hd4057641354_
                             _tl4057541356_
                             _e4058041359_
                             _hd4057941362_
                             _tl4057841364_
                             _e4058341367_
                             _hd4058241370_
                             _tl4058141372_
                             _e4058641375_
                             _hd4058541378_
                             _tl4058441380_
                             _e4058941383_
                             _hd4058841386_
                             _tl4058741388_
                             _e4059241391_
                             _hd4059141394_
                             _tl4059041396_)
                      (let ((_L41399_ _hd4059141394_)
                            (_L41400_ _hd4058841386_)
                            (_L41401_ _hd4057941362_)
                            (_L41402_ _hd4057041338_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L41402_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L41402_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L41401_
                                    _self40408_)))
                            (___kont4542945430_
                             _L41399_
                             _L41400_
                             _L41401_
                             _L41402_)
                            (___kont4544345444_)))))
                   (___match4579845799_
                    (lambda (_e4056241311_
                             _hd4056141314_
                             _tl4056041316_
                             _e4056541319_
                             _hd4056441322_
                             _tl4056341324_
                             _e4056841327_
                             _hd4056741330_
                             _tl4056641332_
                             _e4057141335_
                             _hd4057041338_
                             _tl4056941340_
                             _e4057441343_
                             _hd4057341346_
                             _tl4057241348_
                             _e4057741351_
                             _hd4057641354_
                             _tl4057541356_
                             _e4058041359_
                             _hd4057941362_
                             _tl4057841364_
                             _e4058341367_
                             _hd4058241370_
                             _tl4058141372_
                             _e4058641375_
                             _hd4058541378_
                             _tl4058441380_
                             _e4058941383_
                             _hd4058841386_
                             _tl4058741388_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl4058141372_))
                          (let ((_e4059241391_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl4058141372_))))
                            (let ((_tl4059041396_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4059241391_)))
                                  (_hd4059141394_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4059241391_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4059041396_))
                                  (___match4580645807_
                                   _e4056241311_
                                   _hd4056141314_
                                   _tl4056041316_
                                   _e4056541319_
                                   _hd4056441322_
                                   _tl4056341324_
                                   _e4056841327_
                                   _hd4056741330_
                                   _tl4056641332_
                                   _e4057141335_
                                   _hd4057041338_
                                   _tl4056941340_
                                   _e4057441343_
                                   _hd4057341346_
                                   _tl4057241348_
                                   _e4057741351_
                                   _hd4057641354_
                                   _tl4057541356_
                                   _e4058041359_
                                   _hd4057941362_
                                   _tl4057841364_
                                   _e4058341367_
                                   _hd4058241370_
                                   _tl4058141372_
                                   _e4058641375_
                                   _hd4058541378_
                                   _tl4058441380_
                                   _e4058941383_
                                   _hd4058841386_
                                   _tl4058741388_
                                   _e4059241391_
                                   _hd4059141394_
                                   _tl4059041396_)
                                  (___kont4544345444_))))
                          (___match4592245923_
                           _e4056241311_
                           _hd4056141314_
                           _tl4056041316_
                           _e4056541319_
                           _hd4056441322_
                           _tl4056341324_
                           _e4056841327_
                           _hd4056741330_
                           _tl4056641332_
                           _e4057141335_
                           _hd4057041338_
                           _tl4056941340_
                           _e4057441343_
                           _hd4057341346_
                           _tl4057241348_
                           _e4057741351_
                           _hd4057641354_
                           _tl4057541356_
                           _e4058041359_
                           _hd4057941362_
                           _tl4057841364_
                           _e4058341367_
                           _hd4058241370_
                           _tl4058141372_))))
                   (___match4572045721_
                    (lambda (_e4052841442_
                             _hd4052741445_
                             _tl4052641447_
                             _e4053141450_
                             _hd4053041453_
                             _tl4052941455_
                             _e4053441458_
                             _hd4053341461_
                             _tl4053241463_
                             _e4053741466_
                             _hd4053641469_
                             _tl4053541471_
                             _e4054041474_
                             _hd4053941477_
                             _tl4053841479_
                             _e4054341482_
                             _hd4054241485_
                             _tl4054141487_
                             _e4054641490_
                             _hd4054541493_
                             _tl4054441495_
                             _e4054941498_
                             _hd4054841501_
                             _tl4054741503_
                             _e4055241506_
                             _hd4055141509_
                             _tl4055041511_
                             _e4055541514_
                             _hd4055441517_
                             _tl4055341519_)
                      (let ((_L41522_ _hd4055441517_)
                            (_L41523_ _hd4054541493_)
                            (_L41524_ _hd4053641469_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L41524_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L41524_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L41523_
                                    _self40408_)))
                            (___kont4542745428_ _L41522_ _L41523_ _L41524_)
                            (___match4592445925_
                             _e4052841442_
                             _hd4052741445_
                             _tl4052641447_
                             _e4053141450_
                             _hd4053041453_
                             _tl4052941455_
                             _e4053441458_
                             _hd4053341461_
                             _tl4053241463_
                             _e4053741466_
                             _hd4053641469_
                             _tl4053541471_
                             _e4054041474_
                             _hd4053941477_
                             _tl4053841479_
                             _e4054341482_
                             _hd4054241485_
                             _tl4054141487_
                             _e4054641490_
                             _hd4054541493_
                             _tl4054441495_
                             _e4054941498_
                             _hd4054841501_
                             _tl4054741503_)))))
                   (___match4571845719_
                    (lambda (_e4052841442_
                             _hd4052741445_
                             _tl4052641447_
                             _e4053141450_
                             _hd4053041453_
                             _tl4052941455_
                             _e4053441458_
                             _hd4053341461_
                             _tl4053241463_
                             _e4053741466_
                             _hd4053641469_
                             _tl4053541471_
                             _e4054041474_
                             _hd4053941477_
                             _tl4053841479_
                             _e4054341482_
                             _hd4054241485_
                             _tl4054141487_
                             _e4054641490_
                             _hd4054541493_
                             _tl4054441495_
                             _e4054941498_
                             _hd4054841501_
                             _tl4054741503_
                             _e4055241506_
                             _hd4055141509_
                             _tl4055041511_
                             _e4055541514_
                             _hd4055441517_
                             _tl4055341519_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl4054741503_))
                          (___match4572045721_
                           _e4052841442_
                           _hd4052741445_
                           _tl4052641447_
                           _e4053141450_
                           _hd4053041453_
                           _tl4052941455_
                           _e4053441458_
                           _hd4053341461_
                           _tl4053241463_
                           _e4053741466_
                           _hd4053641469_
                           _tl4053541471_
                           _e4054041474_
                           _hd4053941477_
                           _tl4053841479_
                           _e4054341482_
                           _hd4054241485_
                           _tl4054141487_
                           _e4054641490_
                           _hd4054541493_
                           _tl4054441495_
                           _e4054941498_
                           _hd4054841501_
                           _tl4054741503_
                           _e4055241506_
                           _hd4055141509_
                           _tl4055041511_
                           _e4055541514_
                           _hd4055441517_
                           _tl4055341519_)
                          (___match4579845799_
                           _e4052841442_
                           _hd4052741445_
                           _tl4052641447_
                           _e4053141450_
                           _hd4053041453_
                           _tl4052941455_
                           _e4053441458_
                           _hd4053341461_
                           _tl4053241463_
                           _e4053741466_
                           _hd4053641469_
                           _tl4053541471_
                           _e4054041474_
                           _hd4053941477_
                           _tl4053841479_
                           _e4054341482_
                           _hd4054241485_
                           _tl4054141487_
                           _e4054641490_
                           _hd4054541493_
                           _tl4054441495_
                           _e4054941498_
                           _hd4054841501_
                           _tl4054741503_
                           _e4055241506_
                           _hd4055141509_
                           _tl4055041511_
                           _e4055541514_
                           _hd4055441517_
                           _tl4055341519_))))
                   (___match4570845709_
                    (lambda (_e4052841442_
                             _hd4052741445_
                             _tl4052641447_
                             _e4053141450_
                             _hd4053041453_
                             _tl4052941455_
                             _e4053441458_
                             _hd4053341461_
                             _tl4053241463_
                             _e4053741466_
                             _hd4053641469_
                             _tl4053541471_
                             _e4054041474_
                             _hd4053941477_
                             _tl4053841479_
                             _e4054341482_
                             _hd4054241485_
                             _tl4054141487_
                             _e4054641490_
                             _hd4054541493_
                             _tl4054441495_
                             _e4054941498_
                             _hd4054841501_
                             _tl4054741503_
                             _e4055241506_
                             _hd4055141509_
                             _tl4055041511_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd4055141509_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl4055041511_))
                              (let ((_e4055541514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl4055041511_))))
                                (let ((_tl4055341519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4055541514_)))
                                      (_hd4055441517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4055541514_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl4055341519_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl4054741503_))
                                          (___match4572045721_
                                           _e4052841442_
                                           _hd4052741445_
                                           _tl4052641447_
                                           _e4053141450_
                                           _hd4053041453_
                                           _tl4052941455_
                                           _e4053441458_
                                           _hd4053341461_
                                           _tl4053241463_
                                           _e4053741466_
                                           _hd4053641469_
                                           _tl4053541471_
                                           _e4054041474_
                                           _hd4053941477_
                                           _tl4053841479_
                                           _e4054341482_
                                           _hd4054241485_
                                           _tl4054141487_
                                           _e4054641490_
                                           _hd4054541493_
                                           _tl4054441495_
                                           _e4054941498_
                                           _hd4054841501_
                                           _tl4054741503_
                                           _e4055241506_
                                           _hd4055141509_
                                           _tl4055041511_
                                           _e4055541514_
                                           _hd4055441517_
                                           _tl4055341519_)
                                          (___match4579845799_
                                           _e4052841442_
                                           _hd4052741445_
                                           _tl4052641447_
                                           _e4053141450_
                                           _hd4053041453_
                                           _tl4052941455_
                                           _e4053441458_
                                           _hd4053341461_
                                           _tl4053241463_
                                           _e4053741466_
                                           _hd4053641469_
                                           _tl4053541471_
                                           _e4054041474_
                                           _hd4053941477_
                                           _tl4053841479_
                                           _e4054341482_
                                           _hd4054241485_
                                           _tl4054141487_
                                           _e4054641490_
                                           _hd4054541493_
                                           _tl4054441495_
                                           _e4054941498_
                                           _hd4054841501_
                                           _tl4054741503_
                                           _e4055241506_
                                           _hd4055141509_
                                           _tl4055041511_
                                           _e4055541514_
                                           _hd4055441517_
                                           _tl4055341519_))
                                      (___match4592245923_
                                       _e4052841442_
                                       _hd4052741445_
                                       _tl4052641447_
                                       _e4053141450_
                                       _hd4053041453_
                                       _tl4052941455_
                                       _e4053441458_
                                       _hd4053341461_
                                       _tl4053241463_
                                       _e4053741466_
                                       _hd4053641469_
                                       _tl4053541471_
                                       _e4054041474_
                                       _hd4053941477_
                                       _tl4053841479_
                                       _e4054341482_
                                       _hd4054241485_
                                       _tl4054141487_
                                       _e4054641490_
                                       _hd4054541493_
                                       _tl4054441495_
                                       _e4054941498_
                                       _hd4054841501_
                                       _tl4054741503_))))
                              (___match4592245923_
                               _e4052841442_
                               _hd4052741445_
                               _tl4052641447_
                               _e4053141450_
                               _hd4053041453_
                               _tl4052941455_
                               _e4053441458_
                               _hd4053341461_
                               _tl4053241463_
                               _e4053741466_
                               _hd4053641469_
                               _tl4053541471_
                               _e4054041474_
                               _hd4053941477_
                               _tl4053841479_
                               _e4054341482_
                               _hd4054241485_
                               _tl4054141487_
                               _e4054641490_
                               _hd4054541493_
                               _tl4054441495_
                               _e4054941498_
                               _hd4054841501_
                               _tl4054741503_))
                          (___match4592245923_
                           _e4052841442_
                           _hd4052741445_
                           _tl4052641447_
                           _e4053141450_
                           _hd4053041453_
                           _tl4052941455_
                           _e4053441458_
                           _hd4053341461_
                           _tl4053241463_
                           _e4053741466_
                           _hd4053641469_
                           _tl4053541471_
                           _e4054041474_
                           _hd4053941477_
                           _tl4053841479_
                           _e4054341482_
                           _hd4054241485_
                           _tl4054141487_
                           _e4054641490_
                           _hd4054541493_
                           _tl4054441495_
                           _e4054941498_
                           _hd4054841501_
                           _tl4054741503_))))
                   (___match4564045641_
                    (lambda (_e4047741561_
                             _hd4047641564_
                             _tl4047541566_
                             _e4048041569_
                             _hd4047941572_
                             _tl4047841574_
                             _e4048341577_
                             _hd4048241580_
                             _tl4048141582_
                             _e4048641585_
                             _hd4048541588_
                             _tl4048441590_
                             _e4048941593_
                             _hd4048841596_
                             _tl4048741598_
                             _e4049241601_
                             _hd4049141604_
                             _tl4049041606_
                             _e4049541609_
                             _hd4049441612_
                             _tl4049341614_
                             _e4049841617_
                             _hd4049741620_
                             _tl4049641622_
                             _e4050141625_
                             _hd4050041628_
                             _tl4049941630_
                             _e4050441633_
                             _hd4050341636_
                             _tl4050241638_
                             _e4050741641_
                             _hd4050641644_
                             _tl4050541646_
                             _e4051041649_
                             _hd4050941652_
                             _tl4050841654_
                             _e4051341657_
                             _hd4051241660_
                             _tl4051141662_
                             ___splice4542545426_
                             _target4051441665_
                             _tl4051641667_)
                      (letrec ((_loop4051741670_
                                (lambda (_hd4051541673_ _args4052141675_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd4051541673_))
                                      (let ((_e4051841678_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd4051541673_))))
                                        (let ((_lp-tl4052041683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4051841678_)))
                                              (_lp-hd4051941681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4051841678_))))
                                          (let ((__tmp47252
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd4051941681_
                                                         _args4052141675_))))
                                            (declare (not safe))
                                            (_loop4051741670_
                                             _lp-tl4052041683_
                                             __tmp47252))))
                                      (let ((_args4052241686_
                                             (reverse _args4052141675_)))
                                        (let ((_L41689_ _args4052241686_)
                                              (_L41690_ _hd4051241660_)
                                              (_L41691_ _hd4050341636_)
                                              (_L41692_ _hd4049441612_)
                                              (_L41693_ _hd4048541588_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L41693_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L41692_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L41691_
                                                      _self40408_)))
                                              (___kont4542345424_
                                               _L41689_
                                               _L41690_
                                               _L41691_
                                               _L41692_
                                               _L41693_)
                                              (___kont4544345444_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop4051741670_ _target4051441665_ '())))))
                   (___match4559845599_
                    (lambda (_e4047741561_
                             _hd4047641564_
                             _tl4047541566_
                             _e4048041569_
                             _hd4047941572_
                             _tl4047841574_
                             _e4048341577_
                             _hd4048241580_
                             _tl4048141582_
                             _e4048641585_
                             _hd4048541588_
                             _tl4048441590_
                             _e4048941593_
                             _hd4048841596_
                             _tl4048741598_
                             _e4049241601_
                             _hd4049141604_
                             _tl4049041606_
                             _e4049541609_
                             _hd4049441612_
                             _tl4049341614_
                             _e4049841617_
                             _hd4049741620_
                             _tl4049641622_
                             _e4050141625_
                             _hd4050041628_
                             _tl4049941630_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd4050041628_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl4049941630_))
                              (let ((_e4050441633_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl4049941630_))))
                                (let ((_tl4050241638_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4050441633_)))
                                      (_hd4050341636_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4050441633_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl4050241638_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl4049641622_))
                                          (let ((_e4050741641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl4049641622_))))
                                            (let ((_tl4050541646_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4050741641_)))
                                                  (_hd4050641644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4050741641_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd4050641644_))
                                                  (let ((_e4051041649_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd4050641644_))))
                                                    (let ((_tl4050841654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4051041649_)))
                                                          (_hd4050941652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4051041649_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd4050941652_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd4050941652_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl4050841654_))
                          (let ((_e4051341657_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl4050841654_))))
                            (let ((_tl4051141662_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4051341657_)))
                                  (_hd4051241660_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4051341657_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4051141662_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl4050541646_))
                                      (let ((___splice4542545426_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl4050541646_
                                                '0))))
                                        (let ((_tl4051641667_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4542545426_
                                                  '1)))
                                              (_target4051441665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4542545426_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl4051641667_))
                                              (___match4564045641_
                                               _e4047741561_
                                               _hd4047641564_
                                               _tl4047541566_
                                               _e4048041569_
                                               _hd4047941572_
                                               _tl4047841574_
                                               _e4048341577_
                                               _hd4048241580_
                                               _tl4048141582_
                                               _e4048641585_
                                               _hd4048541588_
                                               _tl4048441590_
                                               _e4048941593_
                                               _hd4048841596_
                                               _tl4048741598_
                                               _e4049241601_
                                               _hd4049141604_
                                               _tl4049041606_
                                               _e4049541609_
                                               _hd4049441612_
                                               _tl4049341614_
                                               _e4049841617_
                                               _hd4049741620_
                                               _tl4049641622_
                                               _e4050141625_
                                               _hd4050041628_
                                               _tl4049941630_
                                               _e4050441633_
                                               _hd4050341636_
                                               _tl4050241638_
                                               _e4050741641_
                                               _hd4050641644_
                                               _tl4050541646_
                                               _e4051041649_
                                               _hd4050941652_
                                               _tl4050841654_
                                               _e4051341657_
                                               _hd4051241660_
                                               _tl4051141662_
                                               ___splice4542545426_
                                               _target4051441665_
                                               _tl4051641667_)
                                              (___kont4544345444_))))
                                      (___kont4544345444_))
                                  (___kont4544345444_))))
                          (___kont4544345444_))
                      (___kont4544345444_))
                  (___kont4544345444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4544345444_))))
                                          (___match4592245923_
                                           _e4047741561_
                                           _hd4047641564_
                                           _tl4047541566_
                                           _e4048041569_
                                           _hd4047941572_
                                           _tl4047841574_
                                           _e4048341577_
                                           _hd4048241580_
                                           _tl4048141582_
                                           _e4048641585_
                                           _hd4048541588_
                                           _tl4048441590_
                                           _e4048941593_
                                           _hd4048841596_
                                           _tl4048741598_
                                           _e4049241601_
                                           _hd4049141604_
                                           _tl4049041606_
                                           _e4049541609_
                                           _hd4049441612_
                                           _tl4049341614_
                                           _e4049841617_
                                           _hd4049741620_
                                           _tl4049641622_))
                                      (___match4592245923_
                                       _e4047741561_
                                       _hd4047641564_
                                       _tl4047541566_
                                       _e4048041569_
                                       _hd4047941572_
                                       _tl4047841574_
                                       _e4048341577_
                                       _hd4048241580_
                                       _tl4048141582_
                                       _e4048641585_
                                       _hd4048541588_
                                       _tl4048441590_
                                       _e4048941593_
                                       _hd4048841596_
                                       _tl4048741598_
                                       _e4049241601_
                                       _hd4049141604_
                                       _tl4049041606_
                                       _e4049541609_
                                       _hd4049441612_
                                       _tl4049341614_
                                       _e4049841617_
                                       _hd4049741620_
                                       _tl4049641622_))))
                              (___match4592245923_
                               _e4047741561_
                               _hd4047641564_
                               _tl4047541566_
                               _e4048041569_
                               _hd4047941572_
                               _tl4047841574_
                               _e4048341577_
                               _hd4048241580_
                               _tl4048141582_
                               _e4048641585_
                               _hd4048541588_
                               _tl4048441590_
                               _e4048941593_
                               _hd4048841596_
                               _tl4048741598_
                               _e4049241601_
                               _hd4049141604_
                               _tl4049041606_
                               _e4049541609_
                               _hd4049441612_
                               _tl4049341614_
                               _e4049841617_
                               _hd4049741620_
                               _tl4049641622_))
                          (___match4570845709_
                           _e4047741561_
                           _hd4047641564_
                           _tl4047541566_
                           _e4048041569_
                           _hd4047941572_
                           _tl4047841574_
                           _e4048341577_
                           _hd4048241580_
                           _tl4048141582_
                           _e4048641585_
                           _hd4048541588_
                           _tl4048441590_
                           _e4048941593_
                           _hd4048841596_
                           _tl4048741598_
                           _e4049241601_
                           _hd4049141604_
                           _tl4049041606_
                           _e4049541609_
                           _hd4049441612_
                           _tl4049341614_
                           _e4049841617_
                           _hd4049741620_
                           _tl4049641622_
                           _e4050141625_
                           _hd4050041628_
                           _tl4049941630_))))
                   (___match4553045531_
                    (lambda (_e4043341750_
                             _hd4043241753_
                             _tl4043141755_
                             _e4043641758_
                             _hd4043541761_
                             _tl4043441763_
                             _e4043941766_
                             _hd4043841769_
                             _tl4043741771_
                             _e4044241774_
                             _hd4044141777_
                             _tl4044041779_
                             _e4044541782_
                             _hd4044441785_
                             _tl4044341787_
                             _e4044841790_
                             _hd4044741793_
                             _tl4044641795_
                             _e4045141798_
                             _hd4045041801_
                             _tl4044941803_
                             _e4045441806_
                             _hd4045341809_
                             _tl4045241811_
                             _e4045741814_
                             _hd4045641817_
                             _tl4045541819_
                             _e4046041822_
                             _hd4045941825_
                             _tl4045841827_
                             ___splice4542145422_
                             _target4046141830_
                             _tl4046341832_)
                      (letrec ((_loop4046441835_
                                (lambda (_hd4046241838_ _args4046841840_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd4046241838_))
                                      (let ((_e4046541843_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd4046241838_))))
                                        (let ((_lp-tl4046741848_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4046541843_)))
                                              (_lp-hd4046641846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4046541843_))))
                                          (let ((__tmp47253
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd4046641846_
                                                         _args4046841840_))))
                                            (declare (not safe))
                                            (_loop4046441835_
                                             _lp-tl4046741848_
                                             __tmp47253))))
                                      (let ((_args4046941851_
                                             (reverse _args4046841840_)))
                                        (let ((_L41854_ _args4046941851_)
                                              (_L41855_ _hd4045941825_)
                                              (_L41856_ _hd4045041801_)
                                              (_L41857_ _hd4044141777_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L41857_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L41856_
                                                      _self40408_)))
                                              (___kont4541945420_
                                               _L41854_
                                               _L41855_
                                               _L41856_
                                               _L41857_)
                                              (___match4571845719_
                                               _e4043341750_
                                               _hd4043241753_
                                               _tl4043141755_
                                               _e4043641758_
                                               _hd4043541761_
                                               _tl4043441763_
                                               _e4043941766_
                                               _hd4043841769_
                                               _tl4043741771_
                                               _e4044241774_
                                               _hd4044141777_
                                               _tl4044041779_
                                               _e4044541782_
                                               _hd4044441785_
                                               _tl4044341787_
                                               _e4044841790_
                                               _hd4044741793_
                                               _tl4044641795_
                                               _e4045141798_
                                               _hd4045041801_
                                               _tl4044941803_
                                               _e4045441806_
                                               _hd4045341809_
                                               _tl4045241811_
                                               _e4045741814_
                                               _hd4045641817_
                                               _tl4045541819_
                                               _e4046041822_
                                               _hd4045941825_
                                               _tl4045841827_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop4046441835_ _target4046141830_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx4541745418_))
                  (let ((_e4043341750_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx4541745418_))))
                    (let ((_tl4043141755_
                           (let () (declare (not safe)) (##cdr _e4043341750_)))
                          (_hd4043241753_
                           (let ()
                             (declare (not safe))
                             (##car _e4043341750_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl4043141755_))
                          (let ((_e4043641758_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl4043141755_))))
                            (let ((_tl4043441763_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4043641758_)))
                                  (_hd4043541761_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4043641758_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd4043541761_))
                                  (let ((_e4043941766_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd4043541761_))))
                                    (let ((_tl4043741771_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4043941766_)))
                                          (_hd4043841769_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4043941766_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd4043841769_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd4043841769_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl4043741771_))
                                                  (let ((_e4044241774_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl4043741771_))))
                                                    (let ((_tl4044041779_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4044241774_)))
                                                          (_hd4044141777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4044241774_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl4044041779_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl4043441763_))
                      (let ((_e4044541782_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl4043441763_))))
                        (let ((_tl4044341787_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4044541782_)))
                              (_hd4044441785_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4044541782_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd4044441785_))
                              (let ((_e4044841790_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd4044441785_))))
                                (let ((_tl4044641795_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4044841790_)))
                                      (_hd4044741793_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4044841790_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd4044741793_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd4044741793_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl4044641795_))
                                              (let ((_e4045141798_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl4044641795_))))
                                                (let ((_tl4044941803_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4045141798_)))
                                                      (_hd4045041801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4045141798_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl4044941803_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl4044341787_))
                                                          (let ((_e4045441806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl4044341787_))))
                    (let ((_tl4045241811_
                           (let () (declare (not safe)) (##cdr _e4045441806_)))
                          (_hd4045341809_
                           (let ()
                             (declare (not safe))
                             (##car _e4045441806_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd4045341809_))
                          (let ((_e4045741814_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd4045341809_))))
                            (let ((_tl4045541819_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e4045741814_)))
                                  (_hd4045641817_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e4045741814_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd4045641817_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd4045641817_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl4045541819_))
                                          (let ((_e4046041822_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl4045541819_))))
                                            (let ((_tl4045841827_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4046041822_)))
                                                  (_hd4045941825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4046041822_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl4045841827_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl4045241811_))
                                                      (let ((___splice4542145422_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl4045241811_ '0))))
                (let ((_tl4046341832_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4542145422_ '1)))
                      (_target4046141830_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4542145422_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl4046341832_))
                      (___match4553045531_
                       _e4043341750_
                       _hd4043241753_
                       _tl4043141755_
                       _e4043641758_
                       _hd4043541761_
                       _tl4043441763_
                       _e4043941766_
                       _hd4043841769_
                       _tl4043741771_
                       _e4044241774_
                       _hd4044141777_
                       _tl4044041779_
                       _e4044541782_
                       _hd4044441785_
                       _tl4044341787_
                       _e4044841790_
                       _hd4044741793_
                       _tl4044641795_
                       _e4045141798_
                       _hd4045041801_
                       _tl4044941803_
                       _e4045441806_
                       _hd4045341809_
                       _tl4045241811_
                       _e4045741814_
                       _hd4045641817_
                       _tl4045541819_
                       _e4046041822_
                       _hd4045941825_
                       _tl4045841827_
                       ___splice4542145422_
                       _target4046141830_
                       _tl4046341832_)
                      (___match4571845719_
                       _e4043341750_
                       _hd4043241753_
                       _tl4043141755_
                       _e4043641758_
                       _hd4043541761_
                       _tl4043441763_
                       _e4043941766_
                       _hd4043841769_
                       _tl4043741771_
                       _e4044241774_
                       _hd4044141777_
                       _tl4044041779_
                       _e4044541782_
                       _hd4044441785_
                       _tl4044341787_
                       _e4044841790_
                       _hd4044741793_
                       _tl4044641795_
                       _e4045141798_
                       _hd4045041801_
                       _tl4044941803_
                       _e4045441806_
                       _hd4045341809_
                       _tl4045241811_
                       _e4045741814_
                       _hd4045641817_
                       _tl4045541819_
                       _e4046041822_
                       _hd4045941825_
                       _tl4045841827_))))
              (___match4571845719_
               _e4043341750_
               _hd4043241753_
               _tl4043141755_
               _e4043641758_
               _hd4043541761_
               _tl4043441763_
               _e4043941766_
               _hd4043841769_
               _tl4043741771_
               _e4044241774_
               _hd4044141777_
               _tl4044041779_
               _e4044541782_
               _hd4044441785_
               _tl4044341787_
               _e4044841790_
               _hd4044741793_
               _tl4044641795_
               _e4045141798_
               _hd4045041801_
               _tl4044941803_
               _e4045441806_
               _hd4045341809_
               _tl4045241811_
               _e4045741814_
               _hd4045641817_
               _tl4045541819_
               _e4046041822_
               _hd4045941825_
               _tl4045841827_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match4592245923_
                                                   _e4043341750_
                                                   _hd4043241753_
                                                   _tl4043141755_
                                                   _e4043641758_
                                                   _hd4043541761_
                                                   _tl4043441763_
                                                   _e4043941766_
                                                   _hd4043841769_
                                                   _tl4043741771_
                                                   _e4044241774_
                                                   _hd4044141777_
                                                   _tl4044041779_
                                                   _e4044541782_
                                                   _hd4044441785_
                                                   _tl4044341787_
                                                   _e4044841790_
                                                   _hd4044741793_
                                                   _tl4044641795_
                                                   _e4045141798_
                                                   _hd4045041801_
                                                   _tl4044941803_
                                                   _e4045441806_
                                                   _hd4045341809_
                                                   _tl4045241811_))))
                                          (___match4592245923_
                                           _e4043341750_
                                           _hd4043241753_
                                           _tl4043141755_
                                           _e4043641758_
                                           _hd4043541761_
                                           _tl4043441763_
                                           _e4043941766_
                                           _hd4043841769_
                                           _tl4043741771_
                                           _e4044241774_
                                           _hd4044141777_
                                           _tl4044041779_
                                           _e4044541782_
                                           _hd4044441785_
                                           _tl4044341787_
                                           _e4044841790_
                                           _hd4044741793_
                                           _tl4044641795_
                                           _e4045141798_
                                           _hd4045041801_
                                           _tl4044941803_
                                           _e4045441806_
                                           _hd4045341809_
                                           _tl4045241811_))
                                      (___match4559845599_
                                       _e4043341750_
                                       _hd4043241753_
                                       _tl4043141755_
                                       _e4043641758_
                                       _hd4043541761_
                                       _tl4043441763_
                                       _e4043941766_
                                       _hd4043841769_
                                       _tl4043741771_
                                       _e4044241774_
                                       _hd4044141777_
                                       _tl4044041779_
                                       _e4044541782_
                                       _hd4044441785_
                                       _tl4044341787_
                                       _e4044841790_
                                       _hd4044741793_
                                       _tl4044641795_
                                       _e4045141798_
                                       _hd4045041801_
                                       _tl4044941803_
                                       _e4045441806_
                                       _hd4045341809_
                                       _tl4045241811_
                                       _e4045741814_
                                       _hd4045641817_
                                       _tl4045541819_))
                                  (___match4592245923_
                                   _e4043341750_
                                   _hd4043241753_
                                   _tl4043141755_
                                   _e4043641758_
                                   _hd4043541761_
                                   _tl4043441763_
                                   _e4043941766_
                                   _hd4043841769_
                                   _tl4043741771_
                                   _e4044241774_
                                   _hd4044141777_
                                   _tl4044041779_
                                   _e4044541782_
                                   _hd4044441785_
                                   _tl4044341787_
                                   _e4044841790_
                                   _hd4044741793_
                                   _tl4044641795_
                                   _e4045141798_
                                   _hd4045041801_
                                   _tl4044941803_
                                   _e4045441806_
                                   _hd4045341809_
                                   _tl4045241811_))))
                          (___match4592245923_
                           _e4043341750_
                           _hd4043241753_
                           _tl4043141755_
                           _e4043641758_
                           _hd4043541761_
                           _tl4043441763_
                           _e4043941766_
                           _hd4043841769_
                           _tl4043741771_
                           _e4044241774_
                           _hd4044141777_
                           _tl4044041779_
                           _e4044541782_
                           _hd4044441785_
                           _tl4044341787_
                           _e4044841790_
                           _hd4044741793_
                           _tl4044641795_
                           _e4045141798_
                           _hd4045041801_
                           _tl4044941803_
                           _e4045441806_
                           _hd4045341809_
                           _tl4045241811_))))
                  (___match4586045861_
                   _e4043341750_
                   _hd4043241753_
                   _tl4043141755_
                   _e4043641758_
                   _hd4043541761_
                   _tl4043441763_
                   _e4043941766_
                   _hd4043841769_
                   _tl4043741771_
                   _e4044241774_
                   _hd4044141777_
                   _tl4044041779_
                   _e4044541782_
                   _hd4044441785_
                   _tl4044341787_
                   _e4044841790_
                   _hd4044741793_
                   _tl4044641795_
                   _e4045141798_
                   _hd4045041801_
                   _tl4044941803_))
              (___kont4544345444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont4544345444_))
                                          (___kont4544345444_))
                                      (___kont4544345444_))))
                              (___kont4544345444_))))
                      (___kont4544345444_))
                  (___kont4544345444_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4544345444_))
                                              (___kont4544345444_))
                                          (___kont4544345444_))))
                                  (___kont4544345444_))))
                          (___kont4544345444_))))
                  (___kont4544345444_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx38834_
               _self38835_
               _$t38836_
               _methods38837_
               _slots38838_
               _class-check38839_
               _struct-check38840_
               _struct-assert38841_)
        (letrec ((_force-e38843_
                  (lambda (_what40405_)
                    (let ((__tmp47254
                           (let ((__tmp47258
                                  (let ((__tmp47259
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp47259)))
                                 (__tmp47255
                                  (let ((__tmp47256
                                         (let ((__tmp47257
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what40405_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp47257))))
                                    (declare (not safe))
                                    (cons __tmp47256 '()))))
                             (declare (not safe))
                             (cons __tmp47258 __tmp47255))))
                      (declare (not safe))
                      (cons '%#call __tmp47254)))))
          (let* ((___stx4615746158_ _stx38834_)
                 (_g3885539173_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx4615746158_)))))
            (let ((___kont4615946160_
                   (lambda (_L40351_ _L40352_ _L40353_ _L40354_)
                     (let ((_$method40399_
                            (let ((__tmp47260
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L40352_))))
                              (declare (not safe))
                              (table-ref _methods38837_ __tmp47260)))
                           (_args40400_
                            (map (lambda (_g4038740389_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g4038740389_
                                      _self38835_
                                      _$t38836_
                                      _methods38837_
                                      _slots38838_
                                      _class-check38839_
                                      _struct-check38840_
                                      _struct-assert38841_)))
                                 (let ((__tmp47261
                                        (lambda (_g4039140394_ _g4039240396_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4039140394_
                                                  _g4039240396_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47261 '() _L40351_)))))
                       (let ((__tmp47262
                              (let ((__tmp47263
                                     (let ((__tmp47267
                                            (let ()
                                              (declare (not safe))
                                              (_force-e38843_ _$method40399_)))
                                           (__tmp47264
                                            (let ((__tmp47265
                                                   (let ((__tmp47266
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self38835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp47266))))
                                              (declare (not safe))
                                              (cons __tmp47265 _args40400_))))
                                       (declare (not safe))
                                       (cons __tmp47267 __tmp47264))))
                                (declare (not safe))
                                (cons '%#call __tmp47263))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp47262 _stx38834_)))))
                  (___kont4616346164_
                   (lambda (_L40183_ _L40184_ _L40185_ _L40186_ _L40187_)
                     (let ((_$method40239_
                            (let ((__tmp47268
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L40184_))))
                              (declare (not safe))
                              (table-ref _methods38837_ __tmp47268)))
                           (_args40240_
                            (map (lambda (_g4022740229_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g4022740229_
                                      _self38835_
                                      _$t38836_
                                      _methods38837_
                                      _slots38838_
                                      _class-check38839_
                                      _struct-check38840_
                                      _struct-assert38841_)))
                                 (let ((__tmp47269
                                        (lambda (_g4023140234_ _g4023240236_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4023140234_
                                                  _g4023240236_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp47269 '() _L40183_)))))
                       (let ((__tmp47270
                              (let ((__tmp47271
                                     (let ((__tmp47277
                                            (let ((__tmp47278
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp47278)))
                                           (__tmp47272
                                            (let ((__tmp47276
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e38843_
                                                      _$method40239_)))
                                                  (__tmp47273
                                                   (let ((__tmp47274
                                                          (let ((__tmp47275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self38835_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp47275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47274
                                                           _args40240_))))
                                              (declare (not safe))
                                              (cons __tmp47276 __tmp47273))))
                                       (declare (not safe))
                                       (cons __tmp47277 __tmp47272))))
                                (declare (not safe))
                                (cons '%#call __tmp47271))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp47270 _stx38834_)))))
                  (___kont4616746168_
                   (lambda (_L40014_ _L40015_ _L40016_)
                     (let* ((_$field40048_
                             (let ((__tmp47279
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L40014_))))
                               (declare (not safe))
                               (table-ref _slots38838_ __tmp47279)))
                            (__tmp47280
                             (let ((__tmp47281
                                    (let ((__tmp47288
                                           (let ((__tmp47289
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t38836_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp47289)))
                                          (__tmp47282
                                           (let ((__tmp47286
                                                  (let ((__tmp47287
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field40048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp47287)))
                                                 (__tmp47283
                                                  (let ((__tmp47284
                                                         (let ((__tmp47285
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self38835_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp47285))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp47284 '()))))
                                             (declare (not safe))
                                             (cons __tmp47286 __tmp47283))))
                                      (declare (not safe))
                                      (cons __tmp47288 __tmp47282))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp47281))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp47280 _stx38834_))))
                  (___kont4616946170_
                   (lambda (_L39888_ _L39889_ _L39890_ _L39891_)
                     (let ((_$field39926_
                            (let ((__tmp47290
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L39889_))))
                              (declare (not safe))
                              (table-ref _slots38838_ __tmp47290)))
                           (_expr39927_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L39888_
                               _self38835_
                               _$t38836_
                               _methods38837_
                               _slots38838_
                               _class-check38839_
                               _struct-check38840_
                               _struct-assert38841_))))
                       (let ((__tmp47291
                              (let ((__tmp47292
                                     (let ((__tmp47300
                                            (let ((__tmp47301
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t38836_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp47301)))
                                           (__tmp47293
                                            (let ((__tmp47298
                                                   (let ((__tmp47299
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field39926_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp47299)))
                                                  (__tmp47294
                                                   (let ((__tmp47296
                                                          (let ((__tmp47297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self38835_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp47297)))
                 (__tmp47295
                  (let () (declare (not safe)) (cons _expr39927_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47296
                                                           __tmp47295))))
                                              (declare (not safe))
                                              (cons __tmp47298 __tmp47294))))
                                       (declare (not safe))
                                       (cons __tmp47300 __tmp47293))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp47292))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp47291 _stx38834_)))))
                  (___kont4617146172_
                   (lambda (_L39767_ _L39768_)
                     (let* ((_slot39790_
                             (##structure-ref
                              (let ((__tmp47302
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L39768_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp47302))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field39792_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots38838_ _slot39790_))))
                       (let ((__tmp47303
                              (let ((__tmp47304
                                     (let ((__tmp47311
                                            (let ((__tmp47312
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t38836_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp47312)))
                                           (__tmp47305
                                            (let ((__tmp47309
                                                   (let ((__tmp47310
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field39792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp47310)))
                                                  (__tmp47306
                                                   (let ((__tmp47307
                                                          (let ((__tmp47308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self38835_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp47308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47307 '()))))
                                              (declare (not safe))
                                              (cons __tmp47309 __tmp47306))))
                                       (declare (not safe))
                                       (cons __tmp47311 __tmp47305))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp47304))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp47303 _stx38834_)))))
                  (___kont4617346174_
                   (lambda (_L39672_ _L39673_ _L39674_)
                     (let* ((_slot39699_
                             (##structure-ref
                              (let ((__tmp47313
                                     (let ((__tmp47314
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'getf))))
                                       (declare (not safe))
                                       (gxc#identifier-symbol __tmp47314))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp47313))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field39701_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots38838_ _slot39699_)))
                            (_expr39703_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L39672_
                                _self38835_
                                _$t38836_
                                _methods38837_
                                _slots38838_
                                _class-check38839_
                                _struct-check38840_
                                _struct-assert38841_))))
                       (let ((__tmp47315
                              (let ((__tmp47316
                                     (let ((__tmp47324
                                            (let ((__tmp47325
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t38836_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp47325)))
                                           (__tmp47317
                                            (let ((__tmp47322
                                                   (let ((__tmp47323
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field39701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp47323)))
                                                  (__tmp47318
                                                   (let ((__tmp47320
                                                          (let ((__tmp47321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self38835_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp47321)))
                 (__tmp47319
                  (let () (declare (not safe)) (cons _expr39703_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47320
                                                           __tmp47319))))
                                              (declare (not safe))
                                              (cons __tmp47322 __tmp47318))))
                                       (declare (not safe))
                                       (cons __tmp47324 __tmp47317))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp47316))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp47315 _stx38834_)))))
                  (___kont4617546176_
                   (lambda (_L39580_ _L39581_)
                     (let ((__tmp47326
                            (let ((__tmp47327
                                   (let ((__tmp47328
                                          (##structure-ref
                                           (let ((__tmp47329
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L39581_))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-type
                                              __tmp47329))
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (table-ref
                                      _class-check38839_
                                      __tmp47328))))
                              (declare (not safe))
                              (cons __tmp47327 '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp47326))))
                  (___kont4617746178_
                   (lambda (_L39489_ _L39490_)
                     (let ((_t39512_
                            (##structure-ref
                             (let ((__tmp47330
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L39490_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp47330))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (table-ref _struct-assert38841_ _t39512_ '#f))
                           '(%#quote #t)
                           (let ((_$e39514_
                                  (let ()
                                    (declare (not safe))
                                    (table-ref
                                     _struct-check38840_
                                     _t39512_
                                     '#f))))
                             (if _$e39514_
                                 ((lambda (_checkq39517_)
                                    (let ((__tmp47331
                                           (let ()
                                             (declare (not safe))
                                             (cons _checkq39517_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp47331)))
                                  _$e39514_)
                                 _stx38834_))))))
                  (___kont4617946180_
                   (lambda (_L39374_ _L39375_)
                     (let* ((_getf39408_
                             (let ((__tmp47332
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L39375_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp47332)))
                            (_t39410_
                             (##structure-ref
                              _getf39408_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf39408_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx38834_
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert38841_ _t39410_ '#f))
                               (let* ((_struct-t39413_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t39410_)))
                                      (_off39415_
                                       (fx+ (##structure-ref
                                             _getf39408_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t39413_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp47361
                                        (let ((__tmp47368
                                               (let ((__tmp47369
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t39410_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp47369)))
                                              (__tmp47362
                                               (let ((__tmp47366
                                                      (let ((__tmp47367
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off39415_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp47367)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp47363
                                                      (let ((__tmp47364
                                                             (let ((__tmp47365
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self38835_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp47365))))
                (declare (not safe))
                (cons __tmp47364 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47366
                                                       __tmp47363))))
                                          (declare (not safe))
                                          (cons __tmp47368 __tmp47362))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-ref __tmp47361)))
                               (let ((_$e39418_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check38840_
                                         _t39410_
                                         '#f))))
                                 (if _$e39418_
                                     ((lambda (_checkq39421_)
                                        (let* ((_struct-t39423_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t39410_)))
                                               (_off39425_
                                                (fx+ (##structure-ref
                                                      _getf39408_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t39423_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp47333
                                                 (let ((__tmp47359
                                                        (let ((__tmp47360
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq39421_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp47360)))
               (__tmp47334
                (let ((__tmp47349
                       (let ((__tmp47350
                              (let ((__tmp47357
                                     (let ((__tmp47358
                                            (let ()
                                              (declare (not safe))
                                              (cons _t39410_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp47358)))
                                    (__tmp47351
                                     (let ((__tmp47355
                                            (let ((__tmp47356
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off39425_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp47356)))
                                           (__tmp47352
                                            (let ((__tmp47353
                                                   (let ((__tmp47354
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self38835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp47354))))
                                              (declare (not safe))
                                              (cons __tmp47353 '()))))
                                       (declare (not safe))
                                       (cons __tmp47355 __tmp47352))))
                                (declare (not safe))
                                (cons __tmp47357 __tmp47351))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp47350)))
                      (__tmp47335
                       (let ((__tmp47336
                              (let ((__tmp47337
                                     (let ((__tmp47347
                                            (let ((__tmp47348
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp47348)))
                                           (__tmp47338
                                            (let ((__tmp47345
                                                   (let ((__tmp47346
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp47346)))
                                                  (__tmp47339
                                                   (let ((__tmp47343
                                                          (let ((__tmp47344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t39410_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp47344)))
                 (__tmp47340
                  (let ((__tmp47341
                         (let ((__tmp47342
                                (let ()
                                  (declare (not safe))
                                  (cons _self38835_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp47342))))
                    (declare (not safe))
                    (cons __tmp47341 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47343
                                                           __tmp47340))))
                                              (declare (not safe))
                                              (cons __tmp47345 __tmp47339))))
                                       (declare (not safe))
                                       (cons __tmp47347 __tmp47338))))
                                (declare (not safe))
                                (cons '%#call __tmp47337))))
                         (declare (not safe))
                         (cons __tmp47336 '()))))
                  (declare (not safe))
                  (cons __tmp47349 __tmp47335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47359
                                                         __tmp47334))))
                                            (declare (not safe))
                                            (cons '%#if __tmp47333))))
                                      _$e39418_)
                                     _stx38834_)))))))
                  (___kont4618146182_
                   (lambda (_L39249_ _L39250_ _L39251_)
                     (let* ((_setf39291_
                             (let ((__tmp47370
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L39251_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp47370)))
                            (_t39293_
                             (##structure-ref _setf39291_ '1 gxc#!type::t '#f))
                            (_expr39295_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L39249_
                                _self38835_
                                _$t38836_
                                _methods38837_
                                _slots38838_
                                _class-check38839_
                                _struct-check38840_
                                _struct-assert38841_))))
                       (if (##structure-ref
                            _setf39291_
                            '3
                            gxc#!struct-setf::t
                            '#f)
                           (let ((__tmp47420
                                  (let ((__tmp47426
                                         (let ((__tmp47429
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#ref)))
                                               (__tmp47427
                                                (let ((__tmp47428
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'setf))))
                                                  (declare (not safe))
                                                  (cons __tmp47428 '()))))
                                           (declare (not safe))
                                           (cons __tmp47429 __tmp47427)))
                                        (__tmp47421
                                         (let ((__tmp47423
                                                (let ((__tmp47425
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp47424
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L39250_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp47425
                                                        __tmp47424)))
                                               (__tmp47422
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _expr39295_ '()))))
                                           (declare (not safe))
                                           (cons __tmp47423 __tmp47422))))
                                    (declare (not safe))
                                    (cons __tmp47426 __tmp47421))))
                             (declare (not safe))
                             (cons '%#call __tmp47420))
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert38841_ _t39293_ '#f))
                               (let* ((_struct-t39298_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t39293_)))
                                      (_off39300_
                                       (fx+ (##structure-ref
                                             _setf39291_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t39298_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp47410
                                        (let ((__tmp47418
                                               (let ((__tmp47419
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t39293_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp47419)))
                                              (__tmp47411
                                               (let ((__tmp47416
                                                      (let ((__tmp47417
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off39300_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp47417)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp47412
                                                      (let ((__tmp47414
                                                             (let ((__tmp47415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self38835_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp47415)))
                    (__tmp47413
                     (let () (declare (not safe)) (cons _expr39295_ '()))))
                (declare (not safe))
                (cons __tmp47414 __tmp47413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp47416
                                                       __tmp47412))))
                                          (declare (not safe))
                                          (cons __tmp47418 __tmp47411))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-set! __tmp47410)))
                               (let ((_$e39303_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check38840_
                                         _t39293_
                                         '#f))))
                                 (if _$e39303_
                                     ((lambda (_checkq39306_)
                                        (let* ((_struct-t39308_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t39293_)))
                                               (_off39310_
                                                (fx+ (##structure-ref
                                                      _setf39291_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t39308_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp47381
                                                 (let ((__tmp47408
                                                        (let ((__tmp47409
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq39306_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp47409)))
               (__tmp47382
                (let ((__tmp47397
                       (let ((__tmp47398
                              (let ((__tmp47406
                                     (let ((__tmp47407
                                            (let ()
                                              (declare (not safe))
                                              (cons _t39293_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp47407)))
                                    (__tmp47399
                                     (let ((__tmp47404
                                            (let ((__tmp47405
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off39310_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp47405)))
                                           (__tmp47400
                                            (let ((__tmp47402
                                                   (let ((__tmp47403
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self38835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp47403)))
                                                  (__tmp47401
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr39295_ '()))))
                                              (declare (not safe))
                                              (cons __tmp47402 __tmp47401))))
                                       (declare (not safe))
                                       (cons __tmp47404 __tmp47400))))
                                (declare (not safe))
                                (cons __tmp47406 __tmp47399))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp47398)))
                      (__tmp47383
                       (let ((__tmp47384
                              (let ((__tmp47385
                                     (let ((__tmp47395
                                            (let ((__tmp47396
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp47396)))
                                           (__tmp47386
                                            (let ((__tmp47393
                                                   (let ((__tmp47394
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp47394)))
                                                  (__tmp47387
                                                   (let ((__tmp47391
                                                          (let ((__tmp47392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t39293_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp47392)))
                 (__tmp47388
                  (let ((__tmp47389
                         (let ((__tmp47390
                                (let ()
                                  (declare (not safe))
                                  (cons _self38835_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp47390))))
                    (declare (not safe))
                    (cons __tmp47389 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47391
                                                           __tmp47388))))
                                              (declare (not safe))
                                              (cons __tmp47393 __tmp47387))))
                                       (declare (not safe))
                                       (cons __tmp47395 __tmp47386))))
                                (declare (not safe))
                                (cons '%#call __tmp47385))))
                         (declare (not safe))
                         (cons __tmp47384 '()))))
                  (declare (not safe))
                  (cons __tmp47397 __tmp47383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp47408
                                                         __tmp47382))))
                                            (declare (not safe))
                                            (cons '%#if __tmp47381))))
                                      _$e39303_)
                                     (let ((__tmp47371
                                            (let ((__tmp47377
                                                   (let ((__tmp47380
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)))
                                                         (__tmp47378
                                                          (let ((__tmp47379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'setf))))
                    (declare (not safe))
                    (cons __tmp47379 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47380
                                                           __tmp47378)))
                                                  (__tmp47372
                                                   (let ((__tmp47374
                                                          (let ((__tmp47376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref)))
                        (__tmp47375
                         (let () (declare (not safe)) (cons _L39250_ '()))))
                    (declare (not safe))
                    (cons __tmp47376 __tmp47375)))
                 (__tmp47373
                  (let () (declare (not safe)) (cons _expr39295_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp47374
                                                           __tmp47373))))
                                              (declare (not safe))
                                              (cons __tmp47377 __tmp47372))))
                                       (declare (not safe))
                                       (cons '%#call __tmp47371)))))))))
                  (___kont4618346184_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx38834_
                        _self38835_
                        _$t38836_
                        _methods38837_
                        _slots38838_
                        _class-check38839_
                        _struct-check38840_
                        _struct-assert38841_)))))
              (let* ((___match4689446895_
                      (lambda (_e3914739185_
                               _hd3914639188_
                               _tl3914539190_
                               _e3915039193_
                               _hd3914939196_
                               _tl3914839198_
                               _e3915339201_
                               _hd3915239204_
                               _tl3915139206_
                               _e3915639209_
                               _hd3915539212_
                               _tl3915439214_
                               _e3915939217_
                               _hd3915839220_
                               _tl3915739222_
                               _e3916239225_
                               _hd3916139228_
                               _tl3916039230_
                               _e3916539233_
                               _hd3916439236_
                               _tl3916339238_
                               _e3916839241_
                               _hd3916739244_
                               _tl3916639246_)
                        (let ((_L39249_ _hd3916739244_)
                              (_L39250_ _hd3916439236_)
                              (_L39251_ _hd3915539212_))
                          (if (if (let ((__tmp47432
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L39250_
                                            _self38835_))))
                                    (declare (not safe))
                                    (not __tmp47432))
                                  '#f
                                  (let ((_$e39280_
                                         (let ((__tmp47430
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L39251_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp47430))))
                                    (and _$e39280_
                                         ((lambda (_t39283_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t39283_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t3928439286_
                                                        (let ((__tmp47431
                                                               (##structure-ref
                                                                _t39283_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp47431))))
                                                   (and _struct-t3928439286_
                                                        (let ((_struct-t39289_
                                                               _struct-t3928439286_))
                                                          (##structure-ref
                                                           _struct-t39289_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e39280_))))
                              (___kont4618146182_ _L39249_ _L39250_ _L39251_)
                              (___kont4618346184_)))))
                     (___match4688646887_
                      (lambda (_e3914739185_
                               _hd3914639188_
                               _tl3914539190_
                               _e3915039193_
                               _hd3914939196_
                               _tl3914839198_
                               _e3915339201_
                               _hd3915239204_
                               _tl3915139206_
                               _e3915639209_
                               _hd3915539212_
                               _tl3915439214_
                               _e3915939217_
                               _hd3915839220_
                               _tl3915739222_
                               _e3916239225_
                               _hd3916139228_
                               _tl3916039230_
                               _e3916539233_
                               _hd3916439236_
                               _tl3916339238_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3915739222_))
                            (let ((_e3916839241_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3915739222_))))
                              (let ((_tl3916639246_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3916839241_)))
                                    (_hd3916739244_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3916839241_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3916639246_))
                                    (___match4689446895_
                                     _e3914739185_
                                     _hd3914639188_
                                     _tl3914539190_
                                     _e3915039193_
                                     _hd3914939196_
                                     _tl3914839198_
                                     _e3915339201_
                                     _hd3915239204_
                                     _tl3915139206_
                                     _e3915639209_
                                     _hd3915539212_
                                     _tl3915439214_
                                     _e3915939217_
                                     _hd3915839220_
                                     _tl3915739222_
                                     _e3916239225_
                                     _hd3916139228_
                                     _tl3916039230_
                                     _e3916539233_
                                     _hd3916439236_
                                     _tl3916339238_
                                     _e3916839241_
                                     _hd3916739244_
                                     _tl3916639246_)
                                    (___kont4618346184_))))
                            (___kont4618346184_))))
                     (___match4683246833_
                      (lambda (_e3912339318_
                               _hd3912239321_
                               _tl3912139323_
                               _e3912639326_
                               _hd3912539329_
                               _tl3912439331_
                               _e3912939334_
                               _hd3912839337_
                               _tl3912739339_
                               _e3913239342_
                               _hd3913139345_
                               _tl3913039347_
                               _e3913539350_
                               _hd3913439353_
                               _tl3913339355_
                               _e3913839358_
                               _hd3913739361_
                               _tl3913639363_
                               _e3914139366_
                               _hd3914039369_
                               _tl3913939371_)
                        (let ((_L39374_ _hd3914039369_)
                              (_L39375_ _hd3913139345_))
                          (if (if (let ((__tmp47435
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L39374_
                                            _self38835_))))
                                    (declare (not safe))
                                    (not __tmp47435))
                                  '#f
                                  (let ((_$e39397_
                                         (let ((__tmp47433
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L39375_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp47433))))
                                    (and _$e39397_
                                         ((lambda (_t39400_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t39400_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t3940139403_
                                                        (let ((__tmp47434
                                                               (##structure-ref
                                                                _t39400_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp47434))))
                                                   (and _struct-t3940139403_
                                                        (let ((_struct-t39406_
                                                               _struct-t3940139403_))
                                                          (##structure-ref
                                                           _struct-t39406_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e39397_))))
                              (___kont4617946180_ _L39374_ _L39375_)
                              (___kont4618346184_)))))
                     (___match4677646777_
                      (lambda (_e3910039433_
                               _hd3909939436_
                               _tl3909839438_
                               _e3910339441_
                               _hd3910239444_
                               _tl3910139446_
                               _e3910639449_
                               _hd3910539452_
                               _tl3910439454_
                               _e3910939457_
                               _hd3910839460_
                               _tl3910739462_
                               _e3911239465_
                               _hd3911139468_
                               _tl3911039470_
                               _e3911539473_
                               _hd3911439476_
                               _tl3911339478_
                               _e3911839481_
                               _hd3911739484_
                               _tl3911639486_)
                        (let ((_L39489_ _hd3911739484_)
                              (_L39490_ _hd3910839460_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L39489_
                                      _self38835_))
                                   (let ((__tmp47436
                                          (let ((__tmp47437
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L39490_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp47437))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp47436
                                      'gxc#!struct-pred::t)))
                              (___kont4617746178_ _L39489_ _L39490_)
                              (___match4683246833_
                               _e3910039433_
                               _hd3909939436_
                               _tl3909839438_
                               _e3910339441_
                               _hd3910239444_
                               _tl3910139446_
                               _e3910639449_
                               _hd3910539452_
                               _tl3910439454_
                               _e3910939457_
                               _hd3910839460_
                               _tl3910739462_
                               _e3911239465_
                               _hd3911139468_
                               _tl3911039470_
                               _e3911539473_
                               _hd3911439476_
                               _tl3911339478_
                               _e3911839481_
                               _hd3911739484_
                               _tl3911639486_)))))
                     (___match4672046721_
                      (lambda (_e3907739524_
                               _hd3907639527_
                               _tl3907539529_
                               _e3908039532_
                               _hd3907939535_
                               _tl3907839537_
                               _e3908339540_
                               _hd3908239543_
                               _tl3908139545_
                               _e3908639548_
                               _hd3908539551_
                               _tl3908439553_
                               _e3908939556_
                               _hd3908839559_
                               _tl3908739561_
                               _e3909239564_
                               _hd3909139567_
                               _tl3909039569_
                               _e3909539572_
                               _hd3909439575_
                               _tl3909339577_)
                        (let ((_L39580_ _hd3909439575_)
                              (_L39581_ _hd3908539551_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L39580_
                                      _self38835_))
                                   (let ((__tmp47438
                                          (let ((__tmp47439
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L39581_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp47439))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp47438
                                      'gxc#!class-pred::t)))
                              (___kont4617546176_ _L39580_ _L39581_)
                              (___match4677646777_
                               _e3907739524_
                               _hd3907639527_
                               _tl3907539529_
                               _e3908039532_
                               _hd3907939535_
                               _tl3907839537_
                               _e3908339540_
                               _hd3908239543_
                               _tl3908139545_
                               _e3908639548_
                               _hd3908539551_
                               _tl3908439553_
                               _e3908939556_
                               _hd3908839559_
                               _tl3908739561_
                               _e3909239564_
                               _hd3909139567_
                               _tl3909039569_
                               _e3909539572_
                               _hd3909439575_
                               _tl3909339577_)))))
                     (___match4671846719_
                      (lambda (_e3907739524_
                               _hd3907639527_
                               _tl3907539529_
                               _e3908039532_
                               _hd3907939535_
                               _tl3907839537_
                               _e3908339540_
                               _hd3908239543_
                               _tl3908139545_
                               _e3908639548_
                               _hd3908539551_
                               _tl3908439553_
                               _e3908939556_
                               _hd3908839559_
                               _tl3908739561_
                               _e3909239564_
                               _hd3909139567_
                               _tl3909039569_
                               _e3909539572_
                               _hd3909439575_
                               _tl3909339577_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3908739561_))
                            (___match4672046721_
                             _e3907739524_
                             _hd3907639527_
                             _tl3907539529_
                             _e3908039532_
                             _hd3907939535_
                             _tl3907839537_
                             _e3908339540_
                             _hd3908239543_
                             _tl3908139545_
                             _e3908639548_
                             _hd3908539551_
                             _tl3908439553_
                             _e3908939556_
                             _hd3908839559_
                             _tl3908739561_
                             _e3909239564_
                             _hd3909139567_
                             _tl3909039569_
                             _e3909539572_
                             _hd3909439575_
                             _tl3909339577_)
                            (___match4688646887_
                             _e3907739524_
                             _hd3907639527_
                             _tl3907539529_
                             _e3908039532_
                             _hd3907939535_
                             _tl3907839537_
                             _e3908339540_
                             _hd3908239543_
                             _tl3908139545_
                             _e3908639548_
                             _hd3908539551_
                             _tl3908439553_
                             _e3908939556_
                             _hd3908839559_
                             _tl3908739561_
                             _e3909239564_
                             _hd3909139567_
                             _tl3909039569_
                             _e3909539572_
                             _hd3909439575_
                             _tl3909339577_))))
                     (___match4666446665_
                      (lambda (_e3905139608_
                               _hd3905039611_
                               _tl3904939613_
                               _e3905439616_
                               _hd3905339619_
                               _tl3905239621_
                               _e3905739624_
                               _hd3905639627_
                               _tl3905539629_
                               _e3906039632_
                               _hd3905939635_
                               _tl3905839637_
                               _e3906339640_
                               _hd3906239643_
                               _tl3906139645_
                               _e3906639648_
                               _hd3906539651_
                               _tl3906439653_
                               _e3906939656_
                               _hd3906839659_
                               _tl3906739661_
                               _e3907239664_
                               _hd3907139667_
                               _tl3907039669_)
                        (let ((_L39672_ _hd3907139667_)
                              (_L39673_ _hd3906839659_)
                              (_L39674_ _hd3905939635_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L39673_
                                      _self38835_))
                                   (let ((__tmp47440
                                          (let ((__tmp47441
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L39674_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp47441))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp47440
                                      'gxc#!class-setf::t)))
                              (___kont4617346174_ _L39672_ _L39673_ _L39674_)
                              (___match4689446895_
                               _e3905139608_
                               _hd3905039611_
                               _tl3904939613_
                               _e3905439616_
                               _hd3905339619_
                               _tl3905239621_
                               _e3905739624_
                               _hd3905639627_
                               _tl3905539629_
                               _e3906039632_
                               _hd3905939635_
                               _tl3905839637_
                               _e3906339640_
                               _hd3906239643_
                               _tl3906139645_
                               _e3906639648_
                               _hd3906539651_
                               _tl3906439653_
                               _e3906939656_
                               _hd3906839659_
                               _tl3906739661_
                               _e3907239664_
                               _hd3907139667_
                               _tl3907039669_)))))
                     (___match4666246663_
                      (lambda (_e3905139608_
                               _hd3905039611_
                               _tl3904939613_
                               _e3905439616_
                               _hd3905339619_
                               _tl3905239621_
                               _e3905739624_
                               _hd3905639627_
                               _tl3905539629_
                               _e3906039632_
                               _hd3905939635_
                               _tl3905839637_
                               _e3906339640_
                               _hd3906239643_
                               _tl3906139645_
                               _e3906639648_
                               _hd3906539651_
                               _tl3906439653_
                               _e3906939656_
                               _hd3906839659_
                               _tl3906739661_
                               _e3907239664_
                               _hd3907139667_
                               _tl3907039669_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3907039669_))
                            (___match4666446665_
                             _e3905139608_
                             _hd3905039611_
                             _tl3904939613_
                             _e3905439616_
                             _hd3905339619_
                             _tl3905239621_
                             _e3905739624_
                             _hd3905639627_
                             _tl3905539629_
                             _e3906039632_
                             _hd3905939635_
                             _tl3905839637_
                             _e3906339640_
                             _hd3906239643_
                             _tl3906139645_
                             _e3906639648_
                             _hd3906539651_
                             _tl3906439653_
                             _e3906939656_
                             _hd3906839659_
                             _tl3906739661_
                             _e3907239664_
                             _hd3907139667_
                             _tl3907039669_)
                            (___kont4618346184_))))
                     (___match4665646657_
                      (lambda (_e3905139608_
                               _hd3905039611_
                               _tl3904939613_
                               _e3905439616_
                               _hd3905339619_
                               _tl3905239621_
                               _e3905739624_
                               _hd3905639627_
                               _tl3905539629_
                               _e3906039632_
                               _hd3905939635_
                               _tl3905839637_
                               _e3906339640_
                               _hd3906239643_
                               _tl3906139645_
                               _e3906639648_
                               _hd3906539651_
                               _tl3906439653_
                               _e3906939656_
                               _hd3906839659_
                               _tl3906739661_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3906139645_))
                            (let ((_e3907239664_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3906139645_))))
                              (let ((_tl3907039669_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3907239664_)))
                                    (_hd3907139667_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3907239664_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3907039669_))
                                    (___match4666446665_
                                     _e3905139608_
                                     _hd3905039611_
                                     _tl3904939613_
                                     _e3905439616_
                                     _hd3905339619_
                                     _tl3905239621_
                                     _e3905739624_
                                     _hd3905639627_
                                     _tl3905539629_
                                     _e3906039632_
                                     _hd3905939635_
                                     _tl3905839637_
                                     _e3906339640_
                                     _hd3906239643_
                                     _tl3906139645_
                                     _e3906639648_
                                     _hd3906539651_
                                     _tl3906439653_
                                     _e3906939656_
                                     _hd3906839659_
                                     _tl3906739661_
                                     _e3907239664_
                                     _hd3907139667_
                                     _tl3907039669_)
                                    (___kont4618346184_))))
                            (___match4671846719_
                             _e3905139608_
                             _hd3905039611_
                             _tl3904939613_
                             _e3905439616_
                             _hd3905339619_
                             _tl3905239621_
                             _e3905739624_
                             _hd3905639627_
                             _tl3905539629_
                             _e3906039632_
                             _hd3905939635_
                             _tl3905839637_
                             _e3906339640_
                             _hd3906239643_
                             _tl3906139645_
                             _e3906639648_
                             _hd3906539651_
                             _tl3906439653_
                             _e3906939656_
                             _hd3906839659_
                             _tl3906739661_))))
                     (___match4660246603_
                      (lambda (_e3902739711_
                               _hd3902639714_
                               _tl3902539716_
                               _e3903039719_
                               _hd3902939722_
                               _tl3902839724_
                               _e3903339727_
                               _hd3903239730_
                               _tl3903139732_
                               _e3903639735_
                               _hd3903539738_
                               _tl3903439740_
                               _e3903939743_
                               _hd3903839746_
                               _tl3903739748_
                               _e3904239751_
                               _hd3904139754_
                               _tl3904039756_
                               _e3904539759_
                               _hd3904439762_
                               _tl3904339764_)
                        (let ((_L39767_ _hd3904439762_)
                              (_L39768_ _hd3903539738_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L39767_
                                      _self38835_))
                                   (let ((__tmp47442
                                          (let ((__tmp47443
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L39768_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp47443))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp47442
                                      'gxc#!class-getf::t)))
                              (___kont4617146172_ _L39767_ _L39768_)
                              (___match4672046721_
                               _e3902739711_
                               _hd3902639714_
                               _tl3902539716_
                               _e3903039719_
                               _hd3902939722_
                               _tl3902839724_
                               _e3903339727_
                               _hd3903239730_
                               _tl3903139732_
                               _e3903639735_
                               _hd3903539738_
                               _tl3903439740_
                               _e3903939743_
                               _hd3903839746_
                               _tl3903739748_
                               _e3904239751_
                               _hd3904139754_
                               _tl3904039756_
                               _e3904539759_
                               _hd3904439762_
                               _tl3904339764_)))))
                     (___match4660046601_
                      (lambda (_e3902739711_
                               _hd3902639714_
                               _tl3902539716_
                               _e3903039719_
                               _hd3902939722_
                               _tl3902839724_
                               _e3903339727_
                               _hd3903239730_
                               _tl3903139732_
                               _e3903639735_
                               _hd3903539738_
                               _tl3903439740_
                               _e3903939743_
                               _hd3903839746_
                               _tl3903739748_
                               _e3904239751_
                               _hd3904139754_
                               _tl3904039756_
                               _e3904539759_
                               _hd3904439762_
                               _tl3904339764_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3903739748_))
                            (___match4660246603_
                             _e3902739711_
                             _hd3902639714_
                             _tl3902539716_
                             _e3903039719_
                             _hd3902939722_
                             _tl3902839724_
                             _e3903339727_
                             _hd3903239730_
                             _tl3903139732_
                             _e3903639735_
                             _hd3903539738_
                             _tl3903439740_
                             _e3903939743_
                             _hd3903839746_
                             _tl3903739748_
                             _e3904239751_
                             _hd3904139754_
                             _tl3904039756_
                             _e3904539759_
                             _hd3904439762_
                             _tl3904339764_)
                            (___match4665646657_
                             _e3902739711_
                             _hd3902639714_
                             _tl3902539716_
                             _e3903039719_
                             _hd3902939722_
                             _tl3902839724_
                             _e3903339727_
                             _hd3903239730_
                             _tl3903139732_
                             _e3903639735_
                             _hd3903539738_
                             _tl3903439740_
                             _e3903939743_
                             _hd3903839746_
                             _tl3903739748_
                             _e3904239751_
                             _hd3904139754_
                             _tl3904039756_
                             _e3904539759_
                             _hd3904439762_
                             _tl3904339764_))))
                     (___match4654646547_
                      (lambda (_e3899239800_
                               _hd3899139803_
                               _tl3899039805_
                               _e3899539808_
                               _hd3899439811_
                               _tl3899339813_
                               _e3899839816_
                               _hd3899739819_
                               _tl3899639821_
                               _e3900139824_
                               _hd3900039827_
                               _tl3899939829_
                               _e3900439832_
                               _hd3900339835_
                               _tl3900239837_
                               _e3900739840_
                               _hd3900639843_
                               _tl3900539845_
                               _e3901039848_
                               _hd3900939851_
                               _tl3900839853_
                               _e3901339856_
                               _hd3901239859_
                               _tl3901139861_
                               _e3901639864_
                               _hd3901539867_
                               _tl3901439869_
                               _e3901939872_
                               _hd3901839875_
                               _tl3901739877_
                               _e3902239880_
                               _hd3902139883_
                               _tl3902039885_)
                        (let ((_L39888_ _hd3902139883_)
                              (_L39889_ _hd3901839875_)
                              (_L39890_ _hd3900939851_)
                              (_L39891_ _hd3900039827_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L39891_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L39891_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L39890_
                                      _self38835_)))
                              (___kont4616946170_
                               _L39888_
                               _L39889_
                               _L39890_
                               _L39891_)
                              (___kont4618346184_)))))
                     (___match4653846539_
                      (lambda (_e3899239800_
                               _hd3899139803_
                               _tl3899039805_
                               _e3899539808_
                               _hd3899439811_
                               _tl3899339813_
                               _e3899839816_
                               _hd3899739819_
                               _tl3899639821_
                               _e3900139824_
                               _hd3900039827_
                               _tl3899939829_
                               _e3900439832_
                               _hd3900339835_
                               _tl3900239837_
                               _e3900739840_
                               _hd3900639843_
                               _tl3900539845_
                               _e3901039848_
                               _hd3900939851_
                               _tl3900839853_
                               _e3901339856_
                               _hd3901239859_
                               _tl3901139861_
                               _e3901639864_
                               _hd3901539867_
                               _tl3901439869_
                               _e3901939872_
                               _hd3901839875_
                               _tl3901739877_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3901139861_))
                            (let ((_e3902239880_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3901139861_))))
                              (let ((_tl3902039885_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3902239880_)))
                                    (_hd3902139883_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3902239880_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3902039885_))
                                    (___match4654646547_
                                     _e3899239800_
                                     _hd3899139803_
                                     _tl3899039805_
                                     _e3899539808_
                                     _hd3899439811_
                                     _tl3899339813_
                                     _e3899839816_
                                     _hd3899739819_
                                     _tl3899639821_
                                     _e3900139824_
                                     _hd3900039827_
                                     _tl3899939829_
                                     _e3900439832_
                                     _hd3900339835_
                                     _tl3900239837_
                                     _e3900739840_
                                     _hd3900639843_
                                     _tl3900539845_
                                     _e3901039848_
                                     _hd3900939851_
                                     _tl3900839853_
                                     _e3901339856_
                                     _hd3901239859_
                                     _tl3901139861_
                                     _e3901639864_
                                     _hd3901539867_
                                     _tl3901439869_
                                     _e3901939872_
                                     _hd3901839875_
                                     _tl3901739877_
                                     _e3902239880_
                                     _hd3902139883_
                                     _tl3902039885_)
                                    (___kont4618346184_))))
                            (___match4666246663_
                             _e3899239800_
                             _hd3899139803_
                             _tl3899039805_
                             _e3899539808_
                             _hd3899439811_
                             _tl3899339813_
                             _e3899839816_
                             _hd3899739819_
                             _tl3899639821_
                             _e3900139824_
                             _hd3900039827_
                             _tl3899939829_
                             _e3900439832_
                             _hd3900339835_
                             _tl3900239837_
                             _e3900739840_
                             _hd3900639843_
                             _tl3900539845_
                             _e3901039848_
                             _hd3900939851_
                             _tl3900839853_
                             _e3901339856_
                             _hd3901239859_
                             _tl3901139861_))))
                     (___match4646046461_
                      (lambda (_e3895839934_
                               _hd3895739937_
                               _tl3895639939_
                               _e3896139942_
                               _hd3896039945_
                               _tl3895939947_
                               _e3896439950_
                               _hd3896339953_
                               _tl3896239955_
                               _e3896739958_
                               _hd3896639961_
                               _tl3896539963_
                               _e3897039966_
                               _hd3896939969_
                               _tl3896839971_
                               _e3897339974_
                               _hd3897239977_
                               _tl3897139979_
                               _e3897639982_
                               _hd3897539985_
                               _tl3897439987_
                               _e3897939990_
                               _hd3897839993_
                               _tl3897739995_
                               _e3898239998_
                               _hd3898140001_
                               _tl3898040003_
                               _e3898540006_
                               _hd3898440009_
                               _tl3898340011_)
                        (let ((_L40014_ _hd3898440009_)
                              (_L40015_ _hd3897539985_)
                              (_L40016_ _hd3896639961_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L40016_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L40016_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L40015_
                                      _self38835_)))
                              (___kont4616746168_ _L40014_ _L40015_ _L40016_)
                              (___match4666446665_
                               _e3895839934_
                               _hd3895739937_
                               _tl3895639939_
                               _e3896139942_
                               _hd3896039945_
                               _tl3895939947_
                               _e3896439950_
                               _hd3896339953_
                               _tl3896239955_
                               _e3896739958_
                               _hd3896639961_
                               _tl3896539963_
                               _e3897039966_
                               _hd3896939969_
                               _tl3896839971_
                               _e3897339974_
                               _hd3897239977_
                               _tl3897139979_
                               _e3897639982_
                               _hd3897539985_
                               _tl3897439987_
                               _e3897939990_
                               _hd3897839993_
                               _tl3897739995_)))))
                     (___match4645846459_
                      (lambda (_e3895839934_
                               _hd3895739937_
                               _tl3895639939_
                               _e3896139942_
                               _hd3896039945_
                               _tl3895939947_
                               _e3896439950_
                               _hd3896339953_
                               _tl3896239955_
                               _e3896739958_
                               _hd3896639961_
                               _tl3896539963_
                               _e3897039966_
                               _hd3896939969_
                               _tl3896839971_
                               _e3897339974_
                               _hd3897239977_
                               _tl3897139979_
                               _e3897639982_
                               _hd3897539985_
                               _tl3897439987_
                               _e3897939990_
                               _hd3897839993_
                               _tl3897739995_
                               _e3898239998_
                               _hd3898140001_
                               _tl3898040003_
                               _e3898540006_
                               _hd3898440009_
                               _tl3898340011_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3897739995_))
                            (___match4646046461_
                             _e3895839934_
                             _hd3895739937_
                             _tl3895639939_
                             _e3896139942_
                             _hd3896039945_
                             _tl3895939947_
                             _e3896439950_
                             _hd3896339953_
                             _tl3896239955_
                             _e3896739958_
                             _hd3896639961_
                             _tl3896539963_
                             _e3897039966_
                             _hd3896939969_
                             _tl3896839971_
                             _e3897339974_
                             _hd3897239977_
                             _tl3897139979_
                             _e3897639982_
                             _hd3897539985_
                             _tl3897439987_
                             _e3897939990_
                             _hd3897839993_
                             _tl3897739995_
                             _e3898239998_
                             _hd3898140001_
                             _tl3898040003_
                             _e3898540006_
                             _hd3898440009_
                             _tl3898340011_)
                            (___match4653846539_
                             _e3895839934_
                             _hd3895739937_
                             _tl3895639939_
                             _e3896139942_
                             _hd3896039945_
                             _tl3895939947_
                             _e3896439950_
                             _hd3896339953_
                             _tl3896239955_
                             _e3896739958_
                             _hd3896639961_
                             _tl3896539963_
                             _e3897039966_
                             _hd3896939969_
                             _tl3896839971_
                             _e3897339974_
                             _hd3897239977_
                             _tl3897139979_
                             _e3897639982_
                             _hd3897539985_
                             _tl3897439987_
                             _e3897939990_
                             _hd3897839993_
                             _tl3897739995_
                             _e3898239998_
                             _hd3898140001_
                             _tl3898040003_
                             _e3898540006_
                             _hd3898440009_
                             _tl3898340011_))))
                     (___match4644846449_
                      (lambda (_e3895839934_
                               _hd3895739937_
                               _tl3895639939_
                               _e3896139942_
                               _hd3896039945_
                               _tl3895939947_
                               _e3896439950_
                               _hd3896339953_
                               _tl3896239955_
                               _e3896739958_
                               _hd3896639961_
                               _tl3896539963_
                               _e3897039966_
                               _hd3896939969_
                               _tl3896839971_
                               _e3897339974_
                               _hd3897239977_
                               _tl3897139979_
                               _e3897639982_
                               _hd3897539985_
                               _tl3897439987_
                               _e3897939990_
                               _hd3897839993_
                               _tl3897739995_
                               _e3898239998_
                               _hd3898140001_
                               _tl3898040003_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd3898140001_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3898040003_))
                                (let ((_e3898540006_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3898040003_))))
                                  (let ((_tl3898340011_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3898540006_)))
                                        (_hd3898440009_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3898540006_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3898340011_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl3897739995_))
                                            (___match4646046461_
                                             _e3895839934_
                                             _hd3895739937_
                                             _tl3895639939_
                                             _e3896139942_
                                             _hd3896039945_
                                             _tl3895939947_
                                             _e3896439950_
                                             _hd3896339953_
                                             _tl3896239955_
                                             _e3896739958_
                                             _hd3896639961_
                                             _tl3896539963_
                                             _e3897039966_
                                             _hd3896939969_
                                             _tl3896839971_
                                             _e3897339974_
                                             _hd3897239977_
                                             _tl3897139979_
                                             _e3897639982_
                                             _hd3897539985_
                                             _tl3897439987_
                                             _e3897939990_
                                             _hd3897839993_
                                             _tl3897739995_
                                             _e3898239998_
                                             _hd3898140001_
                                             _tl3898040003_
                                             _e3898540006_
                                             _hd3898440009_
                                             _tl3898340011_)
                                            (___match4653846539_
                                             _e3895839934_
                                             _hd3895739937_
                                             _tl3895639939_
                                             _e3896139942_
                                             _hd3896039945_
                                             _tl3895939947_
                                             _e3896439950_
                                             _hd3896339953_
                                             _tl3896239955_
                                             _e3896739958_
                                             _hd3896639961_
                                             _tl3896539963_
                                             _e3897039966_
                                             _hd3896939969_
                                             _tl3896839971_
                                             _e3897339974_
                                             _hd3897239977_
                                             _tl3897139979_
                                             _e3897639982_
                                             _hd3897539985_
                                             _tl3897439987_
                                             _e3897939990_
                                             _hd3897839993_
                                             _tl3897739995_
                                             _e3898239998_
                                             _hd3898140001_
                                             _tl3898040003_
                                             _e3898540006_
                                             _hd3898440009_
                                             _tl3898340011_))
                                        (___match4666246663_
                                         _e3895839934_
                                         _hd3895739937_
                                         _tl3895639939_
                                         _e3896139942_
                                         _hd3896039945_
                                         _tl3895939947_
                                         _e3896439950_
                                         _hd3896339953_
                                         _tl3896239955_
                                         _e3896739958_
                                         _hd3896639961_
                                         _tl3896539963_
                                         _e3897039966_
                                         _hd3896939969_
                                         _tl3896839971_
                                         _e3897339974_
                                         _hd3897239977_
                                         _tl3897139979_
                                         _e3897639982_
                                         _hd3897539985_
                                         _tl3897439987_
                                         _e3897939990_
                                         _hd3897839993_
                                         _tl3897739995_))))
                                (___match4666246663_
                                 _e3895839934_
                                 _hd3895739937_
                                 _tl3895639939_
                                 _e3896139942_
                                 _hd3896039945_
                                 _tl3895939947_
                                 _e3896439950_
                                 _hd3896339953_
                                 _tl3896239955_
                                 _e3896739958_
                                 _hd3896639961_
                                 _tl3896539963_
                                 _e3897039966_
                                 _hd3896939969_
                                 _tl3896839971_
                                 _e3897339974_
                                 _hd3897239977_
                                 _tl3897139979_
                                 _e3897639982_
                                 _hd3897539985_
                                 _tl3897439987_
                                 _e3897939990_
                                 _hd3897839993_
                                 _tl3897739995_))
                            (___match4666246663_
                             _e3895839934_
                             _hd3895739937_
                             _tl3895639939_
                             _e3896139942_
                             _hd3896039945_
                             _tl3895939947_
                             _e3896439950_
                             _hd3896339953_
                             _tl3896239955_
                             _e3896739958_
                             _hd3896639961_
                             _tl3896539963_
                             _e3897039966_
                             _hd3896939969_
                             _tl3896839971_
                             _e3897339974_
                             _hd3897239977_
                             _tl3897139979_
                             _e3897639982_
                             _hd3897539985_
                             _tl3897439987_
                             _e3897939990_
                             _hd3897839993_
                             _tl3897739995_))))
                     (___match4638046381_
                      (lambda (_e3890740055_
                               _hd3890640058_
                               _tl3890540060_
                               _e3891040063_
                               _hd3890940066_
                               _tl3890840068_
                               _e3891340071_
                               _hd3891240074_
                               _tl3891140076_
                               _e3891640079_
                               _hd3891540082_
                               _tl3891440084_
                               _e3891940087_
                               _hd3891840090_
                               _tl3891740092_
                               _e3892240095_
                               _hd3892140098_
                               _tl3892040100_
                               _e3892540103_
                               _hd3892440106_
                               _tl3892340108_
                               _e3892840111_
                               _hd3892740114_
                               _tl3892640116_
                               _e3893140119_
                               _hd3893040122_
                               _tl3892940124_
                               _e3893440127_
                               _hd3893340130_
                               _tl3893240132_
                               _e3893740135_
                               _hd3893640138_
                               _tl3893540140_
                               _e3894040143_
                               _hd3893940146_
                               _tl3893840148_
                               _e3894340151_
                               _hd3894240154_
                               _tl3894140156_
                               ___splice4616546166_
                               _target3894440159_
                               _tl3894640161_)
                        (letrec ((_loop3894740164_
                                  (lambda (_hd3894540167_ _args3895140169_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3894540167_))
                                        (let ((_e3894840172_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3894540167_))))
                                          (let ((_lp-tl3895040177_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3894840172_)))
                                                (_lp-hd3894940175_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3894840172_))))
                                            (let ((__tmp47444
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3894940175_
                                                           _args3895140169_))))
                                              (declare (not safe))
                                              (_loop3894740164_
                                               _lp-tl3895040177_
                                               __tmp47444))))
                                        (let ((_args3895240180_
                                               (reverse _args3895140169_)))
                                          (let ((_L40183_ _args3895240180_)
                                                (_L40184_ _hd3894240154_)
                                                (_L40185_ _hd3893340130_)
                                                (_L40186_ _hd3892440106_)
                                                (_L40187_ _hd3891540082_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L40187_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L40186_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L40185_
                                                        _self38835_)))
                                                (___kont4616346164_
                                                 _L40183_
                                                 _L40184_
                                                 _L40185_
                                                 _L40186_
                                                 _L40187_)
                                                (___kont4618346184_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3894740164_ _target3894440159_ '())))))
                     (___match4633846339_
                      (lambda (_e3890740055_
                               _hd3890640058_
                               _tl3890540060_
                               _e3891040063_
                               _hd3890940066_
                               _tl3890840068_
                               _e3891340071_
                               _hd3891240074_
                               _tl3891140076_
                               _e3891640079_
                               _hd3891540082_
                               _tl3891440084_
                               _e3891940087_
                               _hd3891840090_
                               _tl3891740092_
                               _e3892240095_
                               _hd3892140098_
                               _tl3892040100_
                               _e3892540103_
                               _hd3892440106_
                               _tl3892340108_
                               _e3892840111_
                               _hd3892740114_
                               _tl3892640116_
                               _e3893140119_
                               _hd3893040122_
                               _tl3892940124_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd3893040122_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3892940124_))
                                (let ((_e3893440127_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3892940124_))))
                                  (let ((_tl3893240132_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3893440127_)))
                                        (_hd3893340130_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3893440127_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3893240132_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3892640116_))
                                            (let ((_e3893740135_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3892640116_))))
                                              (let ((_tl3893540140_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3893740135_)))
                                                    (_hd3893640138_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3893740135_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd3893640138_))
                                                    (let ((_e3894040143_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd3893640138_))))
                                                      (let ((_tl3893840148_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3894040143_)))
                    (_hd3893940146_
                     (let () (declare (not safe)) (##car _e3894040143_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd3893940146_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd3893940146_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3893840148_))
                            (let ((_e3894340151_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3893840148_))))
                              (let ((_tl3894140156_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3894340151_)))
                                    (_hd3894240154_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3894340151_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3894140156_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl3893540140_))
                                        (let ((___splice4616546166_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl3893540140_
                                                  '0))))
                                          (let ((_tl3894640161_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4616546166_
                                                    '1)))
                                                (_target3894440159_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4616546166_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl3894640161_))
                                                (___match4638046381_
                                                 _e3890740055_
                                                 _hd3890640058_
                                                 _tl3890540060_
                                                 _e3891040063_
                                                 _hd3890940066_
                                                 _tl3890840068_
                                                 _e3891340071_
                                                 _hd3891240074_
                                                 _tl3891140076_
                                                 _e3891640079_
                                                 _hd3891540082_
                                                 _tl3891440084_
                                                 _e3891940087_
                                                 _hd3891840090_
                                                 _tl3891740092_
                                                 _e3892240095_
                                                 _hd3892140098_
                                                 _tl3892040100_
                                                 _e3892540103_
                                                 _hd3892440106_
                                                 _tl3892340108_
                                                 _e3892840111_
                                                 _hd3892740114_
                                                 _tl3892640116_
                                                 _e3893140119_
                                                 _hd3893040122_
                                                 _tl3892940124_
                                                 _e3893440127_
                                                 _hd3893340130_
                                                 _tl3893240132_
                                                 _e3893740135_
                                                 _hd3893640138_
                                                 _tl3893540140_
                                                 _e3894040143_
                                                 _hd3893940146_
                                                 _tl3893840148_
                                                 _e3894340151_
                                                 _hd3894240154_
                                                 _tl3894140156_
                                                 ___splice4616546166_
                                                 _target3894440159_
                                                 _tl3894640161_)
                                                (___kont4618346184_))))
                                        (___kont4618346184_))
                                    (___kont4618346184_))))
                            (___kont4618346184_))
                        (___kont4618346184_))
                    (___kont4618346184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4618346184_))))
                                            (___match4666246663_
                                             _e3890740055_
                                             _hd3890640058_
                                             _tl3890540060_
                                             _e3891040063_
                                             _hd3890940066_
                                             _tl3890840068_
                                             _e3891340071_
                                             _hd3891240074_
                                             _tl3891140076_
                                             _e3891640079_
                                             _hd3891540082_
                                             _tl3891440084_
                                             _e3891940087_
                                             _hd3891840090_
                                             _tl3891740092_
                                             _e3892240095_
                                             _hd3892140098_
                                             _tl3892040100_
                                             _e3892540103_
                                             _hd3892440106_
                                             _tl3892340108_
                                             _e3892840111_
                                             _hd3892740114_
                                             _tl3892640116_))
                                        (___match4666246663_
                                         _e3890740055_
                                         _hd3890640058_
                                         _tl3890540060_
                                         _e3891040063_
                                         _hd3890940066_
                                         _tl3890840068_
                                         _e3891340071_
                                         _hd3891240074_
                                         _tl3891140076_
                                         _e3891640079_
                                         _hd3891540082_
                                         _tl3891440084_
                                         _e3891940087_
                                         _hd3891840090_
                                         _tl3891740092_
                                         _e3892240095_
                                         _hd3892140098_
                                         _tl3892040100_
                                         _e3892540103_
                                         _hd3892440106_
                                         _tl3892340108_
                                         _e3892840111_
                                         _hd3892740114_
                                         _tl3892640116_))))
                                (___match4666246663_
                                 _e3890740055_
                                 _hd3890640058_
                                 _tl3890540060_
                                 _e3891040063_
                                 _hd3890940066_
                                 _tl3890840068_
                                 _e3891340071_
                                 _hd3891240074_
                                 _tl3891140076_
                                 _e3891640079_
                                 _hd3891540082_
                                 _tl3891440084_
                                 _e3891940087_
                                 _hd3891840090_
                                 _tl3891740092_
                                 _e3892240095_
                                 _hd3892140098_
                                 _tl3892040100_
                                 _e3892540103_
                                 _hd3892440106_
                                 _tl3892340108_
                                 _e3892840111_
                                 _hd3892740114_
                                 _tl3892640116_))
                            (___match4644846449_
                             _e3890740055_
                             _hd3890640058_
                             _tl3890540060_
                             _e3891040063_
                             _hd3890940066_
                             _tl3890840068_
                             _e3891340071_
                             _hd3891240074_
                             _tl3891140076_
                             _e3891640079_
                             _hd3891540082_
                             _tl3891440084_
                             _e3891940087_
                             _hd3891840090_
                             _tl3891740092_
                             _e3892240095_
                             _hd3892140098_
                             _tl3892040100_
                             _e3892540103_
                             _hd3892440106_
                             _tl3892340108_
                             _e3892840111_
                             _hd3892740114_
                             _tl3892640116_
                             _e3893140119_
                             _hd3893040122_
                             _tl3892940124_))))
                     (___match4627046271_
                      (lambda (_e3886340247_
                               _hd3886240250_
                               _tl3886140252_
                               _e3886640255_
                               _hd3886540258_
                               _tl3886440260_
                               _e3886940263_
                               _hd3886840266_
                               _tl3886740268_
                               _e3887240271_
                               _hd3887140274_
                               _tl3887040276_
                               _e3887540279_
                               _hd3887440282_
                               _tl3887340284_
                               _e3887840287_
                               _hd3887740290_
                               _tl3887640292_
                               _e3888140295_
                               _hd3888040298_
                               _tl3887940300_
                               _e3888440303_
                               _hd3888340306_
                               _tl3888240308_
                               _e3888740311_
                               _hd3888640314_
                               _tl3888540316_
                               _e3889040319_
                               _hd3888940322_
                               _tl3888840324_
                               ___splice4616146162_
                               _target3889140327_
                               _tl3889340329_)
                        (letrec ((_loop3889440332_
                                  (lambda (_hd3889240335_ _args3889840337_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3889240335_))
                                        (let ((_e3889540340_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3889240335_))))
                                          (let ((_lp-tl3889740345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3889540340_)))
                                                (_lp-hd3889640343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3889540340_))))
                                            (let ((__tmp47445
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3889640343_
                                                           _args3889840337_))))
                                              (declare (not safe))
                                              (_loop3889440332_
                                               _lp-tl3889740345_
                                               __tmp47445))))
                                        (let ((_args3889940348_
                                               (reverse _args3889840337_)))
                                          (let ((_L40351_ _args3889940348_)
                                                (_L40352_ _hd3888940322_)
                                                (_L40353_ _hd3888040298_)
                                                (_L40354_ _hd3887140274_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L40354_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L40353_
                                                        _self38835_)))
                                                (___kont4615946160_
                                                 _L40351_
                                                 _L40352_
                                                 _L40353_
                                                 _L40354_)
                                                (___match4645846459_
                                                 _e3886340247_
                                                 _hd3886240250_
                                                 _tl3886140252_
                                                 _e3886640255_
                                                 _hd3886540258_
                                                 _tl3886440260_
                                                 _e3886940263_
                                                 _hd3886840266_
                                                 _tl3886740268_
                                                 _e3887240271_
                                                 _hd3887140274_
                                                 _tl3887040276_
                                                 _e3887540279_
                                                 _hd3887440282_
                                                 _tl3887340284_
                                                 _e3887840287_
                                                 _hd3887740290_
                                                 _tl3887640292_
                                                 _e3888140295_
                                                 _hd3888040298_
                                                 _tl3887940300_
                                                 _e3888440303_
                                                 _hd3888340306_
                                                 _tl3888240308_
                                                 _e3888740311_
                                                 _hd3888640314_
                                                 _tl3888540316_
                                                 _e3889040319_
                                                 _hd3888940322_
                                                 _tl3888840324_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3889440332_ _target3889140327_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4615746158_))
                    (let ((_e3886340247_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4615746158_))))
                      (let ((_tl3886140252_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3886340247_)))
                            (_hd3886240250_
                             (let ()
                               (declare (not safe))
                               (##car _e3886340247_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3886140252_))
                            (let ((_e3886640255_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3886140252_))))
                              (let ((_tl3886440260_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3886640255_)))
                                    (_hd3886540258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3886640255_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd3886540258_))
                                    (let ((_e3886940263_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd3886540258_))))
                                      (let ((_tl3886740268_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3886940263_)))
                                            (_hd3886840266_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3886940263_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd3886840266_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd3886840266_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl3886740268_))
                                                    (let ((_e3887240271_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl3886740268_))))
                                                      (let ((_tl3887040276_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3887240271_)))
                    (_hd3887140274_
                     (let () (declare (not safe)) (##car _e3887240271_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl3887040276_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl3886440260_))
                        (let ((_e3887540279_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl3886440260_))))
                          (let ((_tl3887340284_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3887540279_)))
                                (_hd3887440282_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3887540279_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd3887440282_))
                                (let ((_e3887840287_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd3887440282_))))
                                  (let ((_tl3887640292_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3887840287_)))
                                        (_hd3887740290_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3887840287_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd3887740290_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd3887740290_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl3887640292_))
                                                (let ((_e3888140295_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl3887640292_))))
                                                  (let ((_tl3887940300_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3888140295_)))
                                                        (_hd3888040298_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3888140295_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl3887940300_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl3887340284_))
                                                            (let ((_e3888440303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl3887340284_))))
                      (let ((_tl3888240308_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3888440303_)))
                            (_hd3888340306_
                             (let ()
                               (declare (not safe))
                               (##car _e3888440303_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd3888340306_))
                            (let ((_e3888740311_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd3888340306_))))
                              (let ((_tl3888540316_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3888740311_)))
                                    (_hd3888640314_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3888740311_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd3888640314_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd3888640314_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3888540316_))
                                            (let ((_e3889040319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3888540316_))))
                                              (let ((_tl3888840324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3889040319_)))
                                                    (_hd3888940322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3889040319_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl3888840324_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl3888240308_))
                                                        (let ((___splice4616146162_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl3888240308_ '0))))
                  (let ((_tl3889340329_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4616146162_ '1)))
                        (_target3889140327_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4616146162_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl3889340329_))
                        (___match4627046271_
                         _e3886340247_
                         _hd3886240250_
                         _tl3886140252_
                         _e3886640255_
                         _hd3886540258_
                         _tl3886440260_
                         _e3886940263_
                         _hd3886840266_
                         _tl3886740268_
                         _e3887240271_
                         _hd3887140274_
                         _tl3887040276_
                         _e3887540279_
                         _hd3887440282_
                         _tl3887340284_
                         _e3887840287_
                         _hd3887740290_
                         _tl3887640292_
                         _e3888140295_
                         _hd3888040298_
                         _tl3887940300_
                         _e3888440303_
                         _hd3888340306_
                         _tl3888240308_
                         _e3888740311_
                         _hd3888640314_
                         _tl3888540316_
                         _e3889040319_
                         _hd3888940322_
                         _tl3888840324_
                         ___splice4616146162_
                         _target3889140327_
                         _tl3889340329_)
                        (___match4645846459_
                         _e3886340247_
                         _hd3886240250_
                         _tl3886140252_
                         _e3886640255_
                         _hd3886540258_
                         _tl3886440260_
                         _e3886940263_
                         _hd3886840266_
                         _tl3886740268_
                         _e3887240271_
                         _hd3887140274_
                         _tl3887040276_
                         _e3887540279_
                         _hd3887440282_
                         _tl3887340284_
                         _e3887840287_
                         _hd3887740290_
                         _tl3887640292_
                         _e3888140295_
                         _hd3888040298_
                         _tl3887940300_
                         _e3888440303_
                         _hd3888340306_
                         _tl3888240308_
                         _e3888740311_
                         _hd3888640314_
                         _tl3888540316_
                         _e3889040319_
                         _hd3888940322_
                         _tl3888840324_))))
                (___match4645846459_
                 _e3886340247_
                 _hd3886240250_
                 _tl3886140252_
                 _e3886640255_
                 _hd3886540258_
                 _tl3886440260_
                 _e3886940263_
                 _hd3886840266_
                 _tl3886740268_
                 _e3887240271_
                 _hd3887140274_
                 _tl3887040276_
                 _e3887540279_
                 _hd3887440282_
                 _tl3887340284_
                 _e3887840287_
                 _hd3887740290_
                 _tl3887640292_
                 _e3888140295_
                 _hd3888040298_
                 _tl3887940300_
                 _e3888440303_
                 _hd3888340306_
                 _tl3888240308_
                 _e3888740311_
                 _hd3888640314_
                 _tl3888540316_
                 _e3889040319_
                 _hd3888940322_
                 _tl3888840324_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4666246663_
                                                     _e3886340247_
                                                     _hd3886240250_
                                                     _tl3886140252_
                                                     _e3886640255_
                                                     _hd3886540258_
                                                     _tl3886440260_
                                                     _e3886940263_
                                                     _hd3886840266_
                                                     _tl3886740268_
                                                     _e3887240271_
                                                     _hd3887140274_
                                                     _tl3887040276_
                                                     _e3887540279_
                                                     _hd3887440282_
                                                     _tl3887340284_
                                                     _e3887840287_
                                                     _hd3887740290_
                                                     _tl3887640292_
                                                     _e3888140295_
                                                     _hd3888040298_
                                                     _tl3887940300_
                                                     _e3888440303_
                                                     _hd3888340306_
                                                     _tl3888240308_))))
                                            (___match4666246663_
                                             _e3886340247_
                                             _hd3886240250_
                                             _tl3886140252_
                                             _e3886640255_
                                             _hd3886540258_
                                             _tl3886440260_
                                             _e3886940263_
                                             _hd3886840266_
                                             _tl3886740268_
                                             _e3887240271_
                                             _hd3887140274_
                                             _tl3887040276_
                                             _e3887540279_
                                             _hd3887440282_
                                             _tl3887340284_
                                             _e3887840287_
                                             _hd3887740290_
                                             _tl3887640292_
                                             _e3888140295_
                                             _hd3888040298_
                                             _tl3887940300_
                                             _e3888440303_
                                             _hd3888340306_
                                             _tl3888240308_))
                                        (___match4633846339_
                                         _e3886340247_
                                         _hd3886240250_
                                         _tl3886140252_
                                         _e3886640255_
                                         _hd3886540258_
                                         _tl3886440260_
                                         _e3886940263_
                                         _hd3886840266_
                                         _tl3886740268_
                                         _e3887240271_
                                         _hd3887140274_
                                         _tl3887040276_
                                         _e3887540279_
                                         _hd3887440282_
                                         _tl3887340284_
                                         _e3887840287_
                                         _hd3887740290_
                                         _tl3887640292_
                                         _e3888140295_
                                         _hd3888040298_
                                         _tl3887940300_
                                         _e3888440303_
                                         _hd3888340306_
                                         _tl3888240308_
                                         _e3888740311_
                                         _hd3888640314_
                                         _tl3888540316_))
                                    (___match4666246663_
                                     _e3886340247_
                                     _hd3886240250_
                                     _tl3886140252_
                                     _e3886640255_
                                     _hd3886540258_
                                     _tl3886440260_
                                     _e3886940263_
                                     _hd3886840266_
                                     _tl3886740268_
                                     _e3887240271_
                                     _hd3887140274_
                                     _tl3887040276_
                                     _e3887540279_
                                     _hd3887440282_
                                     _tl3887340284_
                                     _e3887840287_
                                     _hd3887740290_
                                     _tl3887640292_
                                     _e3888140295_
                                     _hd3888040298_
                                     _tl3887940300_
                                     _e3888440303_
                                     _hd3888340306_
                                     _tl3888240308_))))
                            (___match4666246663_
                             _e3886340247_
                             _hd3886240250_
                             _tl3886140252_
                             _e3886640255_
                             _hd3886540258_
                             _tl3886440260_
                             _e3886940263_
                             _hd3886840266_
                             _tl3886740268_
                             _e3887240271_
                             _hd3887140274_
                             _tl3887040276_
                             _e3887540279_
                             _hd3887440282_
                             _tl3887340284_
                             _e3887840287_
                             _hd3887740290_
                             _tl3887640292_
                             _e3888140295_
                             _hd3888040298_
                             _tl3887940300_
                             _e3888440303_
                             _hd3888340306_
                             _tl3888240308_))))
                    (___match4660046601_
                     _e3886340247_
                     _hd3886240250_
                     _tl3886140252_
                     _e3886640255_
                     _hd3886540258_
                     _tl3886440260_
                     _e3886940263_
                     _hd3886840266_
                     _tl3886740268_
                     _e3887240271_
                     _hd3887140274_
                     _tl3887040276_
                     _e3887540279_
                     _hd3887440282_
                     _tl3887340284_
                     _e3887840287_
                     _hd3887740290_
                     _tl3887640292_
                     _e3888140295_
                     _hd3888040298_
                     _tl3887940300_))
                (___kont4618346184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4618346184_))
                                            (___kont4618346184_))
                                        (___kont4618346184_))))
                                (___kont4618346184_))))
                        (___kont4618346184_))
                    (___kont4618346184_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4618346184_))
                                                (___kont4618346184_))
                                            (___kont4618346184_))))
                                    (___kont4618346184_))))
                            (___kont4618346184_))))
                    (___kont4618346184_))))))))))
