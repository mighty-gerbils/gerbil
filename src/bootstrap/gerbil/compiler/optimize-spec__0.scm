(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708165433)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl257192_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp262888 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl257192_ __tmp262888))
           (let ()
             (declare (not safe))
             (table-set! _tbl257192_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257192_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257192_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257192_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl257192_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx257175_ . _args257177_)
        (let ((__tmp262890
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257177_)
                     (gxc#compile-e__0 _stx257175_)
                     (let ((_arg1257182_ (car _args257177_))
                           (_rest257184_ (cdr _args257177_)))
                       (if (null? _rest257184_)
                           (gxc#compile-e__1 _stx257175_ _arg1257182_)
                           (let ((_arg2257187_ (car _rest257184_))
                                 (_rest257189_ (cdr _rest257184_)))
                             (if (null? _rest257189_)
                                 (gxc#compile-e__2
                                  _stx257175_
                                  _arg1257182_
                                  _arg2257187_)
                                 (apply gxc#compile-e
                                        _stx257175_
                                        _arg1257182_
                                        _arg2257187_
                                        _rest257189_))))))))
              (__tmp262889 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp262890
           gxc#current-compile-methods
           __tmp262889))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl257172_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp262891 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl257172_ __tmp262891))
           (let ()
             (declare (not safe))
             (table-set! _tbl257172_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257172_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257172_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257172_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl257172_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257172_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl257172_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl257172_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl257172_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx257155_ . _args257157_)
        (let ((__tmp262893
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257157_)
                     (gxc#compile-e__0 _stx257155_)
                     (let ((_arg1257162_ (car _args257157_))
                           (_rest257164_ (cdr _args257157_)))
                       (if (null? _rest257164_)
                           (gxc#compile-e__1 _stx257155_ _arg1257162_)
                           (let ((_arg2257167_ (car _rest257164_))
                                 (_rest257169_ (cdr _rest257164_)))
                             (if (null? _rest257169_)
                                 (gxc#compile-e__2
                                  _stx257155_
                                  _arg1257162_
                                  _arg2257167_)
                                 (apply gxc#compile-e
                                        _stx257155_
                                        _arg1257162_
                                        _arg2257167_
                                        _rest257169_))))))))
              (__tmp262892 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp262893
           gxc#current-compile-methods
           __tmp262892))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl257152_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp262894 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl257152_ __tmp262894))
           (let ()
             (declare (not safe))
             (table-set! _tbl257152_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl257152_ '%#call gxc#subst-object-refs-call%))
           _tbl257152_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx257135_ . _args257137_)
        (let ((__tmp262896
               (lambda ()
                 (declare (not safe))
                 (if (null? _args257137_)
                     (gxc#compile-e__0 _stx257135_)
                     (let ((_arg1257142_ (car _args257137_))
                           (_rest257144_ (cdr _args257137_)))
                       (if (null? _rest257144_)
                           (gxc#compile-e__1 _stx257135_ _arg1257142_)
                           (let ((_arg2257147_ (car _rest257144_))
                                 (_rest257149_ (cdr _rest257144_)))
                             (if (null? _rest257149_)
                                 (gxc#compile-e__2
                                  _stx257135_
                                  _arg1257142_
                                  _arg2257147_)
                                 (apply gxc#compile-e
                                        _stx257135_
                                        _arg1257142_
                                        _arg2257147_
                                        _rest257149_))))))))
              (__tmp262895 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp262896
           gxc#current-compile-methods
           __tmp262895))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx253805_)
        (letrec ((_generate-method-bind253807_
                  (lambda (_$t257129_ _id257130_ _$id257131_)
                    (let ((_$tmp257133_
                           (let ((__tmp262897 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp262897))))
                      (let ((__tmp262945
                             (let ()
                               (declare (not safe))
                               (cons _$id257131_ '())))
                            (__tmp262898
                             (let ((__tmp262899
                                    (let ((__tmp262900
                                           (let ((__tmp262943
                                                  (let ((__tmp262944
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp262944)))
                                                 (__tmp262901
                                                  (let ((__tmp262902
                                                         (let ((__tmp262903
                                                                (let ((__tmp262904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262905
                                      (let ((__tmp262906
                                             (let ((__tmp262926
                                                    (let ((__tmp262927
                                                           (let ((__tmp262942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp257133_ '())))
                         (__tmp262928
                          (let ((__tmp262929
                                 (let ((__tmp262930
                                        (let ((__tmp262940
                                               (let ((__tmp262941
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp262941)))
                                              (__tmp262931
                                               (let ((__tmp262938
                                                      (let ((__tmp262939
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t257129_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp262939)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp262932
                                                      (let ((__tmp262936
                                                             (let ((__tmp262937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp262937)))
                    (__tmp262933
                     (let ((__tmp262934
                            (let ((__tmp262935
                                   (let ()
                                     (declare (not safe))
                                     (cons _id257130_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp262935))))
                       (declare (not safe))
                       (cons __tmp262934 '()))))
                (declare (not safe))
                (cons __tmp262936 __tmp262933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp262938
                                                       __tmp262932))))
                                          (declare (not safe))
                                          (cons __tmp262940 __tmp262931))))
                                   (declare (not safe))
                                   (cons '%#call __tmp262930))))
                            (declare (not safe))
                            (cons __tmp262929 '()))))
                     (declare (not safe))
                     (cons __tmp262942 __tmp262928))))
              (declare (not safe))
              (cons __tmp262927 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262907
                                                    (let ((__tmp262908
                                                           (let ((__tmp262909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262924
                                 (let ((__tmp262925
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp257133_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp262925)))
                                (__tmp262910
                                 (let ((__tmp262922
                                        (let ((__tmp262923
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp257133_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp262923)))
                                       (__tmp262911
                                        (let ((__tmp262912
                                               (let ((__tmp262913
                                                      (let ((__tmp262920
                                                             (let ((__tmp262921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp262921)))
                    (__tmp262914
                     (let ((__tmp262918
                            (let ((__tmp262919
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp262919)))
                           (__tmp262915
                            (let ((__tmp262916
                                   (let ((__tmp262917
                                          (let ()
                                            (declare (not safe))
                                            (cons _id257130_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp262917))))
                              (declare (not safe))
                              (cons __tmp262916 '()))))
                       (declare (not safe))
                       (cons __tmp262918 __tmp262915))))
                (declare (not safe))
                (cons __tmp262920 __tmp262914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp262913))))
                                          (declare (not safe))
                                          (cons __tmp262912 '()))))
                                   (declare (not safe))
                                   (cons __tmp262922 __tmp262911))))
                            (declare (not safe))
                            (cons __tmp262924 __tmp262910))))
                     (declare (not safe))
                     (cons '%#if __tmp262909))))
              (declare (not safe))
              (cons __tmp262908 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp262926
                                                     __tmp262907))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp262906))))
                                 (declare (not safe))
                                 (cons __tmp262905 '()))))
                          (declare (not safe))
                          (cons '() __tmp262904))))
                   (declare (not safe))
                   (cons '%#lambda __tmp262903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262902 '()))))
                                             (declare (not safe))
                                             (cons __tmp262943 __tmp262901))))
                                      (declare (not safe))
                                      (cons '%#call __tmp262900))))
                               (declare (not safe))
                               (cons __tmp262899 '()))))
                        (declare (not safe))
                        (cons __tmp262945 __tmp262898)))))
                 (_generate-slot-bind253808_
                  (lambda (_$t257123_ _id257124_ _$id257125_)
                    (let ((_$tmp257127_
                           (let ((__tmp262946 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp262946))))
                      (let ((__tmp262983
                             (let ()
                               (declare (not safe))
                               (cons _$id257125_ '())))
                            (__tmp262947
                             (let ((__tmp262948
                                    (let ((__tmp262949
                                           (let ((__tmp262969
                                                  (let ((__tmp262970
                                                         (let ((__tmp262982
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp257127_ '())))
                       (__tmp262971
                        (let ((__tmp262972
                               (let ((__tmp262973
                                      (let ((__tmp262980
                                             (let ((__tmp262981
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp262981)))
                                            (__tmp262974
                                             (let ((__tmp262978
                                                    (let ((__tmp262979
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t257123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp262979)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp262975
                                                    (let ((__tmp262976
                                                           (let ((__tmp262977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id257124_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp262977))))
              (declare (not safe))
              (cons __tmp262976 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp262978
                                                     __tmp262975))))
                                        (declare (not safe))
                                        (cons __tmp262980 __tmp262974))))
                                 (declare (not safe))
                                 (cons '%#call __tmp262973))))
                          (declare (not safe))
                          (cons __tmp262972 '()))))
                   (declare (not safe))
                   (cons __tmp262982 __tmp262971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262970 '())))
                                                 (__tmp262950
                                                  (let ((__tmp262951
                                                         (let ((__tmp262952
                                                                (let ((__tmp262967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp262968
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp257127_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp262968)))
                              (__tmp262953
                               (let ((__tmp262965
                                      (let ((__tmp262966
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp257127_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp262966)))
                                     (__tmp262954
                                      (let ((__tmp262955
                                             (let ((__tmp262956
                                                    (let ((__tmp262963
                                                           (let ((__tmp262964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp262964)))
                  (__tmp262957
                   (let ((__tmp262961
                          (let ((__tmp262962
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp262962)))
                         (__tmp262958
                          (let ((__tmp262959
                                 (let ((__tmp262960
                                        (let ()
                                          (declare (not safe))
                                          (cons _id257124_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp262960))))
                            (declare (not safe))
                            (cons __tmp262959 '()))))
                     (declare (not safe))
                     (cons __tmp262961 __tmp262958))))
              (declare (not safe))
              (cons __tmp262963 __tmp262957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp262956))))
                                        (declare (not safe))
                                        (cons __tmp262955 '()))))
                                 (declare (not safe))
                                 (cons __tmp262965 __tmp262954))))
                          (declare (not safe))
                          (cons __tmp262967 __tmp262953))))
                   (declare (not safe))
                   (cons '%#if __tmp262952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp262951 '()))))
                                             (declare (not safe))
                                             (cons __tmp262969 __tmp262950))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp262949))))
                               (declare (not safe))
                               (cons __tmp262948 '()))))
                        (declare (not safe))
                        (cons __tmp262983 __tmp262947)))))
                 (_generate-class-check-bind253809_
                  (lambda (_$t257119_ _class-type257120_ _$class-type257121_)
                    (let ((__tmp262995
                           (let ()
                             (declare (not safe))
                             (cons _$class-type257121_ '())))
                          (__tmp262984
                           (let ((__tmp262985
                                  (let ((__tmp262986
                                         (let ((__tmp262993
                                                (let ((__tmp262994
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp262994)))
                                               (__tmp262987
                                                (let ((__tmp262991
                                                       (let ((__tmp262992
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t257119_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp262992)))
              (__tmp262988
               (let ((__tmp262989
                      (let ((__tmp262990
                             (let ()
                               (declare (not safe))
                               (cons _class-type257120_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp262990))))
                 (declare (not safe))
                 (cons __tmp262989 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp262991
                                                        __tmp262988))))
                                           (declare (not safe))
                                           (cons __tmp262993 __tmp262987))))
                                    (declare (not safe))
                                    (cons '%#call __tmp262986))))
                             (declare (not safe))
                             (cons __tmp262985 '()))))
                      (declare (not safe))
                      (cons __tmp262995 __tmp262984))))
                 (_generate-struct-check-bind253810_
                  (lambda (_$t257115_ _class-type257116_ _$class-type257117_)
                    (let ((__tmp263007
                           (let ()
                             (declare (not safe))
                             (cons _$class-type257117_ '())))
                          (__tmp262996
                           (let ((__tmp262997
                                  (let ((__tmp262998
                                         (let ((__tmp263005
                                                (let ((__tmp263006
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp263006)))
                                               (__tmp262999
                                                (let ((__tmp263003
                                                       (let ((__tmp263004
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t257115_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp263004)))
              (__tmp263000
               (let ((__tmp263001
                      (let ((__tmp263002
                             (let ()
                               (declare (not safe))
                               (cons _class-type257116_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp263002))))
                 (declare (not safe))
                 (cons __tmp263001 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263003
                                                        __tmp263000))))
                                           (declare (not safe))
                                           (cons __tmp263005 __tmp262999))))
                                    (declare (not safe))
                                    (cons '%#call __tmp262998))))
                             (declare (not safe))
                             (cons __tmp262997 '()))))
                      (declare (not safe))
                      (cons __tmp263007 __tmp262996))))
                 (_generate-specializer-impl253811_
                  (lambda (_$t257064_
                           _methods-bind257065_
                           _slots-bind257066_
                           _class-check-bind257067_
                           _struct-check-bind257068_
                           _specializer-impl257069_
                           _lifted-specializer-id257070_
                           _unchecked-specializer-impl257071_)
                    (let ((__tmp263008
                           (let ((__tmp263009
                                  (let ((__tmp263035
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t257064_ '())))
                                        (__tmp263010
                                         (let ((__tmp263011
                                                (let ((__tmp263012
                                                       (let ((__tmp263032
                                                              (let ((__tmp263033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp263034
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind257068_
                                              _class-check-bind257067_))))
                               (declare (not safe))
                               (foldr1 cons __tmp263034 _slots-bind257066_))))
                        (declare (not safe))
                        (foldr1 cons __tmp263033 _methods-bind257065_)))
                     (__tmp263013
                      (let ((__tmp263014
                             (if (or _lifted-specializer-id257070_
                                     _unchecked-specializer-impl257071_)
                                 (let* ((_$specializer257076_
                                         (let ((__tmp263015
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp263015)))
                                        (__tmp263016
                                         (let ((__tmp263028
                                                (let ((__tmp263029
                                                       (let ((__tmp263031
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer257076_ '())))
                     (__tmp263030
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl257069_ '()))))
                 (declare (not safe))
                 (cons __tmp263031 __tmp263030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263029 '())))
                                               (__tmp263017
                                                (let ((__tmp263018
                                                       (let _recur257078_ ((_rest257080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind257068_)))
                 (let* ((_rest257081257089_ _rest257080_)
                        (_else257083257097_
                         (lambda ()
                           (if _lifted-specializer-id257070_
                               (let ((__tmp263019
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id257070_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp263019))
                               _unchecked-specializer-impl257071_)))
                        (_K257085257103_
                         (lambda (_rest257100_ _checkq257101_)
                           (let ((__tmp263020
                                  (let ((__tmp263026
                                         (let ((__tmp263027
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq257101_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp263027)))
                                        (__tmp263021
                                         (let ((__tmp263025
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur257078_
                                                   _rest257100_)))
                                               (__tmp263022
                                                (let ((__tmp263023
                                                       (let ((__tmp263024
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer257076_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp263024))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263023 '()))))
                                           (declare (not safe))
                                           (cons __tmp263025 __tmp263022))))
                                    (declare (not safe))
                                    (cons __tmp263026 __tmp263021))))
                             (declare (not safe))
                             (cons '%#if __tmp263020)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest257081257089_))
                       (let ((_hd257086257106_
                              (let ()
                                (declare (not safe))
                                (##car _rest257081257089_)))
                             (_tl257087257108_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest257081257089_))))
                         (let* ((_checkq257111_ _hd257086257106_)
                                (_rest257113_ _tl257087257108_))
                           (declare (not safe))
                           (_K257085257103_ _rest257113_ _checkq257111_)))
                       (let () (declare (not safe)) (_else257083257097_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263018 '()))))
                                           (declare (not safe))
                                           (cons __tmp263028 __tmp263017))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp263016))
                                 _specializer-impl257069_)))
                        (declare (not safe))
                        (cons __tmp263014 '()))))
                 (declare (not safe))
                 (cons __tmp263032 __tmp263013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp263012))))
                                           (declare (not safe))
                                           (cons __tmp263011 '()))))
                                    (declare (not safe))
                                    (cons __tmp263035 __tmp263010))))
                             (declare (not safe))
                             (cons '%#lambda __tmp263009))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263008 _stx253805_))))
                 (_generate-specializer-def253812_
                  (lambda (_id257058_
                           _specializer-id257059_
                           _specializer-impl257060_
                           _lifted-specializer-id257061_
                           _unchecked-specializer-impl257062_)
                    (let ((__tmp263036
                           (let ((__tmp263037
                                  (let ((__tmp263038
                                         (let ((__tmp263058
                                                (let ((__tmp263059
                                                       (let ((__tmp263060
                                                              (let ((__tmp263062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id257059_ '())))
                            (__tmp263061
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl257060_ '()))))
                        (declare (not safe))
                        (cons __tmp263062 __tmp263061))))
                 (declare (not safe))
                 (cons '%#define-values __tmp263060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp263059
                                                   _stx253805_)))
                                               (__tmp263039
                                                (let ((__tmp263046
                                                       (let ((__tmp263047
                                                              (let ((__tmp263048
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp263049
                                    (let ((__tmp263056
                                           (let ((__tmp263057
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp263057)))
                                          (__tmp263050
                                           (let ((__tmp263054
                                                  (let ((__tmp263055
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id257058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp263055)))
                                                 (__tmp263051
                                                  (let ((__tmp263052
                                                         (let ((__tmp263053
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id257059_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp263053))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263052 '()))))
                                             (declare (not safe))
                                             (cons __tmp263054 __tmp263051))))
                                      (declare (not safe))
                                      (cons __tmp263056 __tmp263050))))
                               (declare (not safe))
                               (cons '%#call __tmp263049))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp263048 _stx253805_))))
                 (declare (not safe))
                 (cons __tmp263047 '())))
              (__tmp263040
               (if _lifted-specializer-id257061_
                   (let ((__tmp263041
                          (let ((__tmp263042
                                 (let ((__tmp263043
                                        (let ((__tmp263045
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id257061_
                                                       '())))
                                              (__tmp263044
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl257062_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp263045 __tmp263044))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp263043))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp263042 _stx253805_))))
                     (declare (not safe))
                     (cons __tmp263041 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp263046
                                                          __tmp263040))))
                                           (declare (not safe))
                                           (cons __tmp263058 __tmp263039))))
                                    (declare (not safe))
                                    (cons _stx253805_ __tmp263038))))
                             (declare (not safe))
                             (cons '%#begin __tmp263037))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263036 _stx253805_)))))
          (let* ((___stx261849261850_ _stx253805_)
                 (_g253815253835_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx261849261850_)))))
            (let ((___kont261851261852_
                   (lambda (_L253879_ _L253880_)
                     (let ((_method-calls253899_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs253900_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check253901_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check253902_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert253903_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty253904_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?253906_
                                 (lambda ()
                                   (if (let ((__tmp263067
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls253899_))))
                                         (declare (not safe))
                                         (fxzero? __tmp263067))
                                       (if (let ((__tmp263066
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs253900_))))
                                             (declare (not safe))
                                             (fxzero? __tmp263066))
                                           (if (let ((__tmp263065
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check253901_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp263065))
                                               (if (let ((__tmp263064
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check253902_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp263064))
                                                   (let ((__tmp263063
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert253903_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp263063))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?253907_
                                 (lambda ()
                                   (let ((_$e257051_
                                          (let ((__tmp263068
                                                 (let ((__tmp263069
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check253902_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp263069))))
                                            (declare (not safe))
                                            (not __tmp263068))))
                                     (if _$e257051_
                                         _$e257051_
                                         (let ((__tmp263070
                                                (let ((__tmp263071
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert253903_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp263071))))
                                           (declare (not safe))
                                           (not __tmp263070))))))
                                (_lift-unchecked-specializer?253908_
                                 (lambda ()
                                   (if (let ((__tmp263074
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls253899_))))
                                         (declare (not safe))
                                         (fxzero? __tmp263074))
                                       (if (let ((__tmp263073
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs253900_))))
                                             (declare (not safe))
                                             (fxzero? __tmp263073))
                                           (let ((__tmp263072
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check253901_))))
                                             (declare (not safe))
                                             (fxzero? __tmp263072))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L253879_))
                             (let* ((___stx261763261764_ _L253879_)
                                    (_g254421254439_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx261763261764_)))))
                               (let ((___kont261765261766_
                                      (lambda (_L254475_ _L254476_ _L254477_)
                                        (for-each
                                         (lambda (_g254492254494_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g254492254494_
                                              _L254477_
                                              _method-calls253899_
                                              _slot-refs253900_
                                              _class-type-check253901_
                                              _struct-type-check253902_
                                              _struct-type-assert253903_)))
                                         _L254475_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?253906_))
                                            _stx253805_
                                            (let* ((_specializer-id254503_
                                                    (let* ((_id254497_
                                                            (let ((__tmp263224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L253880_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp263224 '"::specialize")))
                   (_specializer-id254500_
                    (let ((__tmp263225
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx253805_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id254497_ __tmp263225))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id254500_))
              _specializer-id254500_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id254510_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?253908_))
                                                        (let* ((_id254505_
                                                                (let ((__tmp263226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L253880_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp263226
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id254507_
                        (let ((__tmp263227
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx253805_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id254505_ __tmp263227))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id254507_))
                  _lifted-specializer-id254507_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t254512_
                                                    (let ((__tmp263228
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp263228)))
                                                   (_methods254514_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls253899_)))
                                                   (_$methods254518_
                                                    (map (lambda (_id254516_)
                                                           (let ((__tmp263229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254516_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp263229)))
                 _methods254514_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263230_
                                                    (for-each
                                                     (lambda (_g254519254522_
                                                              _g254520254524_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls253899_
                                                          _g254519254522_
                                                          _g254520254524_)))
                                                     _methods254514_
                                                     _$methods254518_))
                                                   (_methods-bind254535_
                                                    (map (lambda (_g254527254530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254528254532_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind253807_
                      _$t254512_
                      _g254527254530_
                      _g254528254532_)))
                 _methods254514_
                 _$methods254518_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots254537_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs253900_)))
                                                   (_$slots254541_
                                                    (map (lambda (_id254539_)
                                                           (let ((__tmp263231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id254539_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp263231)))
                 _slots254537_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263232_
                                                    (for-each
                                                     (lambda (_g254542254545_
                                                              _g254543254547_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs253900_
                                                          _g254542254545_
                                                          _g254543254547_)))
                                                     _slots254537_
                                                     _$slots254541_))
                                                   (_slots-bind254558_
                                                    (map (lambda (_g254550254553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254551254555_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind253808_
                      _$t254512_
                      _g254550254553_
                      _g254551254555_)))
                 _slots254537_
                 _$slots254541_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check254560_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check253901_)))
                                                   (_$class-check254563_
                                                    (map (lambda (_g263233_)
                                                           (let ((__tmp263234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp263234)))
                 _class-check254560_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263235_
                                                    (for-each
                                                     (lambda (_g254564254567_
                                                              _g254565254569_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check253901_
                                                          _g254564254567_
                                                          _g254565254569_)))
                                                     _class-check254560_
                                                     _$class-check254563_))
                                                   (_class-check-bind254580_
                                                    (map (lambda (_g254572254575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254573254577_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind253809_
                      _$t254512_
                      _g254572254575_
                      _g254573254577_)))
                 _class-check254560_
                 _$class-check254563_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all254582_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check253902_
                                                       _struct-type-assert253903_)))
                                                   (_struct-check254584_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all254582_)))
                                                   (_$struct-check254587_
                                                    (map (lambda (_g263236_)
                                                           (let ((__tmp263237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp263237)))
                 _struct-check254584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g263238_
                                                    (for-each
                                                     (lambda (_g254588254591_
                                                              _g254589254593_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all254582_
                                                          _g254588254591_
                                                          _g254589254593_)))
                                                     _struct-check254584_
                                                     _$struct-check254587_))
                                                   (_struct-check-bind254604_
                                                    (map (lambda (_g254596254599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g254597254601_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind253810_
                      _$t254512_
                      _g254596254599_
                      _g254597254601_)))
                 _struct-check254584_
                 _$struct-check254587_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl254615_
                                                    (lambda (_struct-type-check1254606_
                                                             _struct-type-check2254607_)
                                                      (let* ((_specializer-body254613_
                                                              (map (lambda (_g254608254610_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g254608254610_
                                _L254477_
                                _$t254512_
                                _method-calls253899_
                                _slot-refs253900_
                                _class-type-check253901_
                                _struct-type-check1254606_
                                _struct-type-check2254607_)))
                           _L254475_))
                     (__tmp263239
                      (let ((__tmp263240
                             (let ((__tmp263241
                                    (let ()
                                      (declare (not safe))
                                      (cons _L254477_ _L254476_))))
                               (declare (not safe))
                               (cons __tmp263241 _specializer-body254613_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp263240))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp263239 _stx253805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl254617_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl254615_
                                                       _struct-check-all254582_
                                                       _empty253904_)))
                                                   (_unchecked-specializer-impl254619_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?253907_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl254615_
                                                           _empty253904_
                                                           _struct-check-all254582_))
                                                        '#f))
                                                   (_specializer-impl254621_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl253811_
                                                       _$t254512_
                                                       _methods-bind254535_
                                                       _slots-bind254558_
                                                       _class-check-bind254580_
                                                       _struct-check-bind254604_
                                                       _specializer-impl254617_
                                                       _lifted-specializer-id254510_
                                                       _unchecked-specializer-impl254619_))))
                                              (let ((__tmp263243
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L253880_)))
                                                    (__tmp263242
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id254503_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp263243
                                                 '" => "
                                                 __tmp263242))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def253812_
                                                 _L253880_
                                                 _specializer-id254503_
                                                 _specializer-impl254621_
                                                 _lifted-specializer-id254510_
                                                 _unchecked-specializer-impl254619_))))))
                                     (___kont261767261768_
                                      (lambda () _stx253805_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx261763261764_))
                                     (let ((_e254428254451_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx261763261764_))))
                                       (let ((_tl254426254456_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e254428254451_)))
                                             (_hd254427254454_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e254428254451_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl254426254456_))
                                             (let ((_e254431254459_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl254426254456_))))
                                               (let ((_tl254429254464_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e254431254459_)))
                                                     (_hd254430254462_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e254431254459_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd254430254462_))
                                                     (let ((_e254434254467_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd254430254462_))))
                                                       (let ((_tl254432254472_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e254434254467_)))
                     (_hd254433254470_
                      (let () (declare (not safe)) (##car _e254434254467_))))
                 (___kont261765261766_
                  _tl254429254464_
                  _tl254432254472_
                  _hd254433254470_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont261767261768_))))
                                             (___kont261767261768_))))
                                     (___kont261767261768_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L253879_))
                                 (let* ((_g254627254646_
                                         (lambda (_g254628254643_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g254628254643_))))
                                        (_g254626254997_
                                         (lambda (_g254628254649_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g254628254649_))
                                               (let ((_e254632254651_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g254628254649_))))
                                                 (let ((_hd254631254654_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e254632254651_)))
                                                       (_tl254630254656_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e254632254651_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl254630254656_))
                                                       (let ((_g263200_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl254630254656_ '0))))
                 (begin
                   (let ((_g263201_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g263200_)
                                (##vector-length _g263200_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g263201_ 2)))
                         (error "Context expects 2 values" _g263201_)))
                   (let ((_target254633254659_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g263200_ 0)))
                         (_tl254635254661_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g263200_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl254635254661_))
                         (letrec ((_loop254636254664_
                                   (lambda (_hd254634254667_
                                            _clause254640254669_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd254634254667_))
                                         (let ((_e254637254672_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd254634254667_))))
                                           (let ((_lp-hd254638254675_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e254637254672_)))
                                                 (_lp-tl254639254677_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e254637254672_))))
                                             (let ((__tmp263223
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd254638254675_
                                                            _clause254640254669_))))
                                               (declare (not safe))
                                               (_loop254636254664_
                                                _lp-tl254639254677_
                                                __tmp263223))))
                                         (let ((_clause254641254680_
                                                (reverse _clause254640254669_)))
                                           ((lambda (_L254683_)
                                              (for-each
                                               (lambda (_clause254696_)
                                                 (let* ((___stx261789261790_
                                                         _clause254696_)
                                                        (_g254699254714_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx261789261790_)))))
                                                   (let ((___kont261791261792_
                                                          (lambda (_L254742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L254743_
                           _L254744_)
                    (for-each
                     (lambda (_g254759254761_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g254759254761_
                          _L254744_
                          _method-calls253899_
                          _slot-refs253900_
                          _class-type-check253901_
                          _struct-type-check253902_
                          _struct-type-assert253903_)))
                     _L254742_)))
                 (___kont261793261794_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx261789261790_))
                                                         (let ((_e254706254726_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx261789261790_))))
                   (let ((_tl254704254731_
                          (let ()
                            (declare (not safe))
                            (##cdr _e254706254726_)))
                         (_hd254705254729_
                          (let ()
                            (declare (not safe))
                            (##car _e254706254726_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd254705254729_))
                         (let ((_e254709254734_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd254705254729_))))
                           (let ((_tl254707254739_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e254709254734_)))
                                 (_hd254708254737_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e254709254734_))))
                             (___kont261791261792_
                              _tl254704254731_
                              _tl254707254739_
                              _hd254708254737_)))
                         (___kont261793261794_))))
                 (___kont261793261794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp263202
                                                      (lambda (_g254766254769_
                                                               _g254767254771_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g254766254769_
                                                                _g254767254771_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp263202
                                                         '()
                                                         _L254683_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?253906_))
                                                  _stx253805_
                                                  (let* ((_specializer-id254780_
                                                          (let* ((_id254774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263203
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253880_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp263203 '"::specialize")))
                         (_specializer-id254777_
                          (let ((__tmp263204
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253805_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id254774_ __tmp263204))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id254777_))
                    _specializer-id254777_))
                 (_lifted-specializer-id254787_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?253908_))
                      (let* ((_id254782_
                              (let ((__tmp263205
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L253880_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp263205
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id254784_
                              (let ((__tmp263206
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx253805_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id254782_
                                 __tmp263206))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id254784_))
                        _lifted-specializer-id254784_)
                      '#f))
                 (_$t254789_
                  (let ((__tmp263207 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp263207)))
                 (_methods254791_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls253899_)))
                 (_$methods254795_
                  (map (lambda (_id254793_)
                         (let ((__tmp263208 (gensym _id254793_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263208)))
                       _methods254791_))
                 (_g263209_
                  (for-each
                   (lambda (_g254796254799_ _g254797254801_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls253899_
                        _g254796254799_
                        _g254797254801_)))
                   _methods254791_
                   _$methods254795_))
                 (_methods-bind254812_
                  (map (lambda (_g254804254807_ _g254805254809_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind253807_
                            _$t254789_
                            _g254804254807_
                            _g254805254809_)))
                       _methods254791_
                       _$methods254795_))
                 (_slots254814_
                  (let () (declare (not safe)) (hash-keys _slot-refs253900_)))
                 (_$slots254818_
                  (map (lambda (_id254816_)
                         (let ((__tmp263210 (gensym _id254816_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263210)))
                       _slots254814_))
                 (_g263211_
                  (for-each
                   (lambda (_g254819254822_ _g254820254824_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs253900_
                        _g254819254822_
                        _g254820254824_)))
                   _slots254814_
                   _$slots254818_))
                 (_slots-bind254835_
                  (map (lambda (_g254827254830_ _g254828254832_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind253808_
                            _$t254789_
                            _g254827254830_
                            _g254828254832_)))
                       _slots254814_
                       _$slots254818_))
                 (_class-check254837_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check253901_)))
                 (_$class-check254840_
                  (map (lambda (_g263212_)
                         (let ((__tmp263213 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263213)))
                       _class-check254837_))
                 (_g263214_
                  (for-each
                   (lambda (_g254841254844_ _g254842254846_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check253901_
                        _g254841254844_
                        _g254842254846_)))
                   _class-check254837_
                   _$class-check254840_))
                 (_class-check-bind254857_
                  (map (lambda (_g254849254852_ _g254850254854_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind253809_
                            _$t254789_
                            _g254849254852_
                            _g254850254854_)))
                       _class-check254837_
                       _$class-check254840_))
                 (_struct-check-all254859_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check253902_
                     _struct-type-assert253903_)))
                 (_struct-check254861_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all254859_)))
                 (_$struct-check254864_
                  (map (lambda (_g263215_)
                         (let ((__tmp263216 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263216)))
                       _struct-check254861_))
                 (_g263217_
                  (for-each
                   (lambda (_g254865254868_ _g254866254870_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all254859_
                        _g254865254868_
                        _g254866254870_)))
                   _struct-check254861_
                   _$struct-check254864_))
                 (_struct-check-bind254881_
                  (map (lambda (_g254873254876_ _g254874254878_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind253810_
                            _$t254789_
                            _g254873254876_
                            _g254874254878_)))
                       _struct-check254861_
                       _$struct-check254864_))
                 (_make-specializer-impl254988_
                  (lambda (_struct-type-check1254883_
                           _struct-type-check2254884_)
                    (let* ((_specializer-clauses254986_
                            (map (lambda (_clause254886_)
                                   (let* ((___stx261809261810_ _clause254886_)
                                          (_g254889254904_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx261809261810_)))))
                                     (let ((___kont261811261812_
                                            (lambda (_L254932_
                                                     _L254933_
                                                     _L254934_)
                                              (let* ((_body254974_
                                                      (map (lambda (_g254969254971_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g254969254971_
                        _L254934_
                        _$t254789_
                        _method-calls253899_
                        _slot-refs253900_
                        _class-type-check253901_
                        _struct-type-check1254883_
                        _struct-type-check2254884_)))
                   _L254932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp263218
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L254934_
                                                              _L254933_))))
                                                (declare (not safe))
                                                (cons __tmp263218
                                                      _body254974_))))
                                           (___kont261813261814_
                                            (lambda () _clause254886_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx261809261810_))
                                           (let ((_e254896254916_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx261809261810_))))
                                             (let ((_tl254894254921_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e254896254916_)))
                                                   (_hd254895254919_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e254896254916_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd254895254919_))
                                                   (let ((_e254899254924_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd254895254919_))))
                                                     (let ((_tl254897254929_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e254899254924_)))
                                                           (_hd254898254927_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e254899254924_))))
                                                       (___kont261811261812_
                                                        _tl254894254921_
                                                        _tl254897254929_
                                                        _hd254898254927_)))
                                                   (___kont261813261814_))))
                                           (___kont261813261814_)))))
                                 (let ((__tmp263219
                                        (lambda (_g254978254981_
                                                 _g254979254983_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g254978254981_
                                                  _g254979254983_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp263219 '() _L254683_))))
                           (__tmp263220
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses254986_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263220 _stx253805_))))
                 (_specializer-impl254990_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl254988_
                     _struct-check-all254859_
                     _empty253904_)))
                 (_unchecked-specializer-impl254992_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253907_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl254988_
                         _empty253904_
                         _struct-check-all254859_))
                      '#f))
                 (_specializer-impl254994_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl253811_
                     _$t254789_
                     _methods-bind254812_
                     _slots-bind254835_
                     _class-check-bind254857_
                     _struct-check-bind254881_
                     _specializer-impl254990_
                     _lifted-specializer-id254787_
                     _unchecked-specializer-impl254992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp263222
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253880_)))
                                                          (__tmp263221
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id254780_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp263222
                                                       '" => "
                                                       __tmp263221))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def253812_
                                                       _L253880_
                                                       _specializer-id254780_
                                                       _specializer-impl254994_
                                                       _lifted-specializer-id254787_
                                                       _unchecked-specializer-impl254992_)))))
                                            _clause254641254680_))))))
                           (let ()
                             (declare (not safe))
                             (_loop254636254664_ _target254633254659_ '())))
                         (let ()
                           (declare (not safe))
                           (_g254627254646_ _g254628254649_))))))
               (let ()
                 (declare (not safe))
                 (_g254627254646_ _g254628254649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g254627254646_
                                                  _g254628254649_))))))
                                   (declare (not safe))
                                   (_g254626254997_ _L253879_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L253879_))
                                     (let* ((_g255000255030_
                                             (lambda (_g255001255027_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g255001255027_))))
                                            (_g254999255718_
                                             (lambda (_g255001255033_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g255001255033_))
                                                   (let ((_e255007255035_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g255001255033_))))
                                                     (let ((_hd255006255038_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255007255035_)))
                                                           (_tl255005255040_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255007255035_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl255005255040_))
                                                           (let ((_e255010255043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl255005255040_))))
                     (let ((_hd255009255046_
                            (let ()
                              (declare (not safe))
                              (##car _e255010255043_)))
                           (_tl255008255048_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255010255043_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd255009255046_))
                           (let ((_e255013255051_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd255009255046_))))
                             (let ((_hd255012255054_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255013255051_)))
                                   (_tl255011255056_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255013255051_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255012255054_))
                                   (let ((_e255016255059_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255012255054_))))
                                     (let ((_hd255015255062_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255016255059_)))
                                           (_tl255014255064_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255016255059_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd255015255062_))
                                           (let ((_e255019255067_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd255015255062_))))
                                             (let ((_hd255018255070_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e255019255067_)))
                                                   (_tl255017255072_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e255019255067_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl255017255072_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl255014255064_))
                                                       (let ((_e255022255075_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl255014255064_))))
                 (let ((_hd255021255078_
                        (let () (declare (not safe)) (##car _e255022255075_)))
                       (_tl255020255080_
                        (let () (declare (not safe)) (##cdr _e255022255075_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl255020255080_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl255011255056_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl255008255048_))
                               (let ((_e255025255083_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl255008255048_))))
                                 (let ((_hd255024255086_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e255025255083_)))
                                       (_tl255023255088_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e255025255083_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl255023255088_))
                                       ((lambda (_L255091_ _L255092_ _L255093_)
                                          (let* ((_g255116255134_
                                                  (lambda (_g255117255131_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g255117255131_))))
                                                 (_g255115255185_
                                                  (lambda (_g255117255137_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g255117255137_))
                                                        (let ((_e255123255139_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g255117255137_))))
                  (let ((_hd255122255142_
                         (let () (declare (not safe)) (##car _e255123255139_)))
                        (_tl255121255144_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255123255139_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl255121255144_))
                        (let ((_e255126255147_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl255121255144_))))
                          (let ((_hd255125255150_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e255126255147_)))
                                (_tl255124255152_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e255126255147_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd255125255150_))
                                (let ((_e255129255155_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd255125255150_))))
                                  (let ((_hd255128255158_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255129255155_)))
                                        (_tl255127255160_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255129255155_))))
                                    ((lambda (_L255163_ _L255164_ _L255165_)
                                       (for-each
                                        (lambda (_g255180255182_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g255180255182_
                                             _L255165_
                                             _method-calls253899_
                                             _slot-refs253900_
                                             _class-type-check253901_
                                             _struct-type-check253902_
                                             _struct-type-assert253903_)))
                                        _L255163_))
                                     _tl255124255152_
                                     _tl255127255160_
                                     _hd255128255158_)))
                                (let ()
                                  (declare (not safe))
                                  (_g255116255134_ _g255117255137_)))))
                        (let ()
                          (declare (not safe))
                          (_g255116255134_ _g255117255137_)))))
                (let ()
                  (declare (not safe))
                  (_g255116255134_ _g255117255137_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g255115255185_ _L255092_))
                                          (let* ((_g255188255207_
                                                  (lambda (_g255189255204_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g255189255204_))))
                                                 (_g255187255326_
                                                  (lambda (_g255189255210_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g255189255210_))
                                                        (let ((_e255193255212_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g255189255210_))))
                  (let ((_hd255192255215_
                         (let () (declare (not safe)) (##car _e255193255212_)))
                        (_tl255191255217_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255193255212_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl255191255217_))
                        (let ((_g263163_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl255191255217_
                                  '0))))
                          (begin
                            (let ((_g263164_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g263163_)
                                         (##vector-length _g263163_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g263164_ 2)))
                                  (error "Context expects 2 values"
                                         _g263164_)))
                            (let ((_target255194255220_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g263163_ 0)))
                                  (_tl255196255222_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g263163_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl255196255222_))
                                  (letrec ((_loop255197255225_
                                            (lambda (_hd255195255228_
                                                     _clause255201255230_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd255195255228_))
                                                  (let ((_e255198255233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd255195255228_))))
                                                    (let ((_lp-hd255199255236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e255198255233_)))
                                                          (_lp-tl255200255238_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e255198255233_))))
                                                      (let ((__tmp263166
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd255199255236_ _clause255201255230_))))
                (declare (not safe))
                (_loop255197255225_ _lp-tl255200255238_ __tmp263166))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause255202255241_
                                                         (reverse _clause255201255230_)))
                                                    ((lambda (_L255244_)
                                                       (for-each
                                                        (lambda (_clause255257_)
                                                          (let* ((_g255259255274_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g255260255271_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g255260255271_))))
                         (_g255258255316_
                          (lambda (_g255260255277_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g255260255277_))
                                (let ((_e255266255279_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g255260255277_))))
                                  (let ((_hd255265255282_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255266255279_)))
                                        (_tl255264255284_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255266255279_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd255265255282_))
                                        (let ((_e255269255287_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd255265255282_))))
                                          (let ((_hd255268255290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e255269255287_)))
                                                (_tl255267255292_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e255269255287_))))
                                            ((lambda (_L255295_
                                                      _L255296_
                                                      _L255297_)
                                               (for-each
                                                (lambda (_g255311255313_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g255311255313_
                                                     _L255297_
                                                     _method-calls253899_
                                                     _slot-refs253900_
                                                     _class-type-check253901_
                                                     _struct-type-check253902_
                                                     _struct-type-assert253903_)))
                                                _L255295_))
                                             _tl255264255284_
                                             _tl255267255292_
                                             _hd255268255290_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g255259255274_ _g255260255277_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g255259255274_ _g255260255277_))))))
                    (declare (not safe))
                    (_g255258255316_ _clause255257_)))
                (let ((__tmp263165
                       (lambda (_g255318255321_ _g255319255323_)
                         (let ()
                           (declare (not safe))
                           (cons _g255318255321_ _g255319255323_)))))
                  (declare (not safe))
                  (foldr1 __tmp263165 '() _L255244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause255202255241_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop255197255225_
                                       _target255194255220_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g255188255207_ _g255189255210_))))))
                        (let ()
                          (declare (not safe))
                          (_g255188255207_ _g255189255210_)))))
                (let ()
                  (declare (not safe))
                  (_g255188255207_ _g255189255210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g255187255326_ _L255091_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?253906_))
                                              _stx253805_
                                              (let* ((_specializer-id255335_
                                                      (let* ((_id255329_
                                                              (let ((__tmp263167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L253880_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp263167 '"::specialize")))
                     (_specializer-id255332_
                      (let ((__tmp263168
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx253805_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id255329_ __tmp263168))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id255332_))
                _specializer-id255332_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id255342_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?253908_))
                                                          (let* ((_id255337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263169
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253880_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp263169
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id255339_
                          (let ((__tmp263170
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253805_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id255337_ __tmp263170))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id255339_))
                    _lifted-specializer-id255339_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t255344_
                                                      (let ((__tmp263171
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp263171)))
                                                     (_methods255346_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls253899_)))
                                                     (_$methods255350_
                                                      (map (lambda (_id255348_)
                                                             (let ((__tmp263172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255348_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp263172)))
                   _methods255346_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263173_
                                                      (for-each
                                                       (lambda (_g255351255354_
                                                                _g255352255356_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls253899_
                                                            _g255351255354_
                                                            _g255352255356_)))
                                                       _methods255346_
                                                       _$methods255350_))
                                                     (_methods-bind255367_
                                                      (map (lambda (_g255359255362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255360255364_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind253807_
                        _$t255344_
                        _g255359255362_
                        _g255360255364_)))
                   _methods255346_
                   _$methods255350_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots255369_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs253900_)))
                                                     (_$slots255373_
                                                      (map (lambda (_id255371_)
                                                             (let ((__tmp263174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id255371_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp263174)))
                   _slots255369_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263175_
                                                      (for-each
                                                       (lambda (_g255374255377_
                                                                _g255375255379_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs253900_
                                                            _g255374255377_
                                                            _g255375255379_)))
                                                       _slots255369_
                                                       _$slots255373_))
                                                     (_slots-bind255390_
                                                      (map (lambda (_g255382255385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255383255387_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind253808_
                        _$t255344_
                        _g255382255385_
                        _g255383255387_)))
                   _slots255369_
                   _$slots255373_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check255392_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check253901_)))
                                                     (_$class-check255395_
                                                      (map (lambda (_g263176_)
                                                             (let ((__tmp263177
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp263177)))
                   _class-check255392_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263178_
                                                      (for-each
                                                       (lambda (_g255396255399_
                                                                _g255397255401_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check253901_
                                                            _g255396255399_
                                                            _g255397255401_)))
                                                       _class-check255392_
                                                       _$class-check255395_))
                                                     (_class-check-bind255412_
                                                      (map (lambda (_g255404255407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255405255409_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind253809_
                        _$t255344_
                        _g255404255407_
                        _g255405255409_)))
                   _class-check255392_
                   _$class-check255395_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all255414_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check253902_
                                                         _struct-type-assert253903_)))
                                                     (_struct-check255416_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all255414_)))
                                                     (_$struct-check255419_
                                                      (map (lambda (_g263179_)
                                                             (let ((__tmp263180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp263180)))
                   _struct-check255416_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g263181_
                                                      (for-each
                                                       (lambda (_g255420255423_
                                                                _g255421255425_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all255414_
                                                            _g255420255423_
                                                            _g255421255425_)))
                                                       _struct-check255416_
                                                       _$struct-check255419_))
                                                     (_struct-check-bind255436_
                                                      (map (lambda (_g255428255431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g255429255433_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind253810_
                        _$t255344_
                        _g255428255431_
                        _g255429255433_)))
                   _struct-check255416_
                   _$struct-check255419_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr255535_
                                                      (lambda (_struct-type-check1255438_
                                                               _struct-type-check2255439_)
                                                        (let* ((_g255441255459_
                                                                (lambda (_g255442255456_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255442255456_))))
                       (_g255440255532_
                        (lambda (_g255442255462_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255442255462_))
                              (let ((_e255448255464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255442255462_))))
                                (let ((_hd255447255467_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255448255464_)))
                                      (_tl255446255469_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255448255464_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl255446255469_))
                                      (let ((_e255451255472_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl255446255469_))))
                                        (let ((_hd255450255475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e255451255472_)))
                                              (_tl255449255477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e255451255472_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd255450255475_))
                                              (let ((_e255454255480_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd255450255475_))))
                                                (let ((_hd255453255483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e255454255480_)))
                                                      (_tl255452255485_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e255454255480_))))
                                                  ((lambda (_L255488_
                                                            _L255489_
                                                            _L255490_)
                                                     (let* ((_body255530_
                                                             (map (lambda (_g255525255527_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g255525255527_
                               _L255490_
                               _$t255344_
                               _method-calls253899_
                               _slot-refs253900_
                               _class-type-check253901_
                               _struct-type-check1255438_
                               _struct-type-check2255439_)))
                          _L255488_))
                    (__tmp263182
                     (let ((__tmp263183
                            (let ((__tmp263184
                                   (let ()
                                     (declare (not safe))
                                     (cons _L255490_ _L255489_))))
                              (declare (not safe))
                              (cons __tmp263184 _body255530_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp263183))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp263182 _L255092_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl255449255477_
                                                   _tl255452255485_
                                                   _hd255453255483_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g255441255459_
                                                 _g255442255462_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255441255459_ _g255442255462_)))))
                              (let ()
                                (declare (not safe))
                                (_g255441255459_ _g255442255462_))))))
                  (declare (not safe))
                  (_g255440255532_ _L255092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr255696_
                                                      (lambda (_struct-type-check1255537_
                                                               _struct-type-check2255538_)
                                                        (let* ((_g255540255559_
                                                                (lambda (_g255541255556_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g255541255556_))))
                       (_g255539255693_
                        (lambda (_g255541255562_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g255541255562_))
                              (let ((_e255545255564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g255541255562_))))
                                (let ((_hd255544255567_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e255545255564_)))
                                      (_tl255543255569_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e255545255564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl255543255569_))
                                      (let ((_g263185_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl255543255569_
                                                '0))))
                                        (begin
                                          (let ((_g263186_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g263185_)
                                                       (##vector-length
                                                        _g263185_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g263186_ 2)))
                                                (error "Context expects 2 values"
                                                       _g263186_)))
                                          (let ((_target255546255572_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g263185_ 0)))
                                                (_tl255548255574_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g263185_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl255548255574_))
                                                (letrec ((_loop255549255577_
                                                          (lambda (_hd255547255580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause255553255582_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd255547255580_))
                        (let ((_e255550255585_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd255547255580_))))
                          (let ((_lp-hd255551255588_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e255550255585_)))
                                (_lp-tl255552255590_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e255550255585_))))
                            (let ((__tmp263190
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd255551255588_
                                           _clause255553255582_))))
                              (declare (not safe))
                              (_loop255549255577_
                               _lp-tl255552255590_
                               __tmp263190))))
                        (let ((_clause255554255593_
                               (reverse _clause255553255582_)))
                          ((lambda (_L255596_)
                             (let* ((_clauses255691_
                                     (map (lambda (_clause255611_)
                                            (let* ((___stx261829261830_
                                                    _clause255611_)
                                                   (_g255614255629_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx261829261830_)))))
                                              (let ((___kont261831261832_
                                                     (lambda (_L255657_
                                                              _L255658_
                                                              _L255659_)
                                                       (let* ((_body255679_
                                                               (map (lambda (_g255674255676_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g255674255676_
                                 _L255659_
                                 _$t255344_
                                 _method-calls253899_
                                 _slot-refs253900_
                                 _class-type-check253901_
                                 _struct-type-check1255537_
                                 _struct-type-check2255538_)))
                            _L255657_))
                      (__tmp263187
                       (let ()
                         (declare (not safe))
                         (cons _L255659_ _L255658_))))
                 (declare (not safe))
                 (cons __tmp263187 _body255679_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261833261834_
                                                     (lambda ()
                                                       _clause255611_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx261829261830_))
                                                    (let ((_e255621255641_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx261829261830_))))
                                                      (let ((_tl255619255646_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e255621255641_)))
                    (_hd255620255644_
                     (let () (declare (not safe)) (##car _e255621255641_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd255620255644_))
                    (let ((_e255624255649_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd255620255644_))))
                      (let ((_tl255622255654_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255624255649_)))
                            (_hd255623255652_
                             (let ()
                               (declare (not safe))
                               (##car _e255624255649_))))
                        (___kont261831261832_
                         _tl255619255646_
                         _tl255622255654_
                         _hd255623255652_)))
                    (___kont261833261834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont261833261834_)))))
                                          (let ((__tmp263188
                                                 (lambda (_g255683255686_
                                                          _g255684255688_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g255683255686_
                                                           _g255684255688_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp263188
                                                    '()
                                                    _L255596_))))
                                    (__tmp263189
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses255691_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp263189 _L255091_)))
                           _clause255554255593_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop255549255577_
                                                     _target255546255572_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255540255559_
                                                   _g255541255562_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255540255559_ _g255541255562_)))))
                              (let ()
                                (declare (not safe))
                                (_g255540255559_ _g255541255562_))))))
                  (declare (not safe))
                  (_g255539255693_ _L255091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl255701_
                                                      (lambda (_specializer-lambda-expr255698_
                                                               _specializer-case-lambda-expr255699_)
                                                        (let ((__tmp263191
                                                               (let ((__tmp263192
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp263194
                                     (let ((__tmp263195
                                            (let ((__tmp263197
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L255093_ '())))
                                                  (__tmp263196
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr255698_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp263197 __tmp263196))))
                                       (declare (not safe))
                                       (cons __tmp263195 '())))
                                    (__tmp263193
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr255699_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp263194 __tmp263193))))
                         (declare (not safe))
                         (cons '%#let-values __tmp263192))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp263191 _stx253805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr255703_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr255535_
                                                         _struct-check-all255414_
                                                         _empty253904_)))
                                                     (_specializer-case-lambda-expr255705_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr255696_
                                                         _struct-check-all255414_
                                                         _empty253904_)))
                                                     (_specializer-impl255707_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl255701_
                                                         _specializer-lambda-expr255703_
                                                         _specializer-case-lambda-expr255705_)))
                                                     (_unchecked-specializer-lambda-expr255709_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253907_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr255535_
                                                             _empty253904_
                                                             _struct-check-all255414_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr255711_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253907_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr255696_
                                                             _empty253904_
                                                             _struct-check-all255414_))
                                                          '#f))
                                                     (_unchecked-specializer-impl255713_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?253907_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl255701_
                                                             _unchecked-specializer-lambda-expr255709_
                                                             _unchecked-specializer-case-lambda-expr255711_))
                                                          '#f))
                                                     (_specializer-impl255715_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl253811_
                                                         _$t255344_
                                                         _methods-bind255367_
                                                         _slots-bind255390_
                                                         _class-check-bind255412_
                                                         _struct-check-bind255436_
                                                         _specializer-impl255707_
                                                         _lifted-specializer-id255342_
                                                         _unchecked-specializer-impl255713_))))
                                                (let ((__tmp263199
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L253880_)))
                                                      (__tmp263198
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id255335_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp263199
                                                   '" => "
                                                   __tmp263198))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def253812_
                                                   _L253880_
                                                   _specializer-id255335_
                                                   _specializer-impl255715_
                                                   _lifted-specializer-id255342_
                                                   _unchecked-specializer-impl255713_)))))
                                        _hd255024255086_
                                        _hd255021255078_
                                        _hd255018255070_)
                                       (let ()
                                         (declare (not safe))
                                         (_g255000255030_ _g255001255033_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g255000255030_ _g255001255033_)))
                           (let ()
                             (declare (not safe))
                             (_g255000255030_ _g255001255033_)))
                       (let ()
                         (declare (not safe))
                         (_g255000255030_ _g255001255033_)))))
               (let () (declare (not safe)) (_g255000255030_ _g255001255033_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255000255030_
                                                      _g255001255033_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g255000255030_
                                              _g255001255033_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255000255030_ _g255001255033_)))))
                           (let ()
                             (declare (not safe))
                             (_g255000255030_ _g255001255033_)))))
                   (let ()
                     (declare (not safe))
                     (_g255000255030_ _g255001255033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255000255030_
                                                      _g255001255033_))))))
                                       (declare (not safe))
                                       (_g254999255718_ _L253879_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L253879_))
                                         (let* ((_g255721255774_
                                                 (lambda (_g255722255771_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g255722255771_))))
                                                (_g255720257046_
                                                 (lambda (_g255722255777_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g255722255777_))
                                                       (let ((_e255730255779_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g255722255777_))))
                 (let ((_hd255729255782_
                        (let () (declare (not safe)) (##car _e255730255779_)))
                       (_tl255728255784_
                        (let () (declare (not safe)) (##cdr _e255730255779_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd255729255782_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd255729255782_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl255728255784_))
                               (let ((_e255733255787_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl255728255784_))))
                                 (let ((_hd255732255790_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e255733255787_)))
                                       (_tl255731255792_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e255733255787_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd255732255790_))
                                       (let ((_e255736255795_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd255732255790_))))
                                         (let ((_hd255735255798_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e255736255795_)))
                                               (_tl255734255800_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e255736255795_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd255735255798_))
                                               (let ((_e255739255803_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd255735255798_))))
                                                 (let ((_hd255738255806_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255739255803_)))
                                                       (_tl255737255808_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255739255803_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd255738255806_))
                                                       (let ((_e255742255811_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd255738255806_))))
                 (let ((_hd255741255814_
                        (let () (declare (not safe)) (##car _e255742255811_)))
                       (_tl255740255816_
                        (let () (declare (not safe)) (##cdr _e255742255811_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl255740255816_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl255737255808_))
                           (let ((_e255745255819_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl255737255808_))))
                             (let ((_hd255744255822_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255745255819_)))
                                   (_tl255743255824_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255745255819_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255744255822_))
                                   (let ((_e255748255827_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255744255822_))))
                                     (let ((_hd255747255830_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255748255827_)))
                                           (_tl255746255832_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255748255827_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd255747255830_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd255747255830_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl255746255832_))
                                                   (let ((_e255751255835_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl255746255832_))))
                                                     (let ((_hd255750255838_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e255751255835_)))
                                                           (_tl255749255840_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e255751255835_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd255750255838_))
                                                           (let ((_e255754255843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd255750255838_))))
                     (let ((_hd255753255846_
                            (let ()
                              (declare (not safe))
                              (##car _e255754255843_)))
                           (_tl255752255848_
                            (let ()
                              (declare (not safe))
                              (##cdr _e255754255843_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd255753255846_))
                           (let ((_e255757255851_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd255753255846_))))
                             (let ((_hd255756255854_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e255757255851_)))
                                   (_tl255755255856_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e255757255851_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd255756255854_))
                                   (let ((_e255760255859_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd255756255854_))))
                                     (let ((_hd255759255862_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e255760255859_)))
                                           (_tl255758255864_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e255760255859_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl255758255864_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl255755255856_))
                                               (let ((_e255763255867_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl255755255856_))))
                                                 (let ((_hd255762255870_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e255763255867_)))
                                                       (_tl255761255872_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e255763255867_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl255761255872_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl255752255848_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl255749255840_))
                       (let ((_e255766255875_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl255749255840_))))
                         (let ((_hd255765255878_
                                (let ()
                                  (declare (not safe))
                                  (##car _e255766255875_)))
                               (_tl255764255880_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e255766255875_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl255764255880_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl255743255824_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl255734255800_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl255731255792_))
                                           (let ((_e255769255883_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl255731255792_))))
                                             (let ((_hd255768255886_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e255769255883_)))
                                                   (_tl255767255888_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e255769255883_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl255767255888_))
                                                   ((lambda (_L255891_
                                                             _L255892_
                                                             _L255893_
                                                             _L255894_
                                                             _L255895_)
                                                      (let* ((_g255934255996_
                                                              (lambda (_g255935255993_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g255935255993_))))
                     (_g255933257043_
                      (lambda (_g255935255999_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g255935255999_))
                            (let ((_e255943256001_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g255935255999_))))
                              (let ((_hd255942256004_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255943256001_)))
                                    (_tl255941256006_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255943256001_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd255942256004_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd255942256004_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl255941256006_))
                                            (let ((_e255946256009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl255941256006_))))
                                              (let ((_hd255945256012_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e255946256009_)))
                                                    (_tl255944256014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e255946256009_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl255944256014_))
                                                    (let ((_e255949256017_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl255944256014_))))
                                                      (let ((_hd255948256020_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e255949256017_)))
                    (_tl255947256022_
                     (let () (declare (not safe)) (##cdr _e255949256017_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd255948256020_))
                    (let ((_e255952256025_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd255948256020_))))
                      (let ((_hd255951256028_
                             (let ()
                               (declare (not safe))
                               (##car _e255952256025_)))
                            (_tl255950256030_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255952256025_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd255951256028_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd255951256028_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl255950256030_))
                                    (let ((_e255955256033_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl255950256030_))))
                                      (let ((_hd255954256036_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e255955256033_)))
                                            (_tl255953256038_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e255955256033_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd255954256036_))
                                            (let ((_e255958256041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd255954256036_))))
                                              (let ((_hd255957256044_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e255958256041_)))
                                                    (_tl255956256046_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e255958256041_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd255957256044_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd255957256044_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl255956256046_))
                                                            (let ((_e255961256049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl255956256046_))))
                      (let ((_hd255960256052_
                             (let ()
                               (declare (not safe))
                               (##car _e255961256049_)))
                            (_tl255959256054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e255961256049_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl255959256054_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl255953256038_))
                                (let ((_e255964256057_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl255953256038_))))
                                  (let ((_hd255963256060_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e255964256057_)))
                                        (_tl255962256062_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e255964256057_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd255963256060_))
                                        (let ((_e255967256065_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd255963256060_))))
                                          (let ((_hd255966256068_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e255967256065_)))
                                                (_tl255965256070_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e255967256065_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd255966256068_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd255966256068_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl255965256070_))
                                                        (let ((_e255970256073_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl255965256070_))))
                  (let ((_hd255969256076_
                         (let () (declare (not safe)) (##car _e255970256073_)))
                        (_tl255968256078_
                         (let ()
                           (declare (not safe))
                           (##cdr _e255970256073_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl255968256078_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl255962256062_))
                            (let ((_e255973256081_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl255962256062_))))
                              (let ((_hd255972256084_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e255973256081_)))
                                    (_tl255971256086_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e255973256081_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd255972256084_))
                                    (let ((_e255976256089_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd255972256084_))))
                                      (let ((_hd255975256092_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e255976256089_)))
                                            (_tl255974256094_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e255976256089_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd255975256092_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd255975256092_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl255974256094_))
                                                    (let ((_e255979256097_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl255974256094_))))
                                                      (let ((_hd255978256100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e255979256097_)))
                    (_tl255977256102_
                     (let () (declare (not safe)) (##cdr _e255979256097_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl255977256102_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl255971256086_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl255971256086_))
                                  '1)
                            (let ((_g263075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl255971256086_
                                      '1))))
                              (begin
                                (let ((_g263076_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g263075_)
                                             (##vector-length _g263075_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g263076_ 2)))
                                      (error "Context expects 2 values"
                                             _g263076_)))
                                (let ((_target255980256105_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263075_ 0)))
                                      (_tl255982256107_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263075_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl255982256107_))
                                      (let ((_e255991256110_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl255982256107_))))
                                        (let ((_hd255990256113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e255991256110_)))
                                              (_tl255989256115_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e255991256110_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl255989256115_))
                                              (letrec ((_loop255983256118_
                                                        (lambda (_hd255981256121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref255987256123_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd255981256121_))
                      (let ((_e255984256126_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd255981256121_))))
                        (let ((_lp-hd255985256129_
                               (let ()
                                 (declare (not safe))
                                 (##car _e255984256126_)))
                              (_lp-tl255986256131_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e255984256126_))))
                          (let ((__tmp263162
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd255985256129_
                                         _kw-ref255987256123_))))
                            (declare (not safe))
                            (_loop255983256118_
                             _lp-tl255986256131_
                             __tmp263162))))
                      (let ((_kw-ref255988256134_
                             (reverse _kw-ref255987256123_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl255947256022_))
                            ((lambda (_L256137_
                                      _L256138_
                                      _L256139_
                                      _L256140_
                                      _L256141_)
                               (let* ((_kw-count256192_
                                       (length (let ((__tmp263077
                                                      (lambda (_g256184256187_
                                                               _g256185256189_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g256184256187_
                                                                _g256185256189_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp263077
                                                         '()
                                                         _L256138_))))
                                      (_self-index256194_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count256192_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L255893_))
                                     (let* ((_g256197256211_
                                             (lambda (_g256198256208_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g256198256208_))))
                                            (_g256196256382_
                                             (lambda (_g256198256214_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g256198256214_))
                                                   (let ((_e256203256216_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g256198256214_))))
                                                     (let ((_hd256202256219_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e256203256216_)))
                                                           (_tl256201256221_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e256203256216_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl256201256221_))
                                                           (let ((_e256206256224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl256201256221_))))
                     (let ((_hd256205256227_
                            (let ()
                              (declare (not safe))
                              (##car _e256206256224_)))
                           (_tl256204256229_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256206256224_))))
                       ((lambda (_L256232_ _L256233_)
                          (let ((_self256249_
                                 (list-ref _L256233_ _self-index256194_)))
                            (for-each
                             (lambda (_g256250256252_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g256250256252_
                                  _self256249_
                                  _method-calls253899_
                                  _slot-refs253900_
                                  _class-type-check253901_
                                  _struct-type-check253902_
                                  _struct-type-assert253903_)))
                             _L256232_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?253906_))
                                _stx253805_
                                (let* ((_specializer-id256261_
                                        (let* ((_id256255_
                                                (let ((__tmp263128
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L253880_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp263128
                                                   '"::specialize")))
                                               (_specializer-id256258_
                                                (let ((__tmp263129
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx253805_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id256255_
                                                   __tmp263129))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id256258_))
                                          _specializer-id256258_))
                                       (_lifted-specializer-id256268_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?253908_))
                                            (let* ((_id256263_
                                                    (let ((__tmp263130
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253880_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp263130
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id256265_
                                                    (let ((__tmp263131
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx253805_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id256263_
                                                       __tmp263131))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id256265_))
                                              _lifted-specializer-id256265_)
                                            '#f))
                                       (_$t256270_
                                        (let ((__tmp263132 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp263132)))
                                       (_methods256272_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls253899_)))
                                       (_$methods256276_
                                        (map (lambda (_id256274_)
                                               (let ((__tmp263133
                                                      (gensym _id256274_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp263133)))
                                             _methods256272_))
                                       (_g263134_
                                        (for-each
                                         (lambda (_g256277256280_
                                                  _g256278256282_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls253899_
                                              _g256277256280_
                                              _g256278256282_)))
                                         _methods256272_
                                         _$methods256276_))
                                       (_methods-bind256293_
                                        (map (lambda (_g256285256288_
                                                      _g256286256290_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind253807_
                                                  _$t256270_
                                                  _g256285256288_
                                                  _g256286256290_)))
                                             _methods256272_
                                             _$methods256276_))
                                       (_slots256295_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs253900_)))
                                       (_$slots256299_
                                        (map (lambda (_id256297_)
                                               (let ((__tmp263135
                                                      (gensym _id256297_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp263135)))
                                             _slots256295_))
                                       (_g263136_
                                        (for-each
                                         (lambda (_g256300256303_
                                                  _g256301256305_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs253900_
                                              _g256300256303_
                                              _g256301256305_)))
                                         _slots256295_
                                         _$slots256299_))
                                       (_slots-bind256316_
                                        (map (lambda (_g256308256311_
                                                      _g256309256313_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind253808_
                                                  _$t256270_
                                                  _g256308256311_
                                                  _g256309256313_)))
                                             _slots256295_
                                             _$slots256299_))
                                       (_class-check256318_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check253901_)))
                                       (_$class-check256321_
                                        (map (lambda (_g263137_)
                                               (let ((__tmp263138
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp263138)))
                                             _class-check256318_))
                                       (_g263139_
                                        (for-each
                                         (lambda (_g256322256325_
                                                  _g256323256327_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check253901_
                                              _g256322256325_
                                              _g256323256327_)))
                                         _class-check256318_
                                         _$class-check256321_))
                                       (_class-check-bind256338_
                                        (map (lambda (_g256330256333_
                                                      _g256331256335_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind253809_
                                                  _$t256270_
                                                  _g256330256333_
                                                  _g256331256335_)))
                                             _class-check256318_
                                             _$class-check256321_))
                                       (_struct-check-all256340_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check253902_
                                           _struct-type-assert253903_)))
                                       (_struct-check256342_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all256340_)))
                                       (_$struct-check256345_
                                        (map (lambda (_g263140_)
                                               (let ((__tmp263141
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp263141)))
                                             _struct-check256342_))
                                       (_g263142_
                                        (for-each
                                         (lambda (_g256346256349_
                                                  _g256347256351_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all256340_
                                              _g256346256349_
                                              _g256347256351_)))
                                         _struct-check256342_
                                         _$struct-check256345_))
                                       (_struct-check-bind256362_
                                        (map (lambda (_g256354256357_
                                                      _g256355256359_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind253810_
                                                  _$t256270_
                                                  _g256354256357_
                                                  _g256355256359_)))
                                             _struct-check256342_
                                             _$struct-check256345_))
                                       (_make-specializer-impl256373_
                                        (lambda (_struct-type-check1256364_
                                                 _struct-type-check2256365_)
                                          (let* ((_specializer-body256371_
                                                  (map (lambda (_g256366256368_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g256366256368_
                                                            _self256249_
                                                            _$t256270_
                                                            _method-calls253899_
                                                            _slot-refs253900_
                                                            _class-type-check253901_
                                                            _struct-type-check1256364_
                                                            _struct-type-check2256365_)))
                                                       _L256232_))
                                                 (__tmp263143
                                                  (let ((__tmp263144
                                                         (let ((__tmp263146
                                                                (let ((__tmp263147
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp263159
                                      (let ()
                                        (declare (not safe))
                                        (cons _L255895_ '())))
                                     (__tmp263148
                                      (let ((__tmp263149
                                             (let ((__tmp263150
                                                    (let ((__tmp263152
                                                           (let ((__tmp263153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263158
                                 (let ()
                                   (declare (not safe))
                                   (cons _L255894_ '())))
                                (__tmp263154
                                 (let ((__tmp263155
                                        (let ((__tmp263156
                                               (let ((__tmp263157
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L256233_
                                                              _specializer-body256371_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp263157))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp263156
                                           _L255893_))))
                                   (declare (not safe))
                                   (cons __tmp263155 '()))))
                            (declare (not safe))
                            (cons __tmp263158 __tmp263154))))
                     (declare (not safe))
                     (cons __tmp263153 '())))
                  (__tmp263151
                   (let () (declare (not safe)) (cons _L255892_ '()))))
              (declare (not safe))
              (cons __tmp263152 __tmp263151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp263150))))
                                        (declare (not safe))
                                        (cons __tmp263149 '()))))
                                 (declare (not safe))
                                 (cons __tmp263159 __tmp263148))))
                          (declare (not safe))
                          (cons __tmp263147 '())))
                       (__tmp263145
                        (let () (declare (not safe)) (cons _L255891_ '()))))
                   (declare (not safe))
                   (cons __tmp263146 __tmp263145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp263144))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp263143
                                             _stx253805_))))
                                       (_specializer-impl256375_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl256373_
                                           _struct-check-all256340_
                                           _empty253904_)))
                                       (_unchecked-specializer-impl256377_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?253907_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl256373_
                                               _empty253904_
                                               _struct-check-all256340_))
                                            '#f))
                                       (_specializer-impl256379_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl253811_
                                           _$t256270_
                                           _methods-bind256293_
                                           _slots-bind256316_
                                           _class-check-bind256338_
                                           _struct-check-bind256362_
                                           _specializer-impl256375_
                                           _lifted-specializer-id256268_
                                           _unchecked-specializer-impl256377_))))
                                  (let ((__tmp263161
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L253880_)))
                                        (__tmp263160
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id256261_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp263161
                                     '" => "
                                     __tmp263160))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def253812_
                                     _L253880_
                                     _specializer-id256261_
                                     _specializer-impl256379_
                                     _lifted-specializer-id256268_
                                     _unchecked-specializer-impl256377_))))))
                        _tl256204256229_
                        _hd256205256227_)))
                   (let ()
                     (declare (not safe))
                     (_g256197256211_ _g256198256214_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g256197256211_
                                                      _g256198256214_))))))
                                       (declare (not safe))
                                       (_g256196256382_ _L255893_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L255893_))
                                         (let* ((_g256385256415_
                                                 (lambda (_g256386256412_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g256386256412_))))
                                                (_g256384257040_
                                                 (lambda (_g256386256418_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g256386256418_))
                                                       (let ((_e256392256420_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g256386256418_))))
                 (let ((_hd256391256423_
                        (let () (declare (not safe)) (##car _e256392256420_)))
                       (_tl256390256425_
                        (let () (declare (not safe)) (##cdr _e256392256420_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl256390256425_))
                       (let ((_e256395256428_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl256390256425_))))
                         (let ((_hd256394256431_
                                (let ()
                                  (declare (not safe))
                                  (##car _e256395256428_)))
                               (_tl256393256433_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e256395256428_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd256394256431_))
                               (let ((_e256398256436_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd256394256431_))))
                                 (let ((_hd256397256439_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e256398256436_)))
                                       (_tl256396256441_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e256398256436_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd256397256439_))
                                       (let ((_e256401256444_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd256397256439_))))
                                         (let ((_hd256400256447_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e256401256444_)))
                                               (_tl256399256449_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e256401256444_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd256400256447_))
                                               (let ((_e256404256452_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd256400256447_))))
                                                 (let ((_hd256403256455_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e256404256452_)))
                                                       (_tl256402256457_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e256404256452_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl256402256457_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl256399256449_))
                                                           (let ((_e256407256460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl256399256449_))))
                     (let ((_hd256406256463_
                            (let ()
                              (declare (not safe))
                              (##car _e256407256460_)))
                           (_tl256405256465_
                            (let ()
                              (declare (not safe))
                              (##cdr _e256407256460_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl256405256465_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl256396256441_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl256393256433_))
                                   (let ((_e256410256468_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl256393256433_))))
                                     (let ((_hd256409256471_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e256410256468_)))
                                           (_tl256408256473_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e256410256468_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl256408256473_))
                                           ((lambda (_L256476_
                                                     _L256477_
                                                     _L256478_)
                                              (let* ((_g256501256515_
                                                      (lambda (_g256502256512_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g256502256512_))))
                                                     (_g256500256556_
                                                      (lambda (_g256502256518_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g256502256518_))
                                                            (let ((_e256507256520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g256502256518_))))
                      (let ((_hd256506256523_
                             (let ()
                               (declare (not safe))
                               (##car _e256507256520_)))
                            (_tl256505256525_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256507256520_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl256505256525_))
                            (let ((_e256510256528_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl256505256525_))))
                              (let ((_hd256509256531_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256510256528_)))
                                    (_tl256508256533_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256510256528_))))
                                ((lambda (_L256536_ _L256537_)
                                   (let ((_self256550_
                                          (list-ref
                                           _L256537_
                                           _self-index256194_)))
                                     (for-each
                                      (lambda (_g256551256553_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g256551256553_
                                           _self256550_
                                           _method-calls253899_
                                           _slot-refs253900_
                                           _class-type-check253901_
                                           _struct-type-check253902_
                                           _struct-type-assert253903_)))
                                      _L256536_)))
                                 _tl256508256533_
                                 _hd256509256531_)))
                            (let ()
                              (declare (not safe))
                              (_g256501256515_ _g256502256518_)))))
                    (let ()
                      (declare (not safe))
                      (_g256501256515_ _g256502256518_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256500256556_ _L256477_))
                                              (let* ((_g256559256578_
                                                      (lambda (_g256560256575_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g256560256575_))))
                                                     (_g256558256683_
                                                      (lambda (_g256560256581_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g256560256581_))
                                                            (let ((_e256564256583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g256560256581_))))
                      (let ((_hd256563256586_
                             (let ()
                               (declare (not safe))
                               (##car _e256564256583_)))
                            (_tl256562256588_
                             (let ()
                               (declare (not safe))
                               (##cdr _e256564256583_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl256562256588_))
                            (let ((_g263078_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl256562256588_
                                      '0))))
                              (begin
                                (let ((_g263079_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g263078_)
                                             (##vector-length _g263078_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g263079_ 2)))
                                      (error "Context expects 2 values"
                                             _g263079_)))
                                (let ((_target256565256591_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263078_ 0)))
                                      (_tl256567256593_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g263078_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl256567256593_))
                                      (letrec ((_loop256568256596_
                                                (lambda (_hd256566256599_
                                                         _clause256572256601_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd256566256599_))
                                                      (let ((_e256569256604_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd256566256599_))))
                (let ((_lp-hd256570256607_
                       (let () (declare (not safe)) (##car _e256569256604_)))
                      (_lp-tl256571256609_
                       (let () (declare (not safe)) (##cdr _e256569256604_))))
                  (let ((__tmp263081
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd256570256607_ _clause256572256601_))))
                    (declare (not safe))
                    (_loop256568256596_ _lp-tl256571256609_ __tmp263081))))
              (let ((_clause256573256612_ (reverse _clause256572256601_)))
                ((lambda (_L256615_)
                   (for-each
                    (lambda (_clause256628_)
                      (let* ((_g256630256641_
                              (lambda (_g256631256638_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g256631256638_))))
                             (_g256629256673_
                              (lambda (_g256631256644_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g256631256644_))
                                    (let ((_e256636256646_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g256631256644_))))
                                      (let ((_hd256635256649_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e256636256646_)))
                                            (_tl256634256651_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e256636256646_))))
                                        ((lambda (_L256654_ _L256655_)
                                           (let ((_self256667_
                                                  (list-ref
                                                   _L256655_
                                                   _self-index256194_)))
                                             (for-each
                                              (lambda (_g256668256670_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g256668256670_
                                                   _self256667_
                                                   _method-calls253899_
                                                   _slot-refs253900_
                                                   _class-type-check253901_
                                                   _struct-type-check253902_
                                                   _struct-type-assert253903_)))
                                              _L256654_)))
                                         _tl256634256651_
                                         _hd256635256649_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g256630256641_ _g256631256644_))))))
                        (declare (not safe))
                        (_g256629256673_ _clause256628_)))
                    (let ((__tmp263080
                           (lambda (_g256675256678_ _g256676256680_)
                             (let ()
                               (declare (not safe))
                               (cons _g256675256678_ _g256676256680_)))))
                      (declare (not safe))
                      (foldr1 __tmp263080 '() _L256615_))))
                 _clause256573256612_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop256568256596_
                                           _target256565256591_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g256559256578_ _g256560256581_))))))
                            (let ()
                              (declare (not safe))
                              (_g256559256578_ _g256560256581_)))))
                    (let ()
                      (declare (not safe))
                      (_g256559256578_ _g256560256581_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g256558256683_ _L256476_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?253906_))
                                                  _stx253805_
                                                  (let* ((_specializer-id256692_
                                                          (let* ((_id256686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp263082
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L253880_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp263082 '"::specialize")))
                         (_specializer-id256689_
                          (let ((__tmp263083
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx253805_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id256686_ __tmp263083))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id256689_))
                    _specializer-id256689_))
                 (_lifted-specializer-id256699_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?253908_))
                      (let* ((_id256694_
                              (let ((__tmp263084
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L253880_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp263084
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id256696_
                              (let ((__tmp263085
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx253805_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id256694_
                                 __tmp263085))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id256696_))
                        _lifted-specializer-id256696_)
                      '#f))
                 (_$t256701_
                  (let ((__tmp263086 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp263086)))
                 (_methods256703_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls253899_)))
                 (_$methods256707_
                  (map (lambda (_id256705_)
                         (let ((__tmp263087 (gensym _id256705_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263087)))
                       _methods256703_))
                 (_g263088_
                  (for-each
                   (lambda (_g256708256711_ _g256709256713_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls253899_
                        _g256708256711_
                        _g256709256713_)))
                   _methods256703_
                   _$methods256707_))
                 (_methods-bind256724_
                  (map (lambda (_g256716256719_ _g256717256721_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind253807_
                            _$t256701_
                            _g256716256719_
                            _g256717256721_)))
                       _methods256703_
                       _$methods256707_))
                 (_slots256726_
                  (let () (declare (not safe)) (hash-keys _slot-refs253900_)))
                 (_$slots256730_
                  (map (lambda (_id256728_)
                         (let ((__tmp263089 (gensym _id256728_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp263089)))
                       _slots256726_))
                 (_g263090_
                  (for-each
                   (lambda (_g256731256734_ _g256732256736_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs253900_
                        _g256731256734_
                        _g256732256736_)))
                   _slots256726_
                   _$slots256730_))
                 (_slots-bind256747_
                  (map (lambda (_g256739256742_ _g256740256744_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind253808_
                            _$t256701_
                            _g256739256742_
                            _g256740256744_)))
                       _slots256726_
                       _$slots256730_))
                 (_class-check256749_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check253901_)))
                 (_$class-check256752_
                  (map (lambda (_g263091_)
                         (let ((__tmp263092 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263092)))
                       _class-check256749_))
                 (_g263093_
                  (for-each
                   (lambda (_g256753256756_ _g256754256758_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check253901_
                        _g256753256756_
                        _g256754256758_)))
                   _class-check256749_
                   _$class-check256752_))
                 (_class-check-bind256769_
                  (map (lambda (_g256761256764_ _g256762256766_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind253809_
                            _$t256701_
                            _g256761256764_
                            _g256762256766_)))
                       _class-check256749_
                       _$class-check256752_))
                 (_struct-check-all256771_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check253902_
                     _struct-type-assert253903_)))
                 (_struct-check256773_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all256771_)))
                 (_$struct-check256776_
                  (map (lambda (_g263094_)
                         (let ((__tmp263095 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp263095)))
                       _struct-check256773_))
                 (_g263096_
                  (for-each
                   (lambda (_g256777256780_ _g256778256782_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all256771_
                        _g256777256780_
                        _g256778256782_)))
                   _struct-check256773_
                   _$struct-check256776_))
                 (_struct-check-bind256793_
                  (map (lambda (_g256785256788_ _g256786256790_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind253810_
                            _$t256701_
                            _g256785256788_
                            _g256786256790_)))
                       _struct-check256773_
                       _$struct-check256776_))
                 (_make-specializer-lambda-expr256879_
                  (lambda (_struct-type-check1256795_
                           _struct-type-check2256796_)
                    (let* ((_g256798256812_
                            (lambda (_g256799256809_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g256799256809_))))
                           (_g256797256876_
                            (lambda (_g256799256815_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g256799256815_))
                                  (let ((_e256804256817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g256799256815_))))
                                    (let ((_hd256803256820_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e256804256817_)))
                                          (_tl256802256822_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e256804256817_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl256802256822_))
                                          (let ((_e256807256825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl256802256822_))))
                                            (let ((_hd256806256828_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e256807256825_)))
                                                  (_tl256805256830_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e256807256825_))))
                                              ((lambda (_L256833_ _L256834_)
                                                 (let* ((_self256867_
                                                         (list-ref
                                                          _L256834_
                                                          _self-index256194_))
                                                        (_body256873_
                                                         (map (lambda (_g256868256870_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g256868256870_
                           _self256867_
                           _$t256701_
                           _method-calls253899_
                           _slot-refs253900_
                           _class-type-check253901_
                           _struct-type-check1256795_
                           _struct-type-check2256796_)))
                      _L256833_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp263097
                                                          (let ((__tmp263098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L256834_ _body256873_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp263098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp263097
                                                      _L256477_))))
                                               _tl256805256830_
                                               _hd256806256828_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g256798256812_
                                             _g256799256815_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g256798256812_ _g256799256815_))))))
                      (declare (not safe))
                      (_g256797256876_ _L256477_))))
                 (_make-specializer-case-lambda-expr257018_
                  (lambda (_struct-type-check1256881_
                           _struct-type-check2256882_)
                    (let* ((_g256884256903_
                            (lambda (_g256885256900_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g256885256900_))))
                           (_g256883257015_
                            (lambda (_g256885256906_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g256885256906_))
                                  (let ((_e256889256908_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g256885256906_))))
                                    (let ((_hd256888256911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e256889256908_)))
                                          (_tl256887256913_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e256889256908_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl256887256913_))
                                          (let ((_g263099_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl256887256913_
                                                    '0))))
                                            (begin
                                              (let ((_g263100_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g263099_)
                                                           (##vector-length
                                                            _g263099_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g263100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g263100_)))
                                              (let ((_target256890256916_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g263099_
                                                        0)))
                                                    (_tl256892256918_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g263099_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl256892256918_))
                                                    (letrec ((_loop256893256921_
                                                              (lambda (_hd256891256924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause256897256926_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd256891256924_))
                            (let ((_e256894256929_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd256891256924_))))
                              (let ((_lp-hd256895256932_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e256894256929_)))
                                    (_lp-tl256896256934_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e256894256929_))))
                                (let ((__tmp263103
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd256895256932_
                                               _clause256897256926_))))
                                  (declare (not safe))
                                  (_loop256893256921_
                                   _lp-tl256896256934_
                                   __tmp263103))))
                            (let ((_clause256898256937_
                                   (reverse _clause256897256926_)))
                              ((lambda (_L256940_)
                                 (let* ((_clauses257013_
                                         (map (lambda (_clause256955_)
                                                (let* ((_g256957256968_
                                                        (lambda (_g256958256965_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g256958256965_))))
                                                       (_g256956257003_
                                                        (lambda (_g256958256971_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g256958256971_))
                      (let ((_e256963256973_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g256958256971_))))
                        (let ((_hd256962256976_
                               (let ()
                                 (declare (not safe))
                                 (##car _e256963256973_)))
                              (_tl256961256978_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e256963256973_))))
                          ((lambda (_L256981_ _L256982_)
                             (let* ((_self256994_
                                     (list-ref _L256982_ _self-index256194_))
                                    (_body257000_
                                     (map (lambda (_g256995256997_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g256995256997_
                                               _self256994_
                                               _$t256701_
                                               _method-calls253899_
                                               _slot-refs253900_
                                               _class-type-check253901_
                                               _struct-type-check1256881_
                                               _struct-type-check2256882_)))
                                          _L256981_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L256982_ _body257000_))))
                           _tl256961256978_
                           _hd256962256976_)))
                      (let ()
                        (declare (not safe))
                        (_g256957256968_ _g256958256971_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g256956257003_
                                                   _clause256955_)))
                                              (let ((__tmp263101
                                                     (lambda (_g257005257008_
                                                              _g257006257010_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g257005257008_
                                                               _g257006257010_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp263101
                                                        '()
                                                        _L256940_))))
                                        (__tmp263102
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses257013_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp263102
                                    _L256476_)))
                               _clause256898256937_))))))
              (let ()
                (declare (not safe))
                (_loop256893256921_ _target256890256916_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g256884256903_
                                                       _g256885256906_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g256884256903_
                                             _g256885256906_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g256884256903_ _g256885256906_))))))
                      (declare (not safe))
                      (_g256883257015_ _L256476_))))
                 (_make-specializer-impl257023_
                  (lambda (_specializer-lambda-expr257020_
                           _specializer-case-lambda-expr257021_)
                    (let ((__tmp263104
                           (let ((__tmp263105
                                  (let ((__tmp263107
                                         (let ((__tmp263108
                                                (let ((__tmp263125
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L255895_ '())))
                                                      (__tmp263109
                                                       (let ((__tmp263110
                                                              (let ((__tmp263111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp263113
                                    (let ((__tmp263114
                                           (let ((__tmp263124
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L255894_ '())))
                                                 (__tmp263115
                                                  (let ((__tmp263116
                                                         (let ((__tmp263117
                                                                (let ((__tmp263118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp263120
                                      (let ((__tmp263121
                                             (let ((__tmp263123
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L256478_ '())))
                                                   (__tmp263122
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr257020_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp263123
                                                     __tmp263122))))
                                        (declare (not safe))
                                        (cons __tmp263121 '())))
                                     (__tmp263119
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr257021_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp263120 __tmp263119))))
                          (declare (not safe))
                          (cons '%#let-values __tmp263118))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp263117 _stx253805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263116 '()))))
                                             (declare (not safe))
                                             (cons __tmp263124 __tmp263115))))
                                      (declare (not safe))
                                      (cons __tmp263114 '())))
                                   (__tmp263112
                                    (let ()
                                      (declare (not safe))
                                      (cons _L255892_ '()))))
                               (declare (not safe))
                               (cons __tmp263113 __tmp263112))))
                        (declare (not safe))
                        (cons '%#let-values __tmp263111))))
                 (declare (not safe))
                 (cons __tmp263110 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp263125
                                                        __tmp263109))))
                                           (declare (not safe))
                                           (cons __tmp263108 '())))
                                        (__tmp263106
                                         (let ()
                                           (declare (not safe))
                                           (cons _L255891_ '()))))
                                    (declare (not safe))
                                    (cons __tmp263107 __tmp263106))))
                             (declare (not safe))
                             (cons '%#let-values __tmp263105))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp263104 _stx253805_))))
                 (_specializer-lambda-expr257025_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr256879_
                     _struct-check-all256771_
                     _empty253904_)))
                 (_specializer-case-lambda-expr257027_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr257018_
                     _struct-check-all256771_
                     _empty253904_)))
                 (_specializer-impl257029_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl257023_
                     _specializer-lambda-expr257025_
                     _specializer-case-lambda-expr257027_)))
                 (_unchecked-specializer-lambda-expr257031_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253907_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr256879_
                         _empty253904_
                         _struct-check-all256771_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr257033_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253907_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr257018_
                         _empty253904_
                         _struct-check-all256771_))
                      '#f))
                 (_unchecked-specializer-impl257035_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?253907_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl257023_
                         _unchecked-specializer-lambda-expr257031_
                         _unchecked-specializer-case-lambda-expr257033_))
                      '#f))
                 (_specializer-impl257037_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl253811_
                     _$t256701_
                     _methods-bind256724_
                     _slots-bind256747_
                     _class-check-bind256769_
                     _struct-check-bind256793_
                     _specializer-impl257029_
                     _lifted-specializer-id256699_
                     _unchecked-specializer-impl257035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp263127
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L253880_)))
                                                          (__tmp263126
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id256692_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp263127
                                                       '" => "
                                                       __tmp263126))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def253812_
                                                       _L253880_
                                                       _specializer-id256692_
                                                       _specializer-impl257037_
                                                       _lifted-specializer-id256699_
                                                       _unchecked-specializer-impl257035_)))))
                                            _hd256409256471_
                                            _hd256406256463_
                                            _hd256403256455_)
                                           (let ()
                                             (declare (not safe))
                                             (_g256385256415_
                                              _g256386256418_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g256385256415_ _g256386256418_)))
                               (let ()
                                 (declare (not safe))
                                 (_g256385256415_ _g256386256418_)))
                           (let ()
                             (declare (not safe))
                             (_g256385256415_ _g256386256418_)))))
                   (let ()
                     (declare (not safe))
                     (_g256385256415_ _g256386256418_)))
               (let ()
                 (declare (not safe))
                 (_g256385256415_ _g256386256418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g256385256415_
                                                  _g256386256418_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g256385256415_ _g256386256418_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g256385256415_ _g256386256418_)))))
                       (let ()
                         (declare (not safe))
                         (_g256385256415_ _g256386256418_)))))
               (let ()
                 (declare (not safe))
                 (_g256385256415_ _g256386256418_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g256384257040_ _L255893_))
                                         _stx253805_))))
                             _hd255990256113_
                             _kw-ref255988256134_
                             _hd255978256100_
                             _hd255969256076_
                             _hd255960256052_)
                            (let ()
                              (declare (not safe))
                              (_g255934255996_ _g255935255999_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop255983256118_
                                                   _target255980256105_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g255934255996_
                                                 _g255935255999_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g255934255996_ _g255935255999_))))))
                            (let ()
                              (declare (not safe))
                              (_g255934255996_ _g255935255999_)))
                        (let ()
                          (declare (not safe))
                          (_g255934255996_ _g255935255999_)))
                    (let ()
                      (declare (not safe))
                      (_g255934255996_ _g255935255999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255934255996_
                                                       _g255935255999_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255934255996_
                                                   _g255935255999_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g255934255996_
                                               _g255935255999_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g255934255996_ _g255935255999_)))))
                            (let ()
                              (declare (not safe))
                              (_g255934255996_ _g255935255999_)))
                        (let ()
                          (declare (not safe))
                          (_g255934255996_ _g255935255999_)))))
                (let ()
                  (declare (not safe))
                  (_g255934255996_ _g255935255999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255934255996_
                                                       _g255935255999_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g255934255996_
                                                   _g255935255999_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g255934255996_ _g255935255999_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g255934255996_ _g255935255999_)))
                            (let ()
                              (declare (not safe))
                              (_g255934255996_ _g255935255999_)))))
                    (let ()
                      (declare (not safe))
                      (_g255934255996_ _g255935255999_)))
                (let ()
                  (declare (not safe))
                  (_g255934255996_ _g255935255999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255934255996_
                                                       _g255935255999_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g255934255996_
                                               _g255935255999_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g255934255996_ _g255935255999_)))
                                (let ()
                                  (declare (not safe))
                                  (_g255934255996_ _g255935255999_)))
                            (let ()
                              (declare (not safe))
                              (_g255934255996_ _g255935255999_)))))
                    (let ()
                      (declare (not safe))
                      (_g255934255996_ _g255935255999_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g255934255996_
                                                       _g255935255999_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g255934255996_
                                               _g255935255999_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g255934255996_ _g255935255999_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g255934255996_ _g255935255999_)))))
                            (let ()
                              (declare (not safe))
                              (_g255934255996_ _g255935255999_))))))
                (declare (not safe))
                (_g255933257043_ _L255892_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd255768255886_
                                                    _hd255765255878_
                                                    _hd255762255870_
                                                    _hd255759255862_
                                                    _hd255741255814_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255721255774_
                                                      _g255722255777_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g255721255774_
                                              _g255722255777_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g255721255774_ _g255722255777_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g255721255774_ _g255722255777_)))
                               (let ()
                                 (declare (not safe))
                                 (_g255721255774_ _g255722255777_)))))
                       (let ()
                         (declare (not safe))
                         (_g255721255774_ _g255722255777_)))
                   (let ()
                     (declare (not safe))
                     (_g255721255774_ _g255722255777_)))
               (let ()
                 (declare (not safe))
                 (_g255721255774_ _g255722255777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255721255774_
                                                  _g255722255777_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g255721255774_
                                              _g255722255777_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255721255774_ _g255722255777_)))))
                           (let ()
                             (declare (not safe))
                             (_g255721255774_ _g255722255777_)))))
                   (let ()
                     (declare (not safe))
                     (_g255721255774_ _g255722255777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g255721255774_
                                                      _g255722255777_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255721255774_
                                                  _g255722255777_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g255721255774_
                                              _g255722255777_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g255721255774_ _g255722255777_)))))
                           (let ()
                             (declare (not safe))
                             (_g255721255774_ _g255722255777_)))
                       (let ()
                         (declare (not safe))
                         (_g255721255774_ _g255722255777_)))))
               (let ()
                 (declare (not safe))
                 (_g255721255774_ _g255722255777_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g255721255774_
                                                  _g255722255777_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g255721255774_ _g255722255777_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g255721255774_ _g255722255777_)))
                           (let ()
                             (declare (not safe))
                             (_g255721255774_ _g255722255777_)))
                       (let ()
                         (declare (not safe))
                         (_g255721255774_ _g255722255777_)))))
               (let ()
                 (declare (not safe))
                 (_g255721255774_ _g255722255777_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g255720257046_ _L253879_))
                                         _stx253805_))))))))
                  (___kont261853261854_ (lambda () _stx253805_)))
              (let ((___match261882261883_
                     (lambda (_e253821253847_
                              _hd253820253850_
                              _tl253819253852_
                              _e253824253855_
                              _hd253823253858_
                              _tl253822253860_
                              _e253827253863_
                              _hd253826253866_
                              _tl253825253868_
                              _e253830253871_
                              _hd253829253874_
                              _tl253828253876_)
                       (let ((_L253879_ _hd253829253874_)
                             (_L253880_ _hd253826253866_))
                         (if (let ((__tmp263244
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L253880_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp263244))
                             (___kont261851261852_ _L253879_ _L253880_)
                             (___kont261853261854_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx261849261850_))
                    (let ((_e253821253847_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx261849261850_))))
                      (let ((_tl253819253852_
                             (let ()
                               (declare (not safe))
                               (##cdr _e253821253847_)))
                            (_hd253820253850_
                             (let ()
                               (declare (not safe))
                               (##car _e253821253847_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl253819253852_))
                            (let ((_e253824253855_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl253819253852_))))
                              (let ((_tl253822253860_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e253824253855_)))
                                    (_hd253823253858_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e253824253855_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd253823253858_))
                                    (let ((_e253827253863_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd253823253858_))))
                                      (let ((_tl253825253868_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e253827253863_)))
                                            (_hd253826253866_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e253827253863_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl253825253868_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl253822253860_))
                                                (let ((_e253830253871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl253822253860_))))
                                                  (let ((_tl253828253876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e253830253871_)))
                                                        (_hd253829253874_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e253830253871_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl253828253876_))
                                                        (___match261882261883_
                                                         _e253821253847_
                                                         _hd253820253850_
                                                         _tl253819253852_
                                                         _e253824253855_
                                                         _hd253823253858_
                                                         _tl253822253860_
                                                         _e253827253863_
                                                         _hd253826253866_
                                                         _tl253825253868_
                                                         _e253830253871_
                                                         _hd253829253874_
                                                         _tl253828253876_)
                                                        (___kont261853261854_))))
                                                (___kont261853261854_))
                                            (___kont261853261854_))))
                                    (___kont261853261854_))))
                            (___kont261853261854_))))
                    (___kont261853261854_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx252781_
               _self252782_
               _methods252783_
               _slots252784_
               _class-check252785_
               _struct-check252786_
               _struct-assert252787_)
        (let* ((___stx261885261886_ _stx252781_)
               (_g252795253017_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx261885261886_)))))
          (let ((___kont261887261888_
                 (lambda (_L253754_ _L253755_ _L253756_ _L253757_)
                   (let ((__tmp263245
                          (let () (declare (not safe)) (gx#stx-e _L253755_))))
                     (declare (not safe))
                     (table-set! _methods252783_ __tmp263245 '#t))
                   (for-each
                    (lambda (_g253790253792_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g253790253792_
                         _self252782_
                         _methods252783_
                         _slots252784_
                         _class-check252785_
                         _struct-check252786_
                         _struct-assert252787_)))
                    (let ((__tmp263246
                           (lambda (_g253794253797_ _g253795253799_)
                             (let ()
                               (declare (not safe))
                               (cons _g253794253797_ _g253795253799_)))))
                      (declare (not safe))
                      (foldr1 __tmp263246 '() _L253754_)))))
                (___kont261891261892_
                 (lambda (_L253589_ _L253590_ _L253591_ _L253592_ _L253593_)
                   (let ((__tmp263247
                          (let () (declare (not safe)) (gx#stx-e _L253590_))))
                     (declare (not safe))
                     (table-set! _methods252783_ __tmp263247 '#t))
                   (for-each
                    (lambda (_g253633253635_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g253633253635_
                         _self252782_
                         _methods252783_
                         _slots252784_
                         _class-check252785_
                         _struct-check252786_
                         _struct-assert252787_)))
                    (let ((__tmp263248
                           (lambda (_g253637253640_ _g253638253642_)
                             (let ()
                               (declare (not safe))
                               (cons _g253637253640_ _g253638253642_)))))
                      (declare (not safe))
                      (foldr1 __tmp263248 '() _L253589_)))))
                (___kont261895261896_
                 (lambda (_L253422_ _L253423_ _L253424_)
                   (let ((__tmp263249
                          (let () (declare (not safe)) (gx#stx-e _L253422_))))
                     (declare (not safe))
                     (table-set! _slots252784_ __tmp263249 '#t))))
                (___kont261897261898_
                 (lambda (_L253299_ _L253300_ _L253301_ _L253302_)
                   (let ((__tmp263250
                          (let () (declare (not safe)) (gx#stx-e _L253300_))))
                     (declare (not safe))
                     (table-set! _slots252784_ __tmp263250 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L253299_
                      _self252782_
                      _methods252783_
                      _slots252784_
                      _class-check252785_
                      _struct-check252786_
                      _struct-assert252787_))))
                (___kont261899261900_
                 (lambda (_L253183_ _L253184_)
                   (let ((__tmp263251
                          (##structure-ref
                           (let ((__tmp263252
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L253184_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp263252))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots252784_ __tmp263251 '#t))))
                (___kont261901261902_
                 (lambda (_L253093_ _L253094_ _L253095_)
                   (let ((__tmp263253
                          (##structure-ref
                           (let ((__tmp263254
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L253095_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp263254))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots252784_ __tmp263253 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L253093_
                      _self252782_
                      _methods252783_
                      _slots252784_
                      _class-check252785_
                      _struct-check252786_
                      _struct-assert252787_))))
                (___kont261903261904_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx252781_
                      _self252782_
                      _methods252783_
                      _slots252784_
                      _class-check252785_
                      _struct-check252786_
                      _struct-assert252787_)))))
            (let* ((___match262384262385_
                    (lambda (_e252991253029_
                             _hd252990253032_
                             _tl252989253034_
                             _e252994253037_
                             _hd252993253040_
                             _tl252992253042_
                             _e252997253045_
                             _hd252996253048_
                             _tl252995253050_
                             _e253000253053_
                             _hd252999253056_
                             _tl252998253058_
                             _e253003253061_
                             _hd253002253064_
                             _tl253001253066_
                             _e253006253069_
                             _hd253005253072_
                             _tl253004253074_
                             _e253009253077_
                             _hd253008253080_
                             _tl253007253082_
                             _e253012253085_
                             _hd253011253088_
                             _tl253010253090_)
                      (let ((_L253093_ _hd253011253088_)
                            (_L253094_ _hd253008253080_)
                            (_L253095_ _hd252999253056_))
                        (if (and (let ((__tmp263255
                                        (let ((__tmp263256
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L253095_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp263256))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp263255
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253094_
                                    _self252782_)))
                            (___kont261901261902_
                             _L253093_
                             _L253094_
                             _L253095_)
                            (___kont261903261904_)))))
                   (___match262382262383_
                    (lambda (_e252991253029_
                             _hd252990253032_
                             _tl252989253034_
                             _e252994253037_
                             _hd252993253040_
                             _tl252992253042_
                             _e252997253045_
                             _hd252996253048_
                             _tl252995253050_
                             _e253000253053_
                             _hd252999253056_
                             _tl252998253058_
                             _e253003253061_
                             _hd253002253064_
                             _tl253001253066_
                             _e253006253069_
                             _hd253005253072_
                             _tl253004253074_
                             _e253009253077_
                             _hd253008253080_
                             _tl253007253082_
                             _e253012253085_
                             _hd253011253088_
                             _tl253010253090_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl253010253090_))
                          (___match262384262385_
                           _e252991253029_
                           _hd252990253032_
                           _tl252989253034_
                           _e252994253037_
                           _hd252993253040_
                           _tl252992253042_
                           _e252997253045_
                           _hd252996253048_
                           _tl252995253050_
                           _e253000253053_
                           _hd252999253056_
                           _tl252998253058_
                           _e253003253061_
                           _hd253002253064_
                           _tl253001253066_
                           _e253006253069_
                           _hd253005253072_
                           _tl253004253074_
                           _e253009253077_
                           _hd253008253080_
                           _tl253007253082_
                           _e253012253085_
                           _hd253011253088_
                           _tl253010253090_)
                          (___kont261903261904_))))
                   (___match262376262377_
                    (lambda (_e252991253029_
                             _hd252990253032_
                             _tl252989253034_
                             _e252994253037_
                             _hd252993253040_
                             _tl252992253042_
                             _e252997253045_
                             _hd252996253048_
                             _tl252995253050_
                             _e253000253053_
                             _hd252999253056_
                             _tl252998253058_
                             _e253003253061_
                             _hd253002253064_
                             _tl253001253066_
                             _e253006253069_
                             _hd253005253072_
                             _tl253004253074_
                             _e253009253077_
                             _hd253008253080_
                             _tl253007253082_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl253001253066_))
                          (let ((_e253012253085_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl253001253066_))))
                            (let ((_tl253010253090_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e253012253085_)))
                                  (_hd253011253088_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e253012253085_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl253010253090_))
                                  (___match262384262385_
                                   _e252991253029_
                                   _hd252990253032_
                                   _tl252989253034_
                                   _e252994253037_
                                   _hd252993253040_
                                   _tl252992253042_
                                   _e252997253045_
                                   _hd252996253048_
                                   _tl252995253050_
                                   _e253000253053_
                                   _hd252999253056_
                                   _tl252998253058_
                                   _e253003253061_
                                   _hd253002253064_
                                   _tl253001253066_
                                   _e253006253069_
                                   _hd253005253072_
                                   _tl253004253074_
                                   _e253009253077_
                                   _hd253008253080_
                                   _tl253007253082_
                                   _e253012253085_
                                   _hd253011253088_
                                   _tl253010253090_)
                                  (___kont261903261904_))))
                          (___kont261903261904_))))
                   (___match262322262323_
                    (lambda (_e252967253127_
                             _hd252966253130_
                             _tl252965253132_
                             _e252970253135_
                             _hd252969253138_
                             _tl252968253140_
                             _e252973253143_
                             _hd252972253146_
                             _tl252971253148_
                             _e252976253151_
                             _hd252975253154_
                             _tl252974253156_
                             _e252979253159_
                             _hd252978253162_
                             _tl252977253164_
                             _e252982253167_
                             _hd252981253170_
                             _tl252980253172_
                             _e252985253175_
                             _hd252984253178_
                             _tl252983253180_)
                      (let ((_L253183_ _hd252984253178_)
                            (_L253184_ _hd252975253154_))
                        (if (and (let ((__tmp263257
                                        (let ((__tmp263258
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L253184_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp263258))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp263257
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253183_
                                    _self252782_)))
                            (___kont261899261900_ _L253183_ _L253184_)
                            (___kont261903261904_)))))
                   (___match262320262321_
                    (lambda (_e252967253127_
                             _hd252966253130_
                             _tl252965253132_
                             _e252970253135_
                             _hd252969253138_
                             _tl252968253140_
                             _e252973253143_
                             _hd252972253146_
                             _tl252971253148_
                             _e252976253151_
                             _hd252975253154_
                             _tl252974253156_
                             _e252979253159_
                             _hd252978253162_
                             _tl252977253164_
                             _e252982253167_
                             _hd252981253170_
                             _tl252980253172_
                             _e252985253175_
                             _hd252984253178_
                             _tl252983253180_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252977253164_))
                          (___match262322262323_
                           _e252967253127_
                           _hd252966253130_
                           _tl252965253132_
                           _e252970253135_
                           _hd252969253138_
                           _tl252968253140_
                           _e252973253143_
                           _hd252972253146_
                           _tl252971253148_
                           _e252976253151_
                           _hd252975253154_
                           _tl252974253156_
                           _e252979253159_
                           _hd252978253162_
                           _tl252977253164_
                           _e252982253167_
                           _hd252981253170_
                           _tl252980253172_
                           _e252985253175_
                           _hd252984253178_
                           _tl252983253180_)
                          (___match262376262377_
                           _e252967253127_
                           _hd252966253130_
                           _tl252965253132_
                           _e252970253135_
                           _hd252969253138_
                           _tl252968253140_
                           _e252973253143_
                           _hd252972253146_
                           _tl252971253148_
                           _e252976253151_
                           _hd252975253154_
                           _tl252974253156_
                           _e252979253159_
                           _hd252978253162_
                           _tl252977253164_
                           _e252982253167_
                           _hd252981253170_
                           _tl252980253172_
                           _e252985253175_
                           _hd252984253178_
                           _tl252983253180_))))
                   (___match262266262267_
                    (lambda (_e252932253211_
                             _hd252931253214_
                             _tl252930253216_
                             _e252935253219_
                             _hd252934253222_
                             _tl252933253224_
                             _e252938253227_
                             _hd252937253230_
                             _tl252936253232_
                             _e252941253235_
                             _hd252940253238_
                             _tl252939253240_
                             _e252944253243_
                             _hd252943253246_
                             _tl252942253248_
                             _e252947253251_
                             _hd252946253254_
                             _tl252945253256_
                             _e252950253259_
                             _hd252949253262_
                             _tl252948253264_
                             _e252953253267_
                             _hd252952253270_
                             _tl252951253272_
                             _e252956253275_
                             _hd252955253278_
                             _tl252954253280_
                             _e252959253283_
                             _hd252958253286_
                             _tl252957253288_
                             _e252962253291_
                             _hd252961253294_
                             _tl252960253296_)
                      (let ((_L253299_ _hd252961253294_)
                            (_L253300_ _hd252958253286_)
                            (_L253301_ _hd252949253262_)
                            (_L253302_ _hd252940253238_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253302_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253302_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253301_
                                    _self252782_)))
                            (___kont261897261898_
                             _L253299_
                             _L253300_
                             _L253301_
                             _L253302_)
                            (___kont261903261904_)))))
                   (___match262258262259_
                    (lambda (_e252932253211_
                             _hd252931253214_
                             _tl252930253216_
                             _e252935253219_
                             _hd252934253222_
                             _tl252933253224_
                             _e252938253227_
                             _hd252937253230_
                             _tl252936253232_
                             _e252941253235_
                             _hd252940253238_
                             _tl252939253240_
                             _e252944253243_
                             _hd252943253246_
                             _tl252942253248_
                             _e252947253251_
                             _hd252946253254_
                             _tl252945253256_
                             _e252950253259_
                             _hd252949253262_
                             _tl252948253264_
                             _e252953253267_
                             _hd252952253270_
                             _tl252951253272_
                             _e252956253275_
                             _hd252955253278_
                             _tl252954253280_
                             _e252959253283_
                             _hd252958253286_
                             _tl252957253288_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252951253272_))
                          (let ((_e252962253291_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252951253272_))))
                            (let ((_tl252960253296_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252962253291_)))
                                  (_hd252961253294_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252962253291_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252960253296_))
                                  (___match262266262267_
                                   _e252932253211_
                                   _hd252931253214_
                                   _tl252930253216_
                                   _e252935253219_
                                   _hd252934253222_
                                   _tl252933253224_
                                   _e252938253227_
                                   _hd252937253230_
                                   _tl252936253232_
                                   _e252941253235_
                                   _hd252940253238_
                                   _tl252939253240_
                                   _e252944253243_
                                   _hd252943253246_
                                   _tl252942253248_
                                   _e252947253251_
                                   _hd252946253254_
                                   _tl252945253256_
                                   _e252950253259_
                                   _hd252949253262_
                                   _tl252948253264_
                                   _e252953253267_
                                   _hd252952253270_
                                   _tl252951253272_
                                   _e252956253275_
                                   _hd252955253278_
                                   _tl252954253280_
                                   _e252959253283_
                                   _hd252958253286_
                                   _tl252957253288_
                                   _e252962253291_
                                   _hd252961253294_
                                   _tl252960253296_)
                                  (___kont261903261904_))))
                          (___match262382262383_
                           _e252932253211_
                           _hd252931253214_
                           _tl252930253216_
                           _e252935253219_
                           _hd252934253222_
                           _tl252933253224_
                           _e252938253227_
                           _hd252937253230_
                           _tl252936253232_
                           _e252941253235_
                           _hd252940253238_
                           _tl252939253240_
                           _e252944253243_
                           _hd252943253246_
                           _tl252942253248_
                           _e252947253251_
                           _hd252946253254_
                           _tl252945253256_
                           _e252950253259_
                           _hd252949253262_
                           _tl252948253264_
                           _e252953253267_
                           _hd252952253270_
                           _tl252951253272_))))
                   (___match262180262181_
                    (lambda (_e252898253342_
                             _hd252897253345_
                             _tl252896253347_
                             _e252901253350_
                             _hd252900253353_
                             _tl252899253355_
                             _e252904253358_
                             _hd252903253361_
                             _tl252902253363_
                             _e252907253366_
                             _hd252906253369_
                             _tl252905253371_
                             _e252910253374_
                             _hd252909253377_
                             _tl252908253379_
                             _e252913253382_
                             _hd252912253385_
                             _tl252911253387_
                             _e252916253390_
                             _hd252915253393_
                             _tl252914253395_
                             _e252919253398_
                             _hd252918253401_
                             _tl252917253403_
                             _e252922253406_
                             _hd252921253409_
                             _tl252920253411_
                             _e252925253414_
                             _hd252924253417_
                             _tl252923253419_)
                      (let ((_L253422_ _hd252924253417_)
                            (_L253423_ _hd252915253393_)
                            (_L253424_ _hd252906253369_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253424_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L253424_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L253423_
                                    _self252782_)))
                            (___kont261895261896_
                             _L253422_
                             _L253423_
                             _L253424_)
                            (___match262384262385_
                             _e252898253342_
                             _hd252897253345_
                             _tl252896253347_
                             _e252901253350_
                             _hd252900253353_
                             _tl252899253355_
                             _e252904253358_
                             _hd252903253361_
                             _tl252902253363_
                             _e252907253366_
                             _hd252906253369_
                             _tl252905253371_
                             _e252910253374_
                             _hd252909253377_
                             _tl252908253379_
                             _e252913253382_
                             _hd252912253385_
                             _tl252911253387_
                             _e252916253390_
                             _hd252915253393_
                             _tl252914253395_
                             _e252919253398_
                             _hd252918253401_
                             _tl252917253403_)))))
                   (___match262178262179_
                    (lambda (_e252898253342_
                             _hd252897253345_
                             _tl252896253347_
                             _e252901253350_
                             _hd252900253353_
                             _tl252899253355_
                             _e252904253358_
                             _hd252903253361_
                             _tl252902253363_
                             _e252907253366_
                             _hd252906253369_
                             _tl252905253371_
                             _e252910253374_
                             _hd252909253377_
                             _tl252908253379_
                             _e252913253382_
                             _hd252912253385_
                             _tl252911253387_
                             _e252916253390_
                             _hd252915253393_
                             _tl252914253395_
                             _e252919253398_
                             _hd252918253401_
                             _tl252917253403_
                             _e252922253406_
                             _hd252921253409_
                             _tl252920253411_
                             _e252925253414_
                             _hd252924253417_
                             _tl252923253419_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl252917253403_))
                          (___match262180262181_
                           _e252898253342_
                           _hd252897253345_
                           _tl252896253347_
                           _e252901253350_
                           _hd252900253353_
                           _tl252899253355_
                           _e252904253358_
                           _hd252903253361_
                           _tl252902253363_
                           _e252907253366_
                           _hd252906253369_
                           _tl252905253371_
                           _e252910253374_
                           _hd252909253377_
                           _tl252908253379_
                           _e252913253382_
                           _hd252912253385_
                           _tl252911253387_
                           _e252916253390_
                           _hd252915253393_
                           _tl252914253395_
                           _e252919253398_
                           _hd252918253401_
                           _tl252917253403_
                           _e252922253406_
                           _hd252921253409_
                           _tl252920253411_
                           _e252925253414_
                           _hd252924253417_
                           _tl252923253419_)
                          (___match262258262259_
                           _e252898253342_
                           _hd252897253345_
                           _tl252896253347_
                           _e252901253350_
                           _hd252900253353_
                           _tl252899253355_
                           _e252904253358_
                           _hd252903253361_
                           _tl252902253363_
                           _e252907253366_
                           _hd252906253369_
                           _tl252905253371_
                           _e252910253374_
                           _hd252909253377_
                           _tl252908253379_
                           _e252913253382_
                           _hd252912253385_
                           _tl252911253387_
                           _e252916253390_
                           _hd252915253393_
                           _tl252914253395_
                           _e252919253398_
                           _hd252918253401_
                           _tl252917253403_
                           _e252922253406_
                           _hd252921253409_
                           _tl252920253411_
                           _e252925253414_
                           _hd252924253417_
                           _tl252923253419_))))
                   (___match262168262169_
                    (lambda (_e252898253342_
                             _hd252897253345_
                             _tl252896253347_
                             _e252901253350_
                             _hd252900253353_
                             _tl252899253355_
                             _e252904253358_
                             _hd252903253361_
                             _tl252902253363_
                             _e252907253366_
                             _hd252906253369_
                             _tl252905253371_
                             _e252910253374_
                             _hd252909253377_
                             _tl252908253379_
                             _e252913253382_
                             _hd252912253385_
                             _tl252911253387_
                             _e252916253390_
                             _hd252915253393_
                             _tl252914253395_
                             _e252919253398_
                             _hd252918253401_
                             _tl252917253403_
                             _e252922253406_
                             _hd252921253409_
                             _tl252920253411_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd252921253409_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl252920253411_))
                              (let ((_e252925253414_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl252920253411_))))
                                (let ((_tl252923253419_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252925253414_)))
                                      (_hd252924253417_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252925253414_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl252923253419_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl252917253403_))
                                          (___match262180262181_
                                           _e252898253342_
                                           _hd252897253345_
                                           _tl252896253347_
                                           _e252901253350_
                                           _hd252900253353_
                                           _tl252899253355_
                                           _e252904253358_
                                           _hd252903253361_
                                           _tl252902253363_
                                           _e252907253366_
                                           _hd252906253369_
                                           _tl252905253371_
                                           _e252910253374_
                                           _hd252909253377_
                                           _tl252908253379_
                                           _e252913253382_
                                           _hd252912253385_
                                           _tl252911253387_
                                           _e252916253390_
                                           _hd252915253393_
                                           _tl252914253395_
                                           _e252919253398_
                                           _hd252918253401_
                                           _tl252917253403_
                                           _e252922253406_
                                           _hd252921253409_
                                           _tl252920253411_
                                           _e252925253414_
                                           _hd252924253417_
                                           _tl252923253419_)
                                          (___match262258262259_
                                           _e252898253342_
                                           _hd252897253345_
                                           _tl252896253347_
                                           _e252901253350_
                                           _hd252900253353_
                                           _tl252899253355_
                                           _e252904253358_
                                           _hd252903253361_
                                           _tl252902253363_
                                           _e252907253366_
                                           _hd252906253369_
                                           _tl252905253371_
                                           _e252910253374_
                                           _hd252909253377_
                                           _tl252908253379_
                                           _e252913253382_
                                           _hd252912253385_
                                           _tl252911253387_
                                           _e252916253390_
                                           _hd252915253393_
                                           _tl252914253395_
                                           _e252919253398_
                                           _hd252918253401_
                                           _tl252917253403_
                                           _e252922253406_
                                           _hd252921253409_
                                           _tl252920253411_
                                           _e252925253414_
                                           _hd252924253417_
                                           _tl252923253419_))
                                      (___match262382262383_
                                       _e252898253342_
                                       _hd252897253345_
                                       _tl252896253347_
                                       _e252901253350_
                                       _hd252900253353_
                                       _tl252899253355_
                                       _e252904253358_
                                       _hd252903253361_
                                       _tl252902253363_
                                       _e252907253366_
                                       _hd252906253369_
                                       _tl252905253371_
                                       _e252910253374_
                                       _hd252909253377_
                                       _tl252908253379_
                                       _e252913253382_
                                       _hd252912253385_
                                       _tl252911253387_
                                       _e252916253390_
                                       _hd252915253393_
                                       _tl252914253395_
                                       _e252919253398_
                                       _hd252918253401_
                                       _tl252917253403_))))
                              (___match262382262383_
                               _e252898253342_
                               _hd252897253345_
                               _tl252896253347_
                               _e252901253350_
                               _hd252900253353_
                               _tl252899253355_
                               _e252904253358_
                               _hd252903253361_
                               _tl252902253363_
                               _e252907253366_
                               _hd252906253369_
                               _tl252905253371_
                               _e252910253374_
                               _hd252909253377_
                               _tl252908253379_
                               _e252913253382_
                               _hd252912253385_
                               _tl252911253387_
                               _e252916253390_
                               _hd252915253393_
                               _tl252914253395_
                               _e252919253398_
                               _hd252918253401_
                               _tl252917253403_))
                          (___match262382262383_
                           _e252898253342_
                           _hd252897253345_
                           _tl252896253347_
                           _e252901253350_
                           _hd252900253353_
                           _tl252899253355_
                           _e252904253358_
                           _hd252903253361_
                           _tl252902253363_
                           _e252907253366_
                           _hd252906253369_
                           _tl252905253371_
                           _e252910253374_
                           _hd252909253377_
                           _tl252908253379_
                           _e252913253382_
                           _hd252912253385_
                           _tl252911253387_
                           _e252916253390_
                           _hd252915253393_
                           _tl252914253395_
                           _e252919253398_
                           _hd252918253401_
                           _tl252917253403_))))
                   (___match262100262101_
                    (lambda (_e252847253461_
                             _hd252846253464_
                             _tl252845253466_
                             _e252850253469_
                             _hd252849253472_
                             _tl252848253474_
                             _e252853253477_
                             _hd252852253480_
                             _tl252851253482_
                             _e252856253485_
                             _hd252855253488_
                             _tl252854253490_
                             _e252859253493_
                             _hd252858253496_
                             _tl252857253498_
                             _e252862253501_
                             _hd252861253504_
                             _tl252860253506_
                             _e252865253509_
                             _hd252864253512_
                             _tl252863253514_
                             _e252868253517_
                             _hd252867253520_
                             _tl252866253522_
                             _e252871253525_
                             _hd252870253528_
                             _tl252869253530_
                             _e252874253533_
                             _hd252873253536_
                             _tl252872253538_
                             _e252877253541_
                             _hd252876253544_
                             _tl252875253546_
                             _e252880253549_
                             _hd252879253552_
                             _tl252878253554_
                             _e252883253557_
                             _hd252882253560_
                             _tl252881253562_
                             ___splice261893261894_
                             _target252884253565_
                             _tl252886253567_)
                      (letrec ((_loop252887253570_
                                (lambda (_hd252885253573_ _args252891253575_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd252885253573_))
                                      (let ((_e252888253578_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd252885253573_))))
                                        (let ((_lp-tl252890253583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e252888253578_)))
                                              (_lp-hd252889253581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e252888253578_))))
                                          (let ((__tmp263259
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd252889253581_
                                                         _args252891253575_))))
                                            (declare (not safe))
                                            (_loop252887253570_
                                             _lp-tl252890253583_
                                             __tmp263259))))
                                      (let ((_args252892253586_
                                             (reverse _args252891253575_)))
                                        (let ((_L253589_ _args252892253586_)
                                              (_L253590_ _hd252882253560_)
                                              (_L253591_ _hd252873253536_)
                                              (_L253592_ _hd252864253512_)
                                              (_L253593_ _hd252855253488_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253593_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253592_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L253591_
                                                      _self252782_)))
                                              (___kont261891261892_
                                               _L253589_
                                               _L253590_
                                               _L253591_
                                               _L253592_
                                               _L253593_)
                                              (___kont261903261904_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop252887253570_ _target252884253565_ '())))))
                   (___match262058262059_
                    (lambda (_e252847253461_
                             _hd252846253464_
                             _tl252845253466_
                             _e252850253469_
                             _hd252849253472_
                             _tl252848253474_
                             _e252853253477_
                             _hd252852253480_
                             _tl252851253482_
                             _e252856253485_
                             _hd252855253488_
                             _tl252854253490_
                             _e252859253493_
                             _hd252858253496_
                             _tl252857253498_
                             _e252862253501_
                             _hd252861253504_
                             _tl252860253506_
                             _e252865253509_
                             _hd252864253512_
                             _tl252863253514_
                             _e252868253517_
                             _hd252867253520_
                             _tl252866253522_
                             _e252871253525_
                             _hd252870253528_
                             _tl252869253530_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd252870253528_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl252869253530_))
                              (let ((_e252874253533_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl252869253530_))))
                                (let ((_tl252872253538_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252874253533_)))
                                      (_hd252873253536_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252874253533_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl252872253538_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl252866253522_))
                                          (let ((_e252877253541_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl252866253522_))))
                                            (let ((_tl252875253546_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e252877253541_)))
                                                  (_hd252876253544_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e252877253541_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd252876253544_))
                                                  (let ((_e252880253549_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd252876253544_))))
                                                    (let ((_tl252878253554_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e252880253549_)))
                                                          (_hd252879253552_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e252880253549_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd252879253552_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd252879253552_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252878253554_))
                          (let ((_e252883253557_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252878253554_))))
                            (let ((_tl252881253562_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252883253557_)))
                                  (_hd252882253560_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252883253557_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl252881253562_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl252875253546_))
                                      (let ((___splice261893261894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl252875253546_
                                                '0))))
                                        (let ((_tl252886253567_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice261893261894_
                                                  '1)))
                                              (_target252884253565_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice261893261894_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl252886253567_))
                                              (___match262100262101_
                                               _e252847253461_
                                               _hd252846253464_
                                               _tl252845253466_
                                               _e252850253469_
                                               _hd252849253472_
                                               _tl252848253474_
                                               _e252853253477_
                                               _hd252852253480_
                                               _tl252851253482_
                                               _e252856253485_
                                               _hd252855253488_
                                               _tl252854253490_
                                               _e252859253493_
                                               _hd252858253496_
                                               _tl252857253498_
                                               _e252862253501_
                                               _hd252861253504_
                                               _tl252860253506_
                                               _e252865253509_
                                               _hd252864253512_
                                               _tl252863253514_
                                               _e252868253517_
                                               _hd252867253520_
                                               _tl252866253522_
                                               _e252871253525_
                                               _hd252870253528_
                                               _tl252869253530_
                                               _e252874253533_
                                               _hd252873253536_
                                               _tl252872253538_
                                               _e252877253541_
                                               _hd252876253544_
                                               _tl252875253546_
                                               _e252880253549_
                                               _hd252879253552_
                                               _tl252878253554_
                                               _e252883253557_
                                               _hd252882253560_
                                               _tl252881253562_
                                               ___splice261893261894_
                                               _target252884253565_
                                               _tl252886253567_)
                                              (___kont261903261904_))))
                                      (___kont261903261904_))
                                  (___kont261903261904_))))
                          (___kont261903261904_))
                      (___kont261903261904_))
                  (___kont261903261904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont261903261904_))))
                                          (___match262382262383_
                                           _e252847253461_
                                           _hd252846253464_
                                           _tl252845253466_
                                           _e252850253469_
                                           _hd252849253472_
                                           _tl252848253474_
                                           _e252853253477_
                                           _hd252852253480_
                                           _tl252851253482_
                                           _e252856253485_
                                           _hd252855253488_
                                           _tl252854253490_
                                           _e252859253493_
                                           _hd252858253496_
                                           _tl252857253498_
                                           _e252862253501_
                                           _hd252861253504_
                                           _tl252860253506_
                                           _e252865253509_
                                           _hd252864253512_
                                           _tl252863253514_
                                           _e252868253517_
                                           _hd252867253520_
                                           _tl252866253522_))
                                      (___match262382262383_
                                       _e252847253461_
                                       _hd252846253464_
                                       _tl252845253466_
                                       _e252850253469_
                                       _hd252849253472_
                                       _tl252848253474_
                                       _e252853253477_
                                       _hd252852253480_
                                       _tl252851253482_
                                       _e252856253485_
                                       _hd252855253488_
                                       _tl252854253490_
                                       _e252859253493_
                                       _hd252858253496_
                                       _tl252857253498_
                                       _e252862253501_
                                       _hd252861253504_
                                       _tl252860253506_
                                       _e252865253509_
                                       _hd252864253512_
                                       _tl252863253514_
                                       _e252868253517_
                                       _hd252867253520_
                                       _tl252866253522_))))
                              (___match262382262383_
                               _e252847253461_
                               _hd252846253464_
                               _tl252845253466_
                               _e252850253469_
                               _hd252849253472_
                               _tl252848253474_
                               _e252853253477_
                               _hd252852253480_
                               _tl252851253482_
                               _e252856253485_
                               _hd252855253488_
                               _tl252854253490_
                               _e252859253493_
                               _hd252858253496_
                               _tl252857253498_
                               _e252862253501_
                               _hd252861253504_
                               _tl252860253506_
                               _e252865253509_
                               _hd252864253512_
                               _tl252863253514_
                               _e252868253517_
                               _hd252867253520_
                               _tl252866253522_))
                          (___match262168262169_
                           _e252847253461_
                           _hd252846253464_
                           _tl252845253466_
                           _e252850253469_
                           _hd252849253472_
                           _tl252848253474_
                           _e252853253477_
                           _hd252852253480_
                           _tl252851253482_
                           _e252856253485_
                           _hd252855253488_
                           _tl252854253490_
                           _e252859253493_
                           _hd252858253496_
                           _tl252857253498_
                           _e252862253501_
                           _hd252861253504_
                           _tl252860253506_
                           _e252865253509_
                           _hd252864253512_
                           _tl252863253514_
                           _e252868253517_
                           _hd252867253520_
                           _tl252866253522_
                           _e252871253525_
                           _hd252870253528_
                           _tl252869253530_))))
                   (___match261990261991_
                    (lambda (_e252803253650_
                             _hd252802253653_
                             _tl252801253655_
                             _e252806253658_
                             _hd252805253661_
                             _tl252804253663_
                             _e252809253666_
                             _hd252808253669_
                             _tl252807253671_
                             _e252812253674_
                             _hd252811253677_
                             _tl252810253679_
                             _e252815253682_
                             _hd252814253685_
                             _tl252813253687_
                             _e252818253690_
                             _hd252817253693_
                             _tl252816253695_
                             _e252821253698_
                             _hd252820253701_
                             _tl252819253703_
                             _e252824253706_
                             _hd252823253709_
                             _tl252822253711_
                             _e252827253714_
                             _hd252826253717_
                             _tl252825253719_
                             _e252830253722_
                             _hd252829253725_
                             _tl252828253727_
                             ___splice261889261890_
                             _target252831253730_
                             _tl252833253732_)
                      (letrec ((_loop252834253735_
                                (lambda (_hd252832253738_ _args252838253740_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd252832253738_))
                                      (let ((_e252835253743_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd252832253738_))))
                                        (let ((_lp-tl252837253748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e252835253743_)))
                                              (_lp-hd252836253746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e252835253743_))))
                                          (let ((__tmp263260
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd252836253746_
                                                         _args252838253740_))))
                                            (declare (not safe))
                                            (_loop252834253735_
                                             _lp-tl252837253748_
                                             __tmp263260))))
                                      (let ((_args252839253751_
                                             (reverse _args252838253740_)))
                                        (let ((_L253754_ _args252839253751_)
                                              (_L253755_ _hd252829253725_)
                                              (_L253756_ _hd252820253701_)
                                              (_L253757_ _hd252811253677_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L253757_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L253756_
                                                      _self252782_)))
                                              (___kont261887261888_
                                               _L253754_
                                               _L253755_
                                               _L253756_
                                               _L253757_)
                                              (___match262178262179_
                                               _e252803253650_
                                               _hd252802253653_
                                               _tl252801253655_
                                               _e252806253658_
                                               _hd252805253661_
                                               _tl252804253663_
                                               _e252809253666_
                                               _hd252808253669_
                                               _tl252807253671_
                                               _e252812253674_
                                               _hd252811253677_
                                               _tl252810253679_
                                               _e252815253682_
                                               _hd252814253685_
                                               _tl252813253687_
                                               _e252818253690_
                                               _hd252817253693_
                                               _tl252816253695_
                                               _e252821253698_
                                               _hd252820253701_
                                               _tl252819253703_
                                               _e252824253706_
                                               _hd252823253709_
                                               _tl252822253711_
                                               _e252827253714_
                                               _hd252826253717_
                                               _tl252825253719_
                                               _e252830253722_
                                               _hd252829253725_
                                               _tl252828253727_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop252834253735_ _target252831253730_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx261885261886_))
                  (let ((_e252803253650_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx261885261886_))))
                    (let ((_tl252801253655_
                           (let ()
                             (declare (not safe))
                             (##cdr _e252803253650_)))
                          (_hd252802253653_
                           (let ()
                             (declare (not safe))
                             (##car _e252803253650_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl252801253655_))
                          (let ((_e252806253658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl252801253655_))))
                            (let ((_tl252804253663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252806253658_)))
                                  (_hd252805253661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252806253658_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd252805253661_))
                                  (let ((_e252809253666_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd252805253661_))))
                                    (let ((_tl252807253671_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e252809253666_)))
                                          (_hd252808253669_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e252809253666_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd252808253669_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd252808253669_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl252807253671_))
                                                  (let ((_e252812253674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl252807253671_))))
                                                    (let ((_tl252810253679_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e252812253674_)))
                                                          (_hd252811253677_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e252812253674_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl252810253679_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl252804253663_))
                      (let ((_e252815253682_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl252804253663_))))
                        (let ((_tl252813253687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e252815253682_)))
                              (_hd252814253685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e252815253682_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd252814253685_))
                              (let ((_e252818253690_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd252814253685_))))
                                (let ((_tl252816253695_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e252818253690_)))
                                      (_hd252817253693_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e252818253690_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd252817253693_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd252817253693_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl252816253695_))
                                              (let ((_e252821253698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl252816253695_))))
                                                (let ((_tl252819253703_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e252821253698_)))
                                                      (_hd252820253701_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e252821253698_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl252819253703_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl252813253687_))
                                                          (let ((_e252824253706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl252813253687_))))
                    (let ((_tl252822253711_
                           (let ()
                             (declare (not safe))
                             (##cdr _e252824253706_)))
                          (_hd252823253709_
                           (let ()
                             (declare (not safe))
                             (##car _e252824253706_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd252823253709_))
                          (let ((_e252827253714_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd252823253709_))))
                            (let ((_tl252825253719_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e252827253714_)))
                                  (_hd252826253717_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e252827253714_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd252826253717_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd252826253717_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl252825253719_))
                                          (let ((_e252830253722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl252825253719_))))
                                            (let ((_tl252828253727_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e252830253722_)))
                                                  (_hd252829253725_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e252830253722_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl252828253727_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl252822253711_))
                                                      (let ((___splice261889261890_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl252822253711_ '0))))
                (let ((_tl252833253732_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice261889261890_ '1)))
                      (_target252831253730_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice261889261890_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl252833253732_))
                      (___match261990261991_
                       _e252803253650_
                       _hd252802253653_
                       _tl252801253655_
                       _e252806253658_
                       _hd252805253661_
                       _tl252804253663_
                       _e252809253666_
                       _hd252808253669_
                       _tl252807253671_
                       _e252812253674_
                       _hd252811253677_
                       _tl252810253679_
                       _e252815253682_
                       _hd252814253685_
                       _tl252813253687_
                       _e252818253690_
                       _hd252817253693_
                       _tl252816253695_
                       _e252821253698_
                       _hd252820253701_
                       _tl252819253703_
                       _e252824253706_
                       _hd252823253709_
                       _tl252822253711_
                       _e252827253714_
                       _hd252826253717_
                       _tl252825253719_
                       _e252830253722_
                       _hd252829253725_
                       _tl252828253727_
                       ___splice261889261890_
                       _target252831253730_
                       _tl252833253732_)
                      (___match262178262179_
                       _e252803253650_
                       _hd252802253653_
                       _tl252801253655_
                       _e252806253658_
                       _hd252805253661_
                       _tl252804253663_
                       _e252809253666_
                       _hd252808253669_
                       _tl252807253671_
                       _e252812253674_
                       _hd252811253677_
                       _tl252810253679_
                       _e252815253682_
                       _hd252814253685_
                       _tl252813253687_
                       _e252818253690_
                       _hd252817253693_
                       _tl252816253695_
                       _e252821253698_
                       _hd252820253701_
                       _tl252819253703_
                       _e252824253706_
                       _hd252823253709_
                       _tl252822253711_
                       _e252827253714_
                       _hd252826253717_
                       _tl252825253719_
                       _e252830253722_
                       _hd252829253725_
                       _tl252828253727_))))
              (___match262178262179_
               _e252803253650_
               _hd252802253653_
               _tl252801253655_
               _e252806253658_
               _hd252805253661_
               _tl252804253663_
               _e252809253666_
               _hd252808253669_
               _tl252807253671_
               _e252812253674_
               _hd252811253677_
               _tl252810253679_
               _e252815253682_
               _hd252814253685_
               _tl252813253687_
               _e252818253690_
               _hd252817253693_
               _tl252816253695_
               _e252821253698_
               _hd252820253701_
               _tl252819253703_
               _e252824253706_
               _hd252823253709_
               _tl252822253711_
               _e252827253714_
               _hd252826253717_
               _tl252825253719_
               _e252830253722_
               _hd252829253725_
               _tl252828253727_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match262382262383_
                                                   _e252803253650_
                                                   _hd252802253653_
                                                   _tl252801253655_
                                                   _e252806253658_
                                                   _hd252805253661_
                                                   _tl252804253663_
                                                   _e252809253666_
                                                   _hd252808253669_
                                                   _tl252807253671_
                                                   _e252812253674_
                                                   _hd252811253677_
                                                   _tl252810253679_
                                                   _e252815253682_
                                                   _hd252814253685_
                                                   _tl252813253687_
                                                   _e252818253690_
                                                   _hd252817253693_
                                                   _tl252816253695_
                                                   _e252821253698_
                                                   _hd252820253701_
                                                   _tl252819253703_
                                                   _e252824253706_
                                                   _hd252823253709_
                                                   _tl252822253711_))))
                                          (___match262382262383_
                                           _e252803253650_
                                           _hd252802253653_
                                           _tl252801253655_
                                           _e252806253658_
                                           _hd252805253661_
                                           _tl252804253663_
                                           _e252809253666_
                                           _hd252808253669_
                                           _tl252807253671_
                                           _e252812253674_
                                           _hd252811253677_
                                           _tl252810253679_
                                           _e252815253682_
                                           _hd252814253685_
                                           _tl252813253687_
                                           _e252818253690_
                                           _hd252817253693_
                                           _tl252816253695_
                                           _e252821253698_
                                           _hd252820253701_
                                           _tl252819253703_
                                           _e252824253706_
                                           _hd252823253709_
                                           _tl252822253711_))
                                      (___match262058262059_
                                       _e252803253650_
                                       _hd252802253653_
                                       _tl252801253655_
                                       _e252806253658_
                                       _hd252805253661_
                                       _tl252804253663_
                                       _e252809253666_
                                       _hd252808253669_
                                       _tl252807253671_
                                       _e252812253674_
                                       _hd252811253677_
                                       _tl252810253679_
                                       _e252815253682_
                                       _hd252814253685_
                                       _tl252813253687_
                                       _e252818253690_
                                       _hd252817253693_
                                       _tl252816253695_
                                       _e252821253698_
                                       _hd252820253701_
                                       _tl252819253703_
                                       _e252824253706_
                                       _hd252823253709_
                                       _tl252822253711_
                                       _e252827253714_
                                       _hd252826253717_
                                       _tl252825253719_))
                                  (___match262382262383_
                                   _e252803253650_
                                   _hd252802253653_
                                   _tl252801253655_
                                   _e252806253658_
                                   _hd252805253661_
                                   _tl252804253663_
                                   _e252809253666_
                                   _hd252808253669_
                                   _tl252807253671_
                                   _e252812253674_
                                   _hd252811253677_
                                   _tl252810253679_
                                   _e252815253682_
                                   _hd252814253685_
                                   _tl252813253687_
                                   _e252818253690_
                                   _hd252817253693_
                                   _tl252816253695_
                                   _e252821253698_
                                   _hd252820253701_
                                   _tl252819253703_
                                   _e252824253706_
                                   _hd252823253709_
                                   _tl252822253711_))))
                          (___match262382262383_
                           _e252803253650_
                           _hd252802253653_
                           _tl252801253655_
                           _e252806253658_
                           _hd252805253661_
                           _tl252804253663_
                           _e252809253666_
                           _hd252808253669_
                           _tl252807253671_
                           _e252812253674_
                           _hd252811253677_
                           _tl252810253679_
                           _e252815253682_
                           _hd252814253685_
                           _tl252813253687_
                           _e252818253690_
                           _hd252817253693_
                           _tl252816253695_
                           _e252821253698_
                           _hd252820253701_
                           _tl252819253703_
                           _e252824253706_
                           _hd252823253709_
                           _tl252822253711_))))
                  (___match262320262321_
                   _e252803253650_
                   _hd252802253653_
                   _tl252801253655_
                   _e252806253658_
                   _hd252805253661_
                   _tl252804253663_
                   _e252809253666_
                   _hd252808253669_
                   _tl252807253671_
                   _e252812253674_
                   _hd252811253677_
                   _tl252810253679_
                   _e252815253682_
                   _hd252814253685_
                   _tl252813253687_
                   _e252818253690_
                   _hd252817253693_
                   _tl252816253695_
                   _e252821253698_
                   _hd252820253701_
                   _tl252819253703_))
              (___kont261903261904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont261903261904_))
                                          (___kont261903261904_))
                                      (___kont261903261904_))))
                              (___kont261903261904_))))
                      (___kont261903261904_))
                  (___kont261903261904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont261903261904_))
                                              (___kont261903261904_))
                                          (___kont261903261904_))))
                                  (___kont261903261904_))))
                          (___kont261903261904_))))
                  (___kont261903261904_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx251727_
               _self251728_
               _$t251729_
               _methods251730_
               _slots251731_
               _class-check251732_
               _struct-check251733_
               _struct-assert251734_)
        (letrec ((_force-e251736_
                  (lambda (_what252779_)
                    (let ((__tmp263261
                           (let ((__tmp263265
                                  (let ((__tmp263266
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp263266)))
                                 (__tmp263262
                                  (let ((__tmp263263
                                         (let ((__tmp263264
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what252779_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp263264))))
                                    (declare (not safe))
                                    (cons __tmp263263 '()))))
                             (declare (not safe))
                             (cons __tmp263265 __tmp263262))))
                      (declare (not safe))
                      (cons '%#call __tmp263261)))))
          (let* ((___stx262387262388_ _stx251727_)
                 (_g251744251966_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx262387262388_)))))
            (let ((___kont262389262390_
                   (lambda (_L252725_ _L252726_ _L252727_ _L252728_)
                     (let ((_$method252773_
                            (let ((__tmp263267
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252726_))))
                              (declare (not safe))
                              (table-ref _methods251730_ __tmp263267)))
                           (_args252774_
                            (map (lambda (_g252761252763_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g252761252763_
                                      _self251728_
                                      _$t251729_
                                      _methods251730_
                                      _slots251731_
                                      _class-check251732_
                                      _struct-check251733_
                                      _struct-assert251734_)))
                                 (let ((__tmp263268
                                        (lambda (_g252765252768_
                                                 _g252766252770_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g252765252768_
                                                  _g252766252770_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp263268 '() _L252725_)))))
                       (let ((__tmp263269
                              (let ((__tmp263270
                                     (let ((__tmp263274
                                            (let ()
                                              (declare (not safe))
                                              (_force-e251736_
                                               _$method252773_)))
                                           (__tmp263271
                                            (let ((__tmp263272
                                                   (let ((__tmp263273
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self251728_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263273))))
                                              (declare (not safe))
                                              (cons __tmp263272
                                                    _args252774_))))
                                       (declare (not safe))
                                       (cons __tmp263274 __tmp263271))))
                                (declare (not safe))
                                (cons '%#call __tmp263270))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263269 _stx251727_)))))
                  (___kont262393262394_
                   (lambda (_L252557_ _L252558_ _L252559_ _L252560_ _L252561_)
                     (let ((_$method252613_
                            (let ((__tmp263275
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252558_))))
                              (declare (not safe))
                              (table-ref _methods251730_ __tmp263275)))
                           (_args252614_
                            (map (lambda (_g252601252603_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g252601252603_
                                      _self251728_
                                      _$t251729_
                                      _methods251730_
                                      _slots251731_
                                      _class-check251732_
                                      _struct-check251733_
                                      _struct-assert251734_)))
                                 (let ((__tmp263276
                                        (lambda (_g252605252608_
                                                 _g252606252610_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g252605252608_
                                                  _g252606252610_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp263276 '() _L252557_)))))
                       (let ((__tmp263277
                              (let ((__tmp263278
                                     (let ((__tmp263284
                                            (let ((__tmp263285
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263285)))
                                           (__tmp263279
                                            (let ((__tmp263283
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e251736_
                                                      _$method252613_)))
                                                  (__tmp263280
                                                   (let ((__tmp263281
                                                          (let ((__tmp263282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251728_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263281
                                                           _args252614_))))
                                              (declare (not safe))
                                              (cons __tmp263283 __tmp263280))))
                                       (declare (not safe))
                                       (cons __tmp263284 __tmp263279))))
                                (declare (not safe))
                                (cons '%#call __tmp263278))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263277 _stx251727_)))))
                  (___kont262397262398_
                   (lambda (_L252388_ _L252389_ _L252390_)
                     (let* ((_$field252422_
                             (let ((__tmp263286
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L252388_))))
                               (declare (not safe))
                               (table-ref _slots251731_ __tmp263286)))
                            (__tmp263287
                             (let ((__tmp263288
                                    (let ((__tmp263295
                                           (let ((__tmp263296
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t251729_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp263296)))
                                          (__tmp263289
                                           (let ((__tmp263293
                                                  (let ((__tmp263294
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field252422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp263294)))
                                                 (__tmp263290
                                                  (let ((__tmp263291
                                                         (let ((__tmp263292
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self251728_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp263292))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp263291 '()))))
                                             (declare (not safe))
                                             (cons __tmp263293 __tmp263290))))
                                      (declare (not safe))
                                      (cons __tmp263295 __tmp263289))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp263288))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp263287 _stx251727_))))
                  (___kont262399262400_
                   (lambda (_L252262_ _L252263_ _L252264_ _L252265_)
                     (let ((_$field252300_
                            (let ((__tmp263297
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L252263_))))
                              (declare (not safe))
                              (table-ref _slots251731_ __tmp263297)))
                           (_expr252301_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L252262_
                               _self251728_
                               _$t251729_
                               _methods251730_
                               _slots251731_
                               _class-check251732_
                               _struct-check251733_
                               _struct-assert251734_))))
                       (let ((__tmp263298
                              (let ((__tmp263299
                                     (let ((__tmp263307
                                            (let ((__tmp263308
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251729_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263308)))
                                           (__tmp263300
                                            (let ((__tmp263305
                                                   (let ((__tmp263306
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263306)))
                                                  (__tmp263301
                                                   (let ((__tmp263303
                                                          (let ((__tmp263304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251728_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263304)))
                 (__tmp263302
                  (let () (declare (not safe)) (cons _expr252301_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263303
                                                           __tmp263302))))
                                              (declare (not safe))
                                              (cons __tmp263305 __tmp263301))))
                                       (declare (not safe))
                                       (cons __tmp263307 __tmp263300))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp263299))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263298 _stx251727_)))))
                  (___kont262401262402_
                   (lambda (_L252141_ _L252142_)
                     (let* ((_slot252164_
                             (##structure-ref
                              (let ((__tmp263309
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L252142_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp263309))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field252166_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots251731_ _slot252164_))))
                       (let ((__tmp263310
                              (let ((__tmp263311
                                     (let ((__tmp263318
                                            (let ((__tmp263319
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251729_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263319)))
                                           (__tmp263312
                                            (let ((__tmp263316
                                                   (let ((__tmp263317
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263317)))
                                                  (__tmp263313
                                                   (let ((__tmp263314
                                                          (let ((__tmp263315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251728_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263314 '()))))
                                              (declare (not safe))
                                              (cons __tmp263316 __tmp263313))))
                                       (declare (not safe))
                                       (cons __tmp263318 __tmp263312))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp263311))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263310 _stx251727_)))))
                  (___kont262403262404_
                   (lambda (_L252042_ _L252043_ _L252044_)
                     (let* ((_slot252073_
                             (##structure-ref
                              (let ((__tmp263320
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L252044_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp263320))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field252075_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots251731_ _slot252073_)))
                            (_expr252077_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L252042_
                                _self251728_
                                _$t251729_
                                _methods251730_
                                _slots251731_
                                _class-check251732_
                                _struct-check251733_
                                _struct-assert251734_))))
                       (let ((__tmp263321
                              (let ((__tmp263322
                                     (let ((__tmp263330
                                            (let ((__tmp263331
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t251729_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp263331)))
                                           (__tmp263323
                                            (let ((__tmp263328
                                                   (let ((__tmp263329
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field252075_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp263329)))
                                                  (__tmp263324
                                                   (let ((__tmp263326
                                                          (let ((__tmp263327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self251728_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp263327)))
                 (__tmp263325
                  (let () (declare (not safe)) (cons _expr252077_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp263326
                                                           __tmp263325))))
                                              (declare (not safe))
                                              (cons __tmp263328 __tmp263324))))
                                       (declare (not safe))
                                       (cons __tmp263330 __tmp263323))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp263322))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp263321 _stx251727_)))))
                  (___kont262405262406_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx251727_
                        _self251728_
                        _$t251729_
                        _methods251730_
                        _slots251731_
                        _class-check251732_
                        _struct-check251733_
                        _struct-assert251734_)))))
              (let* ((___match262886262887_
                      (lambda (_e251940251978_
                               _hd251939251981_
                               _tl251938251983_
                               _e251943251986_
                               _hd251942251989_
                               _tl251941251991_
                               _e251946251994_
                               _hd251945251997_
                               _tl251944251999_
                               _e251949252002_
                               _hd251948252005_
                               _tl251947252007_
                               _e251952252010_
                               _hd251951252013_
                               _tl251950252015_
                               _e251955252018_
                               _hd251954252021_
                               _tl251953252023_
                               _e251958252026_
                               _hd251957252029_
                               _tl251956252031_
                               _e251961252034_
                               _hd251960252037_
                               _tl251959252039_)
                        (let ((_L252042_ _hd251960252037_)
                              (_L252043_ _hd251957252029_)
                              (_L252044_ _hd251948252005_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252043_
                                      _self251728_))
                                   (let ((__tmp263332
                                          (let ((__tmp263333
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L252044_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp263333))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp263332
                                      'gxc#!mutator::t)))
                              (___kont262403262404_
                               _L252042_
                               _L252043_
                               _L252044_)
                              (___kont262405262406_)))))
                     (___match262884262885_
                      (lambda (_e251940251978_
                               _hd251939251981_
                               _tl251938251983_
                               _e251943251986_
                               _hd251942251989_
                               _tl251941251991_
                               _e251946251994_
                               _hd251945251997_
                               _tl251944251999_
                               _e251949252002_
                               _hd251948252005_
                               _tl251947252007_
                               _e251952252010_
                               _hd251951252013_
                               _tl251950252015_
                               _e251955252018_
                               _hd251954252021_
                               _tl251953252023_
                               _e251958252026_
                               _hd251957252029_
                               _tl251956252031_
                               _e251961252034_
                               _hd251960252037_
                               _tl251959252039_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251959252039_))
                            (___match262886262887_
                             _e251940251978_
                             _hd251939251981_
                             _tl251938251983_
                             _e251943251986_
                             _hd251942251989_
                             _tl251941251991_
                             _e251946251994_
                             _hd251945251997_
                             _tl251944251999_
                             _e251949252002_
                             _hd251948252005_
                             _tl251947252007_
                             _e251952252010_
                             _hd251951252013_
                             _tl251950252015_
                             _e251955252018_
                             _hd251954252021_
                             _tl251953252023_
                             _e251958252026_
                             _hd251957252029_
                             _tl251956252031_
                             _e251961252034_
                             _hd251960252037_
                             _tl251959252039_)
                            (___kont262405262406_))))
                     (___match262878262879_
                      (lambda (_e251940251978_
                               _hd251939251981_
                               _tl251938251983_
                               _e251943251986_
                               _hd251942251989_
                               _tl251941251991_
                               _e251946251994_
                               _hd251945251997_
                               _tl251944251999_
                               _e251949252002_
                               _hd251948252005_
                               _tl251947252007_
                               _e251952252010_
                               _hd251951252013_
                               _tl251950252015_
                               _e251955252018_
                               _hd251954252021_
                               _tl251953252023_
                               _e251958252026_
                               _hd251957252029_
                               _tl251956252031_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251950252015_))
                            (let ((_e251961252034_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251950252015_))))
                              (let ((_tl251959252039_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251961252034_)))
                                    (_hd251960252037_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251961252034_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251959252039_))
                                    (___match262886262887_
                                     _e251940251978_
                                     _hd251939251981_
                                     _tl251938251983_
                                     _e251943251986_
                                     _hd251942251989_
                                     _tl251941251991_
                                     _e251946251994_
                                     _hd251945251997_
                                     _tl251944251999_
                                     _e251949252002_
                                     _hd251948252005_
                                     _tl251947252007_
                                     _e251952252010_
                                     _hd251951252013_
                                     _tl251950252015_
                                     _e251955252018_
                                     _hd251954252021_
                                     _tl251953252023_
                                     _e251958252026_
                                     _hd251957252029_
                                     _tl251956252031_
                                     _e251961252034_
                                     _hd251960252037_
                                     _tl251959252039_)
                                    (___kont262405262406_))))
                            (___kont262405262406_))))
                     (___match262824262825_
                      (lambda (_e251916252085_
                               _hd251915252088_
                               _tl251914252090_
                               _e251919252093_
                               _hd251918252096_
                               _tl251917252098_
                               _e251922252101_
                               _hd251921252104_
                               _tl251920252106_
                               _e251925252109_
                               _hd251924252112_
                               _tl251923252114_
                               _e251928252117_
                               _hd251927252120_
                               _tl251926252122_
                               _e251931252125_
                               _hd251930252128_
                               _tl251929252130_
                               _e251934252133_
                               _hd251933252136_
                               _tl251932252138_)
                        (let ((_L252141_ _hd251933252136_)
                              (_L252142_ _hd251924252112_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252141_
                                      _self251728_))
                                   (let ((__tmp263334
                                          (let ((__tmp263335
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L252142_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp263335))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp263334
                                      'gxc#!accessor::t)))
                              (___kont262401262402_ _L252141_ _L252142_)
                              (___kont262405262406_)))))
                     (___match262822262823_
                      (lambda (_e251916252085_
                               _hd251915252088_
                               _tl251914252090_
                               _e251919252093_
                               _hd251918252096_
                               _tl251917252098_
                               _e251922252101_
                               _hd251921252104_
                               _tl251920252106_
                               _e251925252109_
                               _hd251924252112_
                               _tl251923252114_
                               _e251928252117_
                               _hd251927252120_
                               _tl251926252122_
                               _e251931252125_
                               _hd251930252128_
                               _tl251929252130_
                               _e251934252133_
                               _hd251933252136_
                               _tl251932252138_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251926252122_))
                            (___match262824262825_
                             _e251916252085_
                             _hd251915252088_
                             _tl251914252090_
                             _e251919252093_
                             _hd251918252096_
                             _tl251917252098_
                             _e251922252101_
                             _hd251921252104_
                             _tl251920252106_
                             _e251925252109_
                             _hd251924252112_
                             _tl251923252114_
                             _e251928252117_
                             _hd251927252120_
                             _tl251926252122_
                             _e251931252125_
                             _hd251930252128_
                             _tl251929252130_
                             _e251934252133_
                             _hd251933252136_
                             _tl251932252138_)
                            (___match262878262879_
                             _e251916252085_
                             _hd251915252088_
                             _tl251914252090_
                             _e251919252093_
                             _hd251918252096_
                             _tl251917252098_
                             _e251922252101_
                             _hd251921252104_
                             _tl251920252106_
                             _e251925252109_
                             _hd251924252112_
                             _tl251923252114_
                             _e251928252117_
                             _hd251927252120_
                             _tl251926252122_
                             _e251931252125_
                             _hd251930252128_
                             _tl251929252130_
                             _e251934252133_
                             _hd251933252136_
                             _tl251932252138_))))
                     (___match262768262769_
                      (lambda (_e251881252174_
                               _hd251880252177_
                               _tl251879252179_
                               _e251884252182_
                               _hd251883252185_
                               _tl251882252187_
                               _e251887252190_
                               _hd251886252193_
                               _tl251885252195_
                               _e251890252198_
                               _hd251889252201_
                               _tl251888252203_
                               _e251893252206_
                               _hd251892252209_
                               _tl251891252211_
                               _e251896252214_
                               _hd251895252217_
                               _tl251894252219_
                               _e251899252222_
                               _hd251898252225_
                               _tl251897252227_
                               _e251902252230_
                               _hd251901252233_
                               _tl251900252235_
                               _e251905252238_
                               _hd251904252241_
                               _tl251903252243_
                               _e251908252246_
                               _hd251907252249_
                               _tl251906252251_
                               _e251911252254_
                               _hd251910252257_
                               _tl251909252259_)
                        (let ((_L252262_ _hd251910252257_)
                              (_L252263_ _hd251907252249_)
                              (_L252264_ _hd251898252225_)
                              (_L252265_ _hd251889252201_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252265_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252265_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252264_
                                      _self251728_)))
                              (___kont262399262400_
                               _L252262_
                               _L252263_
                               _L252264_
                               _L252265_)
                              (___kont262405262406_)))))
                     (___match262760262761_
                      (lambda (_e251881252174_
                               _hd251880252177_
                               _tl251879252179_
                               _e251884252182_
                               _hd251883252185_
                               _tl251882252187_
                               _e251887252190_
                               _hd251886252193_
                               _tl251885252195_
                               _e251890252198_
                               _hd251889252201_
                               _tl251888252203_
                               _e251893252206_
                               _hd251892252209_
                               _tl251891252211_
                               _e251896252214_
                               _hd251895252217_
                               _tl251894252219_
                               _e251899252222_
                               _hd251898252225_
                               _tl251897252227_
                               _e251902252230_
                               _hd251901252233_
                               _tl251900252235_
                               _e251905252238_
                               _hd251904252241_
                               _tl251903252243_
                               _e251908252246_
                               _hd251907252249_
                               _tl251906252251_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251900252235_))
                            (let ((_e251911252254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251900252235_))))
                              (let ((_tl251909252259_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251911252254_)))
                                    (_hd251910252257_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251911252254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251909252259_))
                                    (___match262768262769_
                                     _e251881252174_
                                     _hd251880252177_
                                     _tl251879252179_
                                     _e251884252182_
                                     _hd251883252185_
                                     _tl251882252187_
                                     _e251887252190_
                                     _hd251886252193_
                                     _tl251885252195_
                                     _e251890252198_
                                     _hd251889252201_
                                     _tl251888252203_
                                     _e251893252206_
                                     _hd251892252209_
                                     _tl251891252211_
                                     _e251896252214_
                                     _hd251895252217_
                                     _tl251894252219_
                                     _e251899252222_
                                     _hd251898252225_
                                     _tl251897252227_
                                     _e251902252230_
                                     _hd251901252233_
                                     _tl251900252235_
                                     _e251905252238_
                                     _hd251904252241_
                                     _tl251903252243_
                                     _e251908252246_
                                     _hd251907252249_
                                     _tl251906252251_
                                     _e251911252254_
                                     _hd251910252257_
                                     _tl251909252259_)
                                    (___kont262405262406_))))
                            (___match262884262885_
                             _e251881252174_
                             _hd251880252177_
                             _tl251879252179_
                             _e251884252182_
                             _hd251883252185_
                             _tl251882252187_
                             _e251887252190_
                             _hd251886252193_
                             _tl251885252195_
                             _e251890252198_
                             _hd251889252201_
                             _tl251888252203_
                             _e251893252206_
                             _hd251892252209_
                             _tl251891252211_
                             _e251896252214_
                             _hd251895252217_
                             _tl251894252219_
                             _e251899252222_
                             _hd251898252225_
                             _tl251897252227_
                             _e251902252230_
                             _hd251901252233_
                             _tl251900252235_))))
                     (___match262682262683_
                      (lambda (_e251847252308_
                               _hd251846252311_
                               _tl251845252313_
                               _e251850252316_
                               _hd251849252319_
                               _tl251848252321_
                               _e251853252324_
                               _hd251852252327_
                               _tl251851252329_
                               _e251856252332_
                               _hd251855252335_
                               _tl251854252337_
                               _e251859252340_
                               _hd251858252343_
                               _tl251857252345_
                               _e251862252348_
                               _hd251861252351_
                               _tl251860252353_
                               _e251865252356_
                               _hd251864252359_
                               _tl251863252361_
                               _e251868252364_
                               _hd251867252367_
                               _tl251866252369_
                               _e251871252372_
                               _hd251870252375_
                               _tl251869252377_
                               _e251874252380_
                               _hd251873252383_
                               _tl251872252385_)
                        (let ((_L252388_ _hd251873252383_)
                              (_L252389_ _hd251864252359_)
                              (_L252390_ _hd251855252335_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252390_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L252390_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L252389_
                                      _self251728_)))
                              (___kont262397262398_
                               _L252388_
                               _L252389_
                               _L252390_)
                              (___match262886262887_
                               _e251847252308_
                               _hd251846252311_
                               _tl251845252313_
                               _e251850252316_
                               _hd251849252319_
                               _tl251848252321_
                               _e251853252324_
                               _hd251852252327_
                               _tl251851252329_
                               _e251856252332_
                               _hd251855252335_
                               _tl251854252337_
                               _e251859252340_
                               _hd251858252343_
                               _tl251857252345_
                               _e251862252348_
                               _hd251861252351_
                               _tl251860252353_
                               _e251865252356_
                               _hd251864252359_
                               _tl251863252361_
                               _e251868252364_
                               _hd251867252367_
                               _tl251866252369_)))))
                     (___match262680262681_
                      (lambda (_e251847252308_
                               _hd251846252311_
                               _tl251845252313_
                               _e251850252316_
                               _hd251849252319_
                               _tl251848252321_
                               _e251853252324_
                               _hd251852252327_
                               _tl251851252329_
                               _e251856252332_
                               _hd251855252335_
                               _tl251854252337_
                               _e251859252340_
                               _hd251858252343_
                               _tl251857252345_
                               _e251862252348_
                               _hd251861252351_
                               _tl251860252353_
                               _e251865252356_
                               _hd251864252359_
                               _tl251863252361_
                               _e251868252364_
                               _hd251867252367_
                               _tl251866252369_
                               _e251871252372_
                               _hd251870252375_
                               _tl251869252377_
                               _e251874252380_
                               _hd251873252383_
                               _tl251872252385_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl251866252369_))
                            (___match262682262683_
                             _e251847252308_
                             _hd251846252311_
                             _tl251845252313_
                             _e251850252316_
                             _hd251849252319_
                             _tl251848252321_
                             _e251853252324_
                             _hd251852252327_
                             _tl251851252329_
                             _e251856252332_
                             _hd251855252335_
                             _tl251854252337_
                             _e251859252340_
                             _hd251858252343_
                             _tl251857252345_
                             _e251862252348_
                             _hd251861252351_
                             _tl251860252353_
                             _e251865252356_
                             _hd251864252359_
                             _tl251863252361_
                             _e251868252364_
                             _hd251867252367_
                             _tl251866252369_
                             _e251871252372_
                             _hd251870252375_
                             _tl251869252377_
                             _e251874252380_
                             _hd251873252383_
                             _tl251872252385_)
                            (___match262760262761_
                             _e251847252308_
                             _hd251846252311_
                             _tl251845252313_
                             _e251850252316_
                             _hd251849252319_
                             _tl251848252321_
                             _e251853252324_
                             _hd251852252327_
                             _tl251851252329_
                             _e251856252332_
                             _hd251855252335_
                             _tl251854252337_
                             _e251859252340_
                             _hd251858252343_
                             _tl251857252345_
                             _e251862252348_
                             _hd251861252351_
                             _tl251860252353_
                             _e251865252356_
                             _hd251864252359_
                             _tl251863252361_
                             _e251868252364_
                             _hd251867252367_
                             _tl251866252369_
                             _e251871252372_
                             _hd251870252375_
                             _tl251869252377_
                             _e251874252380_
                             _hd251873252383_
                             _tl251872252385_))))
                     (___match262670262671_
                      (lambda (_e251847252308_
                               _hd251846252311_
                               _tl251845252313_
                               _e251850252316_
                               _hd251849252319_
                               _tl251848252321_
                               _e251853252324_
                               _hd251852252327_
                               _tl251851252329_
                               _e251856252332_
                               _hd251855252335_
                               _tl251854252337_
                               _e251859252340_
                               _hd251858252343_
                               _tl251857252345_
                               _e251862252348_
                               _hd251861252351_
                               _tl251860252353_
                               _e251865252356_
                               _hd251864252359_
                               _tl251863252361_
                               _e251868252364_
                               _hd251867252367_
                               _tl251866252369_
                               _e251871252372_
                               _hd251870252375_
                               _tl251869252377_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd251870252375_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl251869252377_))
                                (let ((_e251874252380_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl251869252377_))))
                                  (let ((_tl251872252385_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251874252380_)))
                                        (_hd251873252383_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251874252380_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl251872252385_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl251866252369_))
                                            (___match262682262683_
                                             _e251847252308_
                                             _hd251846252311_
                                             _tl251845252313_
                                             _e251850252316_
                                             _hd251849252319_
                                             _tl251848252321_
                                             _e251853252324_
                                             _hd251852252327_
                                             _tl251851252329_
                                             _e251856252332_
                                             _hd251855252335_
                                             _tl251854252337_
                                             _e251859252340_
                                             _hd251858252343_
                                             _tl251857252345_
                                             _e251862252348_
                                             _hd251861252351_
                                             _tl251860252353_
                                             _e251865252356_
                                             _hd251864252359_
                                             _tl251863252361_
                                             _e251868252364_
                                             _hd251867252367_
                                             _tl251866252369_
                                             _e251871252372_
                                             _hd251870252375_
                                             _tl251869252377_
                                             _e251874252380_
                                             _hd251873252383_
                                             _tl251872252385_)
                                            (___match262760262761_
                                             _e251847252308_
                                             _hd251846252311_
                                             _tl251845252313_
                                             _e251850252316_
                                             _hd251849252319_
                                             _tl251848252321_
                                             _e251853252324_
                                             _hd251852252327_
                                             _tl251851252329_
                                             _e251856252332_
                                             _hd251855252335_
                                             _tl251854252337_
                                             _e251859252340_
                                             _hd251858252343_
                                             _tl251857252345_
                                             _e251862252348_
                                             _hd251861252351_
                                             _tl251860252353_
                                             _e251865252356_
                                             _hd251864252359_
                                             _tl251863252361_
                                             _e251868252364_
                                             _hd251867252367_
                                             _tl251866252369_
                                             _e251871252372_
                                             _hd251870252375_
                                             _tl251869252377_
                                             _e251874252380_
                                             _hd251873252383_
                                             _tl251872252385_))
                                        (___match262884262885_
                                         _e251847252308_
                                         _hd251846252311_
                                         _tl251845252313_
                                         _e251850252316_
                                         _hd251849252319_
                                         _tl251848252321_
                                         _e251853252324_
                                         _hd251852252327_
                                         _tl251851252329_
                                         _e251856252332_
                                         _hd251855252335_
                                         _tl251854252337_
                                         _e251859252340_
                                         _hd251858252343_
                                         _tl251857252345_
                                         _e251862252348_
                                         _hd251861252351_
                                         _tl251860252353_
                                         _e251865252356_
                                         _hd251864252359_
                                         _tl251863252361_
                                         _e251868252364_
                                         _hd251867252367_
                                         _tl251866252369_))))
                                (___match262884262885_
                                 _e251847252308_
                                 _hd251846252311_
                                 _tl251845252313_
                                 _e251850252316_
                                 _hd251849252319_
                                 _tl251848252321_
                                 _e251853252324_
                                 _hd251852252327_
                                 _tl251851252329_
                                 _e251856252332_
                                 _hd251855252335_
                                 _tl251854252337_
                                 _e251859252340_
                                 _hd251858252343_
                                 _tl251857252345_
                                 _e251862252348_
                                 _hd251861252351_
                                 _tl251860252353_
                                 _e251865252356_
                                 _hd251864252359_
                                 _tl251863252361_
                                 _e251868252364_
                                 _hd251867252367_
                                 _tl251866252369_))
                            (___match262884262885_
                             _e251847252308_
                             _hd251846252311_
                             _tl251845252313_
                             _e251850252316_
                             _hd251849252319_
                             _tl251848252321_
                             _e251853252324_
                             _hd251852252327_
                             _tl251851252329_
                             _e251856252332_
                             _hd251855252335_
                             _tl251854252337_
                             _e251859252340_
                             _hd251858252343_
                             _tl251857252345_
                             _e251862252348_
                             _hd251861252351_
                             _tl251860252353_
                             _e251865252356_
                             _hd251864252359_
                             _tl251863252361_
                             _e251868252364_
                             _hd251867252367_
                             _tl251866252369_))))
                     (___match262602262603_
                      (lambda (_e251796252429_
                               _hd251795252432_
                               _tl251794252434_
                               _e251799252437_
                               _hd251798252440_
                               _tl251797252442_
                               _e251802252445_
                               _hd251801252448_
                               _tl251800252450_
                               _e251805252453_
                               _hd251804252456_
                               _tl251803252458_
                               _e251808252461_
                               _hd251807252464_
                               _tl251806252466_
                               _e251811252469_
                               _hd251810252472_
                               _tl251809252474_
                               _e251814252477_
                               _hd251813252480_
                               _tl251812252482_
                               _e251817252485_
                               _hd251816252488_
                               _tl251815252490_
                               _e251820252493_
                               _hd251819252496_
                               _tl251818252498_
                               _e251823252501_
                               _hd251822252504_
                               _tl251821252506_
                               _e251826252509_
                               _hd251825252512_
                               _tl251824252514_
                               _e251829252517_
                               _hd251828252520_
                               _tl251827252522_
                               _e251832252525_
                               _hd251831252528_
                               _tl251830252530_
                               ___splice262395262396_
                               _target251833252533_
                               _tl251835252535_)
                        (letrec ((_loop251836252538_
                                  (lambda (_hd251834252541_ _args251840252543_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd251834252541_))
                                        (let ((_e251837252546_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd251834252541_))))
                                          (let ((_lp-tl251839252551_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e251837252546_)))
                                                (_lp-hd251838252549_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e251837252546_))))
                                            (let ((__tmp263336
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd251838252549_
                                                           _args251840252543_))))
                                              (declare (not safe))
                                              (_loop251836252538_
                                               _lp-tl251839252551_
                                               __tmp263336))))
                                        (let ((_args251841252554_
                                               (reverse _args251840252543_)))
                                          (let ((_L252557_ _args251841252554_)
                                                (_L252558_ _hd251831252528_)
                                                (_L252559_ _hd251822252504_)
                                                (_L252560_ _hd251813252480_)
                                                (_L252561_ _hd251804252456_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252561_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252560_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L252559_
                                                        _self251728_)))
                                                (___kont262393262394_
                                                 _L252557_
                                                 _L252558_
                                                 _L252559_
                                                 _L252560_
                                                 _L252561_)
                                                (___kont262405262406_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop251836252538_ _target251833252533_ '())))))
                     (___match262560262561_
                      (lambda (_e251796252429_
                               _hd251795252432_
                               _tl251794252434_
                               _e251799252437_
                               _hd251798252440_
                               _tl251797252442_
                               _e251802252445_
                               _hd251801252448_
                               _tl251800252450_
                               _e251805252453_
                               _hd251804252456_
                               _tl251803252458_
                               _e251808252461_
                               _hd251807252464_
                               _tl251806252466_
                               _e251811252469_
                               _hd251810252472_
                               _tl251809252474_
                               _e251814252477_
                               _hd251813252480_
                               _tl251812252482_
                               _e251817252485_
                               _hd251816252488_
                               _tl251815252490_
                               _e251820252493_
                               _hd251819252496_
                               _tl251818252498_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd251819252496_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl251818252498_))
                                (let ((_e251823252501_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl251818252498_))))
                                  (let ((_tl251821252506_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251823252501_)))
                                        (_hd251822252504_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251823252501_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl251821252506_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl251815252490_))
                                            (let ((_e251826252509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl251815252490_))))
                                              (let ((_tl251824252514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e251826252509_)))
                                                    (_hd251825252512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e251826252509_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd251825252512_))
                                                    (let ((_e251829252517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd251825252512_))))
                                                      (let ((_tl251827252522_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e251829252517_)))
                    (_hd251828252520_
                     (let () (declare (not safe)) (##car _e251829252517_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd251828252520_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd251828252520_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251827252522_))
                            (let ((_e251832252525_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251827252522_))))
                              (let ((_tl251830252530_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251832252525_)))
                                    (_hd251831252528_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251832252525_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl251830252530_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl251824252514_))
                                        (let ((___splice262395262396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl251824252514_
                                                  '0))))
                                          (let ((_tl251835252535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice262395262396_
                                                    '1)))
                                                (_target251833252533_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice262395262396_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl251835252535_))
                                                (___match262602262603_
                                                 _e251796252429_
                                                 _hd251795252432_
                                                 _tl251794252434_
                                                 _e251799252437_
                                                 _hd251798252440_
                                                 _tl251797252442_
                                                 _e251802252445_
                                                 _hd251801252448_
                                                 _tl251800252450_
                                                 _e251805252453_
                                                 _hd251804252456_
                                                 _tl251803252458_
                                                 _e251808252461_
                                                 _hd251807252464_
                                                 _tl251806252466_
                                                 _e251811252469_
                                                 _hd251810252472_
                                                 _tl251809252474_
                                                 _e251814252477_
                                                 _hd251813252480_
                                                 _tl251812252482_
                                                 _e251817252485_
                                                 _hd251816252488_
                                                 _tl251815252490_
                                                 _e251820252493_
                                                 _hd251819252496_
                                                 _tl251818252498_
                                                 _e251823252501_
                                                 _hd251822252504_
                                                 _tl251821252506_
                                                 _e251826252509_
                                                 _hd251825252512_
                                                 _tl251824252514_
                                                 _e251829252517_
                                                 _hd251828252520_
                                                 _tl251827252522_
                                                 _e251832252525_
                                                 _hd251831252528_
                                                 _tl251830252530_
                                                 ___splice262395262396_
                                                 _target251833252533_
                                                 _tl251835252535_)
                                                (___kont262405262406_))))
                                        (___kont262405262406_))
                                    (___kont262405262406_))))
                            (___kont262405262406_))
                        (___kont262405262406_))
                    (___kont262405262406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont262405262406_))))
                                            (___match262884262885_
                                             _e251796252429_
                                             _hd251795252432_
                                             _tl251794252434_
                                             _e251799252437_
                                             _hd251798252440_
                                             _tl251797252442_
                                             _e251802252445_
                                             _hd251801252448_
                                             _tl251800252450_
                                             _e251805252453_
                                             _hd251804252456_
                                             _tl251803252458_
                                             _e251808252461_
                                             _hd251807252464_
                                             _tl251806252466_
                                             _e251811252469_
                                             _hd251810252472_
                                             _tl251809252474_
                                             _e251814252477_
                                             _hd251813252480_
                                             _tl251812252482_
                                             _e251817252485_
                                             _hd251816252488_
                                             _tl251815252490_))
                                        (___match262884262885_
                                         _e251796252429_
                                         _hd251795252432_
                                         _tl251794252434_
                                         _e251799252437_
                                         _hd251798252440_
                                         _tl251797252442_
                                         _e251802252445_
                                         _hd251801252448_
                                         _tl251800252450_
                                         _e251805252453_
                                         _hd251804252456_
                                         _tl251803252458_
                                         _e251808252461_
                                         _hd251807252464_
                                         _tl251806252466_
                                         _e251811252469_
                                         _hd251810252472_
                                         _tl251809252474_
                                         _e251814252477_
                                         _hd251813252480_
                                         _tl251812252482_
                                         _e251817252485_
                                         _hd251816252488_
                                         _tl251815252490_))))
                                (___match262884262885_
                                 _e251796252429_
                                 _hd251795252432_
                                 _tl251794252434_
                                 _e251799252437_
                                 _hd251798252440_
                                 _tl251797252442_
                                 _e251802252445_
                                 _hd251801252448_
                                 _tl251800252450_
                                 _e251805252453_
                                 _hd251804252456_
                                 _tl251803252458_
                                 _e251808252461_
                                 _hd251807252464_
                                 _tl251806252466_
                                 _e251811252469_
                                 _hd251810252472_
                                 _tl251809252474_
                                 _e251814252477_
                                 _hd251813252480_
                                 _tl251812252482_
                                 _e251817252485_
                                 _hd251816252488_
                                 _tl251815252490_))
                            (___match262670262671_
                             _e251796252429_
                             _hd251795252432_
                             _tl251794252434_
                             _e251799252437_
                             _hd251798252440_
                             _tl251797252442_
                             _e251802252445_
                             _hd251801252448_
                             _tl251800252450_
                             _e251805252453_
                             _hd251804252456_
                             _tl251803252458_
                             _e251808252461_
                             _hd251807252464_
                             _tl251806252466_
                             _e251811252469_
                             _hd251810252472_
                             _tl251809252474_
                             _e251814252477_
                             _hd251813252480_
                             _tl251812252482_
                             _e251817252485_
                             _hd251816252488_
                             _tl251815252490_
                             _e251820252493_
                             _hd251819252496_
                             _tl251818252498_))))
                     (___match262492262493_
                      (lambda (_e251752252621_
                               _hd251751252624_
                               _tl251750252626_
                               _e251755252629_
                               _hd251754252632_
                               _tl251753252634_
                               _e251758252637_
                               _hd251757252640_
                               _tl251756252642_
                               _e251761252645_
                               _hd251760252648_
                               _tl251759252650_
                               _e251764252653_
                               _hd251763252656_
                               _tl251762252658_
                               _e251767252661_
                               _hd251766252664_
                               _tl251765252666_
                               _e251770252669_
                               _hd251769252672_
                               _tl251768252674_
                               _e251773252677_
                               _hd251772252680_
                               _tl251771252682_
                               _e251776252685_
                               _hd251775252688_
                               _tl251774252690_
                               _e251779252693_
                               _hd251778252696_
                               _tl251777252698_
                               ___splice262391262392_
                               _target251780252701_
                               _tl251782252703_)
                        (letrec ((_loop251783252706_
                                  (lambda (_hd251781252709_ _args251787252711_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd251781252709_))
                                        (let ((_e251784252714_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd251781252709_))))
                                          (let ((_lp-tl251786252719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e251784252714_)))
                                                (_lp-hd251785252717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e251784252714_))))
                                            (let ((__tmp263337
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd251785252717_
                                                           _args251787252711_))))
                                              (declare (not safe))
                                              (_loop251783252706_
                                               _lp-tl251786252719_
                                               __tmp263337))))
                                        (let ((_args251788252722_
                                               (reverse _args251787252711_)))
                                          (let ((_L252725_ _args251788252722_)
                                                (_L252726_ _hd251778252696_)
                                                (_L252727_ _hd251769252672_)
                                                (_L252728_ _hd251760252648_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L252728_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L252727_
                                                        _self251728_)))
                                                (___kont262389262390_
                                                 _L252725_
                                                 _L252726_
                                                 _L252727_
                                                 _L252728_)
                                                (___match262680262681_
                                                 _e251752252621_
                                                 _hd251751252624_
                                                 _tl251750252626_
                                                 _e251755252629_
                                                 _hd251754252632_
                                                 _tl251753252634_
                                                 _e251758252637_
                                                 _hd251757252640_
                                                 _tl251756252642_
                                                 _e251761252645_
                                                 _hd251760252648_
                                                 _tl251759252650_
                                                 _e251764252653_
                                                 _hd251763252656_
                                                 _tl251762252658_
                                                 _e251767252661_
                                                 _hd251766252664_
                                                 _tl251765252666_
                                                 _e251770252669_
                                                 _hd251769252672_
                                                 _tl251768252674_
                                                 _e251773252677_
                                                 _hd251772252680_
                                                 _tl251771252682_
                                                 _e251776252685_
                                                 _hd251775252688_
                                                 _tl251774252690_
                                                 _e251779252693_
                                                 _hd251778252696_
                                                 _tl251777252698_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop251783252706_ _target251780252701_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx262387262388_))
                    (let ((_e251752252621_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx262387262388_))))
                      (let ((_tl251750252626_
                             (let ()
                               (declare (not safe))
                               (##cdr _e251752252621_)))
                            (_hd251751252624_
                             (let ()
                               (declare (not safe))
                               (##car _e251752252621_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl251750252626_))
                            (let ((_e251755252629_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl251750252626_))))
                              (let ((_tl251753252634_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251755252629_)))
                                    (_hd251754252632_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251755252629_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd251754252632_))
                                    (let ((_e251758252637_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd251754252632_))))
                                      (let ((_tl251756252642_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e251758252637_)))
                                            (_hd251757252640_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e251758252637_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd251757252640_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd251757252640_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl251756252642_))
                                                    (let ((_e251761252645_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl251756252642_))))
                                                      (let ((_tl251759252650_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e251761252645_)))
                    (_hd251760252648_
                     (let () (declare (not safe)) (##car _e251761252645_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl251759252650_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl251753252634_))
                        (let ((_e251764252653_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl251753252634_))))
                          (let ((_tl251762252658_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e251764252653_)))
                                (_hd251763252656_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e251764252653_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd251763252656_))
                                (let ((_e251767252661_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd251763252656_))))
                                  (let ((_tl251765252666_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e251767252661_)))
                                        (_hd251766252664_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e251767252661_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd251766252664_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd251766252664_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl251765252666_))
                                                (let ((_e251770252669_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl251765252666_))))
                                                  (let ((_tl251768252674_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e251770252669_)))
                                                        (_hd251769252672_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e251770252669_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl251768252674_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl251762252658_))
                                                            (let ((_e251773252677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl251762252658_))))
                      (let ((_tl251771252682_
                             (let ()
                               (declare (not safe))
                               (##cdr _e251773252677_)))
                            (_hd251772252680_
                             (let ()
                               (declare (not safe))
                               (##car _e251773252677_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd251772252680_))
                            (let ((_e251776252685_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd251772252680_))))
                              (let ((_tl251774252690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e251776252685_)))
                                    (_hd251775252688_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e251776252685_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd251775252688_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd251775252688_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl251774252690_))
                                            (let ((_e251779252693_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl251774252690_))))
                                              (let ((_tl251777252698_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e251779252693_)))
                                                    (_hd251778252696_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e251779252693_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl251777252698_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl251771252682_))
                                                        (let ((___splice262391262392_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl251771252682_ '0))))
                  (let ((_tl251782252703_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice262391262392_ '1)))
                        (_target251780252701_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice262391262392_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl251782252703_))
                        (___match262492262493_
                         _e251752252621_
                         _hd251751252624_
                         _tl251750252626_
                         _e251755252629_
                         _hd251754252632_
                         _tl251753252634_
                         _e251758252637_
                         _hd251757252640_
                         _tl251756252642_
                         _e251761252645_
                         _hd251760252648_
                         _tl251759252650_
                         _e251764252653_
                         _hd251763252656_
                         _tl251762252658_
                         _e251767252661_
                         _hd251766252664_
                         _tl251765252666_
                         _e251770252669_
                         _hd251769252672_
                         _tl251768252674_
                         _e251773252677_
                         _hd251772252680_
                         _tl251771252682_
                         _e251776252685_
                         _hd251775252688_
                         _tl251774252690_
                         _e251779252693_
                         _hd251778252696_
                         _tl251777252698_
                         ___splice262391262392_
                         _target251780252701_
                         _tl251782252703_)
                        (___match262680262681_
                         _e251752252621_
                         _hd251751252624_
                         _tl251750252626_
                         _e251755252629_
                         _hd251754252632_
                         _tl251753252634_
                         _e251758252637_
                         _hd251757252640_
                         _tl251756252642_
                         _e251761252645_
                         _hd251760252648_
                         _tl251759252650_
                         _e251764252653_
                         _hd251763252656_
                         _tl251762252658_
                         _e251767252661_
                         _hd251766252664_
                         _tl251765252666_
                         _e251770252669_
                         _hd251769252672_
                         _tl251768252674_
                         _e251773252677_
                         _hd251772252680_
                         _tl251771252682_
                         _e251776252685_
                         _hd251775252688_
                         _tl251774252690_
                         _e251779252693_
                         _hd251778252696_
                         _tl251777252698_))))
                (___match262680262681_
                 _e251752252621_
                 _hd251751252624_
                 _tl251750252626_
                 _e251755252629_
                 _hd251754252632_
                 _tl251753252634_
                 _e251758252637_
                 _hd251757252640_
                 _tl251756252642_
                 _e251761252645_
                 _hd251760252648_
                 _tl251759252650_
                 _e251764252653_
                 _hd251763252656_
                 _tl251762252658_
                 _e251767252661_
                 _hd251766252664_
                 _tl251765252666_
                 _e251770252669_
                 _hd251769252672_
                 _tl251768252674_
                 _e251773252677_
                 _hd251772252680_
                 _tl251771252682_
                 _e251776252685_
                 _hd251775252688_
                 _tl251774252690_
                 _e251779252693_
                 _hd251778252696_
                 _tl251777252698_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match262884262885_
                                                     _e251752252621_
                                                     _hd251751252624_
                                                     _tl251750252626_
                                                     _e251755252629_
                                                     _hd251754252632_
                                                     _tl251753252634_
                                                     _e251758252637_
                                                     _hd251757252640_
                                                     _tl251756252642_
                                                     _e251761252645_
                                                     _hd251760252648_
                                                     _tl251759252650_
                                                     _e251764252653_
                                                     _hd251763252656_
                                                     _tl251762252658_
                                                     _e251767252661_
                                                     _hd251766252664_
                                                     _tl251765252666_
                                                     _e251770252669_
                                                     _hd251769252672_
                                                     _tl251768252674_
                                                     _e251773252677_
                                                     _hd251772252680_
                                                     _tl251771252682_))))
                                            (___match262884262885_
                                             _e251752252621_
                                             _hd251751252624_
                                             _tl251750252626_
                                             _e251755252629_
                                             _hd251754252632_
                                             _tl251753252634_
                                             _e251758252637_
                                             _hd251757252640_
                                             _tl251756252642_
                                             _e251761252645_
                                             _hd251760252648_
                                             _tl251759252650_
                                             _e251764252653_
                                             _hd251763252656_
                                             _tl251762252658_
                                             _e251767252661_
                                             _hd251766252664_
                                             _tl251765252666_
                                             _e251770252669_
                                             _hd251769252672_
                                             _tl251768252674_
                                             _e251773252677_
                                             _hd251772252680_
                                             _tl251771252682_))
                                        (___match262560262561_
                                         _e251752252621_
                                         _hd251751252624_
                                         _tl251750252626_
                                         _e251755252629_
                                         _hd251754252632_
                                         _tl251753252634_
                                         _e251758252637_
                                         _hd251757252640_
                                         _tl251756252642_
                                         _e251761252645_
                                         _hd251760252648_
                                         _tl251759252650_
                                         _e251764252653_
                                         _hd251763252656_
                                         _tl251762252658_
                                         _e251767252661_
                                         _hd251766252664_
                                         _tl251765252666_
                                         _e251770252669_
                                         _hd251769252672_
                                         _tl251768252674_
                                         _e251773252677_
                                         _hd251772252680_
                                         _tl251771252682_
                                         _e251776252685_
                                         _hd251775252688_
                                         _tl251774252690_))
                                    (___match262884262885_
                                     _e251752252621_
                                     _hd251751252624_
                                     _tl251750252626_
                                     _e251755252629_
                                     _hd251754252632_
                                     _tl251753252634_
                                     _e251758252637_
                                     _hd251757252640_
                                     _tl251756252642_
                                     _e251761252645_
                                     _hd251760252648_
                                     _tl251759252650_
                                     _e251764252653_
                                     _hd251763252656_
                                     _tl251762252658_
                                     _e251767252661_
                                     _hd251766252664_
                                     _tl251765252666_
                                     _e251770252669_
                                     _hd251769252672_
                                     _tl251768252674_
                                     _e251773252677_
                                     _hd251772252680_
                                     _tl251771252682_))))
                            (___match262884262885_
                             _e251752252621_
                             _hd251751252624_
                             _tl251750252626_
                             _e251755252629_
                             _hd251754252632_
                             _tl251753252634_
                             _e251758252637_
                             _hd251757252640_
                             _tl251756252642_
                             _e251761252645_
                             _hd251760252648_
                             _tl251759252650_
                             _e251764252653_
                             _hd251763252656_
                             _tl251762252658_
                             _e251767252661_
                             _hd251766252664_
                             _tl251765252666_
                             _e251770252669_
                             _hd251769252672_
                             _tl251768252674_
                             _e251773252677_
                             _hd251772252680_
                             _tl251771252682_))))
                    (___match262822262823_
                     _e251752252621_
                     _hd251751252624_
                     _tl251750252626_
                     _e251755252629_
                     _hd251754252632_
                     _tl251753252634_
                     _e251758252637_
                     _hd251757252640_
                     _tl251756252642_
                     _e251761252645_
                     _hd251760252648_
                     _tl251759252650_
                     _e251764252653_
                     _hd251763252656_
                     _tl251762252658_
                     _e251767252661_
                     _hd251766252664_
                     _tl251765252666_
                     _e251770252669_
                     _hd251769252672_
                     _tl251768252674_))
                (___kont262405262406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont262405262406_))
                                            (___kont262405262406_))
                                        (___kont262405262406_))))
                                (___kont262405262406_))))
                        (___kont262405262406_))
                    (___kont262405262406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont262405262406_))
                                                (___kont262405262406_))
                                            (___kont262405262406_))))
                                    (___kont262405262406_))))
                            (___kont262405262406_))))
                    (___kont262405262406_))))))))))
