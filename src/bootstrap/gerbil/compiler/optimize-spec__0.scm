(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1709111638)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl133760_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134888 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl133760_ __tmp134888))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133760_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133760_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133760_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133760_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl133760_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133743_ . _args133745_)
        (let ((__tmp134890
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133745_)
                     (gxc#compile-e__0 _stx133743_)
                     (let ((_arg1133750_ (car _args133745_))
                           (_rest133752_ (cdr _args133745_)))
                       (if (null? _rest133752_)
                           (gxc#compile-e__1 _stx133743_ _arg1133750_)
                           (let ((_arg2133755_ (car _rest133752_))
                                 (_rest133757_ (cdr _rest133752_)))
                             (if (null? _rest133757_)
                                 (gxc#compile-e__2
                                  _stx133743_
                                  _arg1133750_
                                  _arg2133755_)
                                 (apply gxc#compile-e
                                        _stx133743_
                                        _arg1133750_
                                        _arg2133755_
                                        _rest133757_))))))))
              (__tmp134889 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp134890
           gxc#current-compile-methods
           __tmp134889))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133740_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134891 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl133740_ __tmp134891))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133740_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133740_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl133740_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx133723_ . _args133725_)
        (let ((__tmp134893
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133725_)
                     (gxc#compile-e__0 _stx133723_)
                     (let ((_arg1133730_ (car _args133725_))
                           (_rest133732_ (cdr _args133725_)))
                       (if (null? _rest133732_)
                           (gxc#compile-e__1 _stx133723_ _arg1133730_)
                           (let ((_arg2133735_ (car _rest133732_))
                                 (_rest133737_ (cdr _rest133732_)))
                             (if (null? _rest133737_)
                                 (gxc#compile-e__2
                                  _stx133723_
                                  _arg1133730_
                                  _arg2133735_)
                                 (apply gxc#compile-e
                                        _stx133723_
                                        _arg1133730_
                                        _arg2133735_
                                        _rest133737_))))))))
              (__tmp134892 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134893
           gxc#current-compile-methods
           __tmp134892))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133720_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134894 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl133720_ __tmp134894))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133720_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133720_ '%#call gxc#subst-object-refs-call%))
           _tbl133720_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx133703_ . _args133705_)
        (let ((__tmp134896
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133705_)
                     (gxc#compile-e__0 _stx133703_)
                     (let ((_arg1133710_ (car _args133705_))
                           (_rest133712_ (cdr _args133705_)))
                       (if (null? _rest133712_)
                           (gxc#compile-e__1 _stx133703_ _arg1133710_)
                           (let ((_arg2133715_ (car _rest133712_))
                                 (_rest133717_ (cdr _rest133712_)))
                             (if (null? _rest133717_)
                                 (gxc#compile-e__2
                                  _stx133703_
                                  _arg1133710_
                                  _arg2133715_)
                                 (apply gxc#compile-e
                                        _stx133703_
                                        _arg1133710_
                                        _arg2133715_
                                        _rest133717_))))))))
              (__tmp134895 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134896
           gxc#current-compile-methods
           __tmp134895))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx130915_)
        (letrec ((_generate-method-bind130917_
                  (lambda (_$klass133696_
                           _$method-table133697_
                           _id133698_
                           _$id133699_)
                    (let ((_$tmp133701_
                           (let ((__tmp134897 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134897))))
                      (let ((__tmp134945
                             (let ()
                               (declare (not safe))
                               (cons _$id133699_ '())))
                            (__tmp134898
                             (let ((__tmp134899
                                    (let ((__tmp134900
                                           (let ((__tmp134943
                                                  (let ((__tmp134944
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134944)))
                                                 (__tmp134901
                                                  (let ((__tmp134902
                                                         (let ((__tmp134903
                                                                (let ((__tmp134904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134905
                                      (let ((__tmp134906
                                             (let ((__tmp134926
                                                    (let ((__tmp134927
                                                           (let ((__tmp134942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133701_ '())))
                         (__tmp134928
                          (let ((__tmp134929
                                 (let ((__tmp134930
                                        (let ((__tmp134940
                                               (let ((__tmp134941
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134941)))
                                              (__tmp134931
                                               (let ((__tmp134938
                                                      (let ((__tmp134939
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table133697_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134939)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134932
                                                      (let ((__tmp134936
                                                             (let ((__tmp134937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id133698_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134937)))
                    (__tmp134933
                     (let ((__tmp134934
                            (let ((__tmp134935
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134935))))
                       (declare (not safe))
                       (cons __tmp134934 '()))))
                (declare (not safe))
                (cons __tmp134936 __tmp134933))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134938
                                                       __tmp134932))))
                                          (declare (not safe))
                                          (cons __tmp134940 __tmp134931))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134930))))
                            (declare (not safe))
                            (cons __tmp134929 '()))))
                     (declare (not safe))
                     (cons __tmp134942 __tmp134928))))
              (declare (not safe))
              (cons __tmp134927 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134907
                                                    (let ((__tmp134908
                                                           (let ((__tmp134909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134924
                                 (let ((__tmp134925
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133701_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134925)))
                                (__tmp134910
                                 (let ((__tmp134922
                                        (let ((__tmp134923
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133701_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134923)))
                                       (__tmp134911
                                        (let ((__tmp134912
                                               (let ((__tmp134913
                                                      (let ((__tmp134920
                                                             (let ((__tmp134921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134921)))
                    (__tmp134914
                     (let ((__tmp134918
                            (let ((__tmp134919
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134919)))
                           (__tmp134915
                            (let ((__tmp134916
                                   (let ((__tmp134917
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133698_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134917))))
                              (declare (not safe))
                              (cons __tmp134916 '()))))
                       (declare (not safe))
                       (cons __tmp134918 __tmp134915))))
                (declare (not safe))
                (cons __tmp134920 __tmp134914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134913))))
                                          (declare (not safe))
                                          (cons __tmp134912 '()))))
                                   (declare (not safe))
                                   (cons __tmp134922 __tmp134911))))
                            (declare (not safe))
                            (cons __tmp134924 __tmp134910))))
                     (declare (not safe))
                     (cons '%#if __tmp134909))))
              (declare (not safe))
              (cons __tmp134908 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134926
                                                     __tmp134907))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134906))))
                                 (declare (not safe))
                                 (cons __tmp134905 '()))))
                          (declare (not safe))
                          (cons '() __tmp134904))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134902 '()))))
                                             (declare (not safe))
                                             (cons __tmp134943 __tmp134901))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134900))))
                               (declare (not safe))
                               (cons __tmp134899 '()))))
                        (declare (not safe))
                        (cons __tmp134945 __tmp134898)))))
                 (_generate-slot-bind130918_
                  (lambda (_$klass133690_ _id133691_ _$id133692_)
                    (let ((_$tmp133694_
                           (let ((__tmp134946 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134946))))
                      (let ((__tmp134983
                             (let ()
                               (declare (not safe))
                               (cons _$id133692_ '())))
                            (__tmp134947
                             (let ((__tmp134948
                                    (let ((__tmp134949
                                           (let ((__tmp134969
                                                  (let ((__tmp134970
                                                         (let ((__tmp134982
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133694_ '())))
                       (__tmp134971
                        (let ((__tmp134972
                               (let ((__tmp134973
                                      (let ((__tmp134980
                                             (let ((__tmp134981
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134981)))
                                            (__tmp134974
                                             (let ((__tmp134978
                                                    (let ((__tmp134979
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass133690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134979)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134975
                                                    (let ((__tmp134976
                                                           (let ((__tmp134977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id133691_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134977))))
              (declare (not safe))
              (cons __tmp134976 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134978
                                                     __tmp134975))))
                                        (declare (not safe))
                                        (cons __tmp134980 __tmp134974))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134973))))
                          (declare (not safe))
                          (cons __tmp134972 '()))))
                   (declare (not safe))
                   (cons __tmp134982 __tmp134971))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134970 '())))
                                                 (__tmp134950
                                                  (let ((__tmp134951
                                                         (let ((__tmp134952
                                                                (let ((__tmp134967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134968
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133694_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134968)))
                              (__tmp134953
                               (let ((__tmp134965
                                      (let ((__tmp134966
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133694_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134966)))
                                     (__tmp134954
                                      (let ((__tmp134955
                                             (let ((__tmp134956
                                                    (let ((__tmp134963
                                                           (let ((__tmp134964
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134964)))
                  (__tmp134957
                   (let ((__tmp134961
                          (let ((__tmp134962
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134962)))
                         (__tmp134958
                          (let ((__tmp134959
                                 (let ((__tmp134960
                                        (let ()
                                          (declare (not safe))
                                          (cons _id133691_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134960))))
                            (declare (not safe))
                            (cons __tmp134959 '()))))
                     (declare (not safe))
                     (cons __tmp134961 __tmp134958))))
              (declare (not safe))
              (cons __tmp134963 __tmp134957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134956))))
                                        (declare (not safe))
                                        (cons __tmp134955 '()))))
                                 (declare (not safe))
                                 (cons __tmp134965 __tmp134954))))
                          (declare (not safe))
                          (cons __tmp134967 __tmp134953))))
                   (declare (not safe))
                   (cons '%#if __tmp134952))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134951 '()))))
                                             (declare (not safe))
                                             (cons __tmp134969 __tmp134950))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134949))))
                               (declare (not safe))
                               (cons __tmp134948 '()))))
                        (declare (not safe))
                        (cons __tmp134983 __tmp134947)))))
                 (_generate-specializer-impl130919_
                  (lambda (_$klass133684_
                           _$method-table133685_
                           _methods-bind133686_
                           _slots-bind133687_
                           _specializer-impl133688_)
                    (let ((__tmp134984
                           (let ((__tmp134985
                                  (let ((__tmp134991
                                         (let ((__tmp134992
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table133685_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass133684_ __tmp134992)))
                                        (__tmp134986
                                         (let ((__tmp134987
                                                (let ((__tmp134988
                                                       (let ((__tmp134990
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind133687_ _methods-bind133686_)))
                     (__tmp134989
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl133688_ '()))))
                 (declare (not safe))
                 (cons __tmp134990 __tmp134989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134988))))
                                           (declare (not safe))
                                           (cons __tmp134987 '()))))
                                    (declare (not safe))
                                    (cons __tmp134991 __tmp134986))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134985))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134984 _stx130915_))))
                 (_generate-specializer-def130920_
                  (lambda (_id133680_
                           _specializer-id133681_
                           _specializer-impl133682_)
                    (let ((__tmp134993
                           (let ((__tmp134994
                                  (let ((__tmp134995
                                         (let ((__tmp135008
                                                (let ((__tmp135009
                                                       (let ((__tmp135010
                                                              (let ((__tmp135012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id133681_ '())))
                            (__tmp135011
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl133682_ '()))))
                        (declare (not safe))
                        (cons __tmp135012 __tmp135011))))
                 (declare (not safe))
                 (cons '%#define-values __tmp135010))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp135009
                                                   _stx130915_)))
                                               (__tmp134996
                                                (let ((__tmp134997
                                                       (let ((__tmp134998
                                                              (let ((__tmp134999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135006
                                    (let ((__tmp135007
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp135007)))
                                   (__tmp135000
                                    (let ((__tmp135004
                                           (let ((__tmp135005
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id133680_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135005)))
                                          (__tmp135001
                                           (let ((__tmp135002
                                                  (let ((__tmp135003
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id133681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp135003))))
                                             (declare (not safe))
                                             (cons __tmp135002 '()))))
                                      (declare (not safe))
                                      (cons __tmp135004 __tmp135001))))
                               (declare (not safe))
                               (cons __tmp135006 __tmp135000))))
                        (declare (not safe))
                        (cons '%#call __tmp134999))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134998 _stx130915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134997 '()))))
                                           (declare (not safe))
                                           (cons __tmp135008 __tmp134996))))
                                    (declare (not safe))
                                    (cons _stx130915_ __tmp134995))))
                             (declare (not safe))
                             (cons '%#begin __tmp134994))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134993 _stx130915_)))))
          (let* ((___stx133849133850_ _stx130915_)
                 (_g130923130943_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133849133850_)))))
            (let ((___kont133851133852_
                   (lambda (_L130987_ _L130988_)
                     (let ((_method-calls131007_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs131008_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty131009_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?131011_
                                 (lambda ()
                                   (if (let ((__tmp135014
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls131007_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135014))
                                       (let ((__tmp135013
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs131008_))))
                                         (declare (not safe))
                                         (fxzero? __tmp135013))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130987_))
                             (let* ((___stx133763133764_ _L130987_)
                                    (_g131398131416_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133763133764_)))))
                               (let ((___kont133765133766_
                                      (lambda (_L131452_ _L131453_ _L131454_)
                                        (for-each
                                         (lambda (_g131469131471_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131469131471_
                                              _L131454_
                                              _method-calls131007_
                                              _slot-refs131008_)))
                                         _L131452_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?131011_))
                                            _stx130915_
                                            (let* ((_specializer-id131480_
                                                    (let* ((_id131474_
                                                            (let ((__tmp135136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130988_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135136 '"::specialize")))
                   (_specializer-id131477_
                    (let ((__tmp135137
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130915_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131474_ __tmp135137))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131477_))
              _specializer-id131477_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131482_
                                                    (let ((__tmp135138
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135138)))
                                                   (_$method-table131484_
                                                    (let ((__tmp135139
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp135139)))
                                                   (_methods131486_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls131007_)))
                                                   (_$methods131490_
                                                    (map (lambda (_id131488_)
                                                           (let ((__tmp135140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131488_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135140)))
                 _methods131486_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135141_
                                                    (for-each
                                                     (lambda (_g131491131494_
                                                              _g131492131496_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls131007_
                                                          _g131491131494_
                                                          _g131492131496_)))
                                                     _methods131486_
                                                     _$methods131490_))
                                                   (_methods-bind131507_
                                                    (map (lambda (_g131499131502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131500131504_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130917_
                      _$klass131482_
                      _$method-table131484_
                      _g131499131502_
                      _g131500131504_)))
                 _methods131486_
                 _$methods131490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131509_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs131008_)))
                                                   (_$slots131513_
                                                    (map (lambda (_id131511_)
                                                           (let ((__tmp135142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131511_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp135142)))
                 _slots131509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g135143_
                                                    (for-each
                                                     (lambda (_g131514131517_
                                                              _g131515131519_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs131008_
                                                          _g131514131517_
                                                          _g131515131519_)))
                                                     _slots131509_
                                                     _$slots131513_))
                                                   (_slots-bind131530_
                                                    (map (lambda (_g131522131525_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131523131527_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130918_
                      _$klass131482_
                      _g131522131525_
                      _g131523131527_)))
                 _slots131509_
                 _$slots131513_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131536_
                                                    (map (lambda (_g131531131533_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131531131533_
                                                              _L131454_
                                                              _$klass131482_
                                                              _method-calls131007_
                                                              _slot-refs131008_)))
                                                         _L131452_))
                                                   (_specializer-impl131538_
                                                    (let ((__tmp135144
                                                           (let ((__tmp135145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135146
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131454_ _L131453_))))
                            (declare (not safe))
                            (cons __tmp135146 _specializer-body131536_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135145))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp135144 _stx130915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131540_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130919_
                                                       _$klass131482_
                                                       _$method-table131484_
                                                       _methods-bind131507_
                                                       _slots-bind131530_
                                                       _specializer-impl131538_))))
                                              (let ((__tmp135148
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130988_)))
                                                    (__tmp135147
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131480_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp135148
                                                 '" => "
                                                 __tmp135147))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130920_
                                                 _L130988_
                                                 _specializer-id131480_
                                                 _specializer-impl131540_))))))
                                     (___kont133767133768_
                                      (lambda () _stx130915_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133763133764_))
                                     (let ((_e131405131428_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133763133764_))))
                                       (let ((_tl131403131433_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131405131428_)))
                                             (_hd131404131431_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131405131428_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131403131433_))
                                             (let ((_e131408131436_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131403131433_))))
                                               (let ((_tl131406131441_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131408131436_)))
                                                     (_hd131407131439_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131408131436_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131407131439_))
                                                     (let ((_e131411131444_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131407131439_))))
                                                       (let ((_tl131409131449_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131411131444_)))
                     (_hd131410131447_
                      (let () (declare (not safe)) (##car _e131411131444_))))
                 (___kont133765133766_
                  _tl131406131441_
                  _tl131409131449_
                  _hd131410131447_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133767133768_))))
                                             (___kont133767133768_))))
                                     (___kont133767133768_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130987_))
                                 (let* ((_g131546131565_
                                         (lambda (_g131547131562_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131547131562_))))
                                        (_g131545131848_
                                         (lambda (_g131547131568_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131547131568_))
                                               (let ((_e131551131570_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131547131568_))))
                                                 (let ((_hd131550131573_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131551131570_)))
                                                       (_tl131549131575_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131551131570_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131549131575_))
                                                       (let ((_g135119_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131549131575_ '0))))
                 (begin
                   (let ((_g135120_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g135119_)
                                (##vector-length _g135119_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g135120_ 2)))
                         (error "Context expects 2 values" _g135120_)))
                   (let ((_target131552131578_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135119_ 0)))
                         (_tl131554131580_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g135119_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131554131580_))
                         (letrec ((_loop131555131583_
                                   (lambda (_hd131553131586_
                                            _clause131559131588_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131553131586_))
                                         (let ((_e131556131591_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131553131586_))))
                                           (let ((_lp-hd131557131594_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131556131591_)))
                                                 (_lp-tl131558131596_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131556131591_))))
                                             (let ((__tmp135135
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131557131594_
                                                            _clause131559131588_))))
                                               (declare (not safe))
                                               (_loop131555131583_
                                                _lp-tl131558131596_
                                                __tmp135135))))
                                         (let ((_clause131560131599_
                                                (reverse _clause131559131588_)))
                                           ((lambda (_L131602_)
                                              (for-each
                                               (lambda (_clause131615_)
                                                 (let* ((___stx133789133790_
                                                         _clause131615_)
                                                        (_g131618131633_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133789133790_)))))
                                                   (let ((___kont133791133792_
                                                          (lambda (_L131661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131662_
                           _L131663_)
                    (for-each
                     (lambda (_g131678131680_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131678131680_
                          _L131663_
                          _method-calls131007_
                          _slot-refs131008_)))
                     _L131661_)))
                 (___kont133793133794_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133789133790_))
                                                         (let ((_e131625131645_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133789133790_))))
                   (let ((_tl131623131650_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131625131645_)))
                         (_hd131624131648_
                          (let ()
                            (declare (not safe))
                            (##car _e131625131645_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131624131648_))
                         (let ((_e131628131653_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131624131648_))))
                           (let ((_tl131626131658_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131628131653_)))
                                 (_hd131627131656_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131628131653_))))
                             (___kont133791133792_
                              _tl131623131650_
                              _tl131626131658_
                              _hd131627131656_)))
                         (___kont133793133794_))))
                 (___kont133793133794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp135121
                                                      (lambda (_g131685131688_
                                                               _g131686131690_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g131685131688_
                                                                _g131686131690_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135121
                                                         '()
                                                         _L131602_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131011_))
                                                  _stx130915_
                                                  (let* ((_specializer-id131699_
                                                          (let* ((_id131693_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135122
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130988_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135122 '"::specialize")))
                         (_specializer-id131696_
                          (let ((__tmp135123
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130915_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131693_ __tmp135123))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131696_))
                    _specializer-id131696_))
                 (_$klass131701_
                  (let ((__tmp135124 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135124)))
                 (_$method-table131703_
                  (let ((__tmp135125 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135125)))
                 (_methods131705_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131007_)))
                 (_$methods131709_
                  (map (lambda (_id131707_)
                         (let ((__tmp135126 (gensym _id131707_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135126)))
                       _methods131705_))
                 (_g135127_
                  (for-each
                   (lambda (_g131710131713_ _g131711131715_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131007_
                        _g131710131713_
                        _g131711131715_)))
                   _methods131705_
                   _$methods131709_))
                 (_methods-bind131726_
                  (map (lambda (_g131718131721_ _g131719131723_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130917_
                            _$klass131701_
                            _$method-table131703_
                            _g131718131721_
                            _g131719131723_)))
                       _methods131705_
                       _$methods131709_))
                 (_slots131728_
                  (let () (declare (not safe)) (hash-keys _slot-refs131008_)))
                 (_$slots131732_
                  (map (lambda (_id131730_)
                         (let ((__tmp135128 (gensym _id131730_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135128)))
                       _slots131728_))
                 (_g135129_
                  (for-each
                   (lambda (_g131733131736_ _g131734131738_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131008_
                        _g131733131736_
                        _g131734131738_)))
                   _slots131728_
                   _$slots131732_))
                 (_slots-bind131749_
                  (map (lambda (_g131741131744_ _g131742131746_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130918_
                            _$klass131701_
                            _g131741131744_
                            _g131742131746_)))
                       _slots131728_
                       _$slots131732_))
                 (_specializer-clauses131841_
                  (map (lambda (_clause131751_)
                         (let* ((___stx133809133810_ _clause131751_)
                                (_g131754131769_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx133809133810_)))))
                           (let ((___kont133811133812_
                                  (lambda (_L131797_ _L131798_ _L131799_)
                                    (let* ((_body131829_
                                            (map (lambda (_g131824131826_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g131824131826_
                                                      _L131799_
                                                      _$klass131701_
                                                      _method-calls131007_
                                                      _slot-refs131008_)))
                                                 _L131797_))
                                           (__tmp135130
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131799_ _L131798_))))
                                      (declare (not safe))
                                      (cons __tmp135130 _body131829_))))
                                 (___kont133813133814_
                                  (lambda () _clause131751_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx133809133810_))
                                 (let ((_e131761131781_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx133809133810_))))
                                   (let ((_tl131759131786_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e131761131781_)))
                                         (_hd131760131784_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e131761131781_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131760131784_))
                                         (let ((_e131764131789_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131760131784_))))
                                           (let ((_tl131762131794_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131764131789_)))
                                                 (_hd131763131792_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131764131789_))))
                                             (___kont133811133812_
                                              _tl131759131786_
                                              _tl131762131794_
                                              _hd131763131792_)))
                                         (___kont133813133814_))))
                                 (___kont133813133814_)))))
                       (let ((__tmp135131
                              (lambda (_g131833131836_ _g131834131838_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g131833131836_ _g131834131838_)))))
                         (declare (not safe))
                         (foldr1 __tmp135131 '() _L131602_))))
                 (_specializer-impl131843_
                  (let ((__tmp135132
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses131841_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135132 _stx130915_)))
                 (_specializer-impl131845_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130919_
                     _$klass131701_
                     _$method-table131703_
                     _methods-bind131726_
                     _slots-bind131749_
                     _specializer-impl131843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135134
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130988_)))
                                                          (__tmp135133
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131699_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135134
                                                       '" => "
                                                       __tmp135133))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130920_
                                                       _L130988_
                                                       _specializer-id131699_
                                                       _specializer-impl131845_)))))
                                            _clause131560131599_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131555131583_ _target131552131578_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131546131565_ _g131547131568_))))))
               (let ()
                 (declare (not safe))
                 (_g131546131565_ _g131547131568_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131546131565_
                                                  _g131547131568_))))))
                                   (declare (not safe))
                                   (_g131545131848_ _L130987_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130987_))
                                     (let* ((_g131851131881_
                                             (lambda (_g131852131878_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131852131878_))))
                                            (_g131850132486_
                                             (lambda (_g131852131884_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131852131884_))
                                                   (let ((_e131858131886_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131852131884_))))
                                                     (let ((_hd131857131889_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131858131886_)))
                                                           (_tl131856131891_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131858131886_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131856131891_))
                                                           (let ((_e131861131894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131856131891_))))
                     (let ((_hd131860131897_
                            (let ()
                              (declare (not safe))
                              (##car _e131861131894_)))
                           (_tl131859131899_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131861131894_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131860131897_))
                           (let ((_e131864131902_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131860131897_))))
                             (let ((_hd131863131905_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131864131902_)))
                                   (_tl131862131907_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131864131902_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131863131905_))
                                   (let ((_e131867131910_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131863131905_))))
                                     (let ((_hd131866131913_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131867131910_)))
                                           (_tl131865131915_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131867131910_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131866131913_))
                                           (let ((_e131870131918_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131866131913_))))
                                             (let ((_hd131869131921_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131870131918_)))
                                                   (_tl131868131923_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131870131918_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131868131923_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131865131915_))
                                                       (let ((_e131873131926_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131865131915_))))
                 (let ((_hd131872131929_
                        (let () (declare (not safe)) (##car _e131873131926_)))
                       (_tl131871131931_
                        (let () (declare (not safe)) (##cdr _e131873131926_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131871131931_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131862131907_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131859131899_))
                               (let ((_e131876131934_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131859131899_))))
                                 (let ((_hd131875131937_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131876131934_)))
                                       (_tl131874131939_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131876131934_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131874131939_))
                                       ((lambda (_L131942_ _L131943_ _L131944_)
                                          (let* ((_g131967131985_
                                                  (lambda (_g131968131982_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131968131982_))))
                                                 (_g131966132036_
                                                  (lambda (_g131968131988_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131968131988_))
                                                        (let ((_e131974131990_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131968131988_))))
                  (let ((_hd131973131993_
                         (let () (declare (not safe)) (##car _e131974131990_)))
                        (_tl131972131995_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131974131990_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131972131995_))
                        (let ((_e131977131998_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131972131995_))))
                          (let ((_hd131976132001_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131977131998_)))
                                (_tl131975132003_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131977131998_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131976132001_))
                                (let ((_e131980132006_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131976132001_))))
                                  (let ((_hd131979132009_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131980132006_)))
                                        (_tl131978132011_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131980132006_))))
                                    ((lambda (_L132014_ _L132015_ _L132016_)
                                       (for-each
                                        (lambda (_g132031132033_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g132031132033_
                                             _L132016_
                                             _method-calls131007_
                                             _slot-refs131008_)))
                                        _L132014_))
                                     _tl131975132003_
                                     _tl131978132011_
                                     _hd131979132009_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131967131985_ _g131968131988_)))))
                        (let ()
                          (declare (not safe))
                          (_g131967131985_ _g131968131988_)))))
                (let ()
                  (declare (not safe))
                  (_g131967131985_ _g131968131988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131966132036_ _L131943_))
                                          (let* ((_g132039132058_
                                                  (lambda (_g132040132055_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g132040132055_))))
                                                 (_g132038132177_
                                                  (lambda (_g132040132061_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g132040132061_))
                                                        (let ((_e132044132063_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g132040132061_))))
                  (let ((_hd132043132066_
                         (let () (declare (not safe)) (##car _e132044132063_)))
                        (_tl132042132068_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132044132063_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132042132068_))
                        (let ((_g135089_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl132042132068_
                                  '0))))
                          (begin
                            (let ((_g135090_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g135089_)
                                         (##vector-length _g135089_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g135090_ 2)))
                                  (error "Context expects 2 values"
                                         _g135090_)))
                            (let ((_target132045132071_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135089_ 0)))
                                  (_tl132047132073_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g135089_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl132047132073_))
                                  (letrec ((_loop132048132076_
                                            (lambda (_hd132046132079_
                                                     _clause132052132081_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd132046132079_))
                                                  (let ((_e132049132084_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd132046132079_))))
                                                    (let ((_lp-hd132050132087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132049132084_)))
                                                          (_lp-tl132051132089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132049132084_))))
                                                      (let ((__tmp135092
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd132050132087_ _clause132052132081_))))
                (declare (not safe))
                (_loop132048132076_ _lp-tl132051132089_ __tmp135092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause132053132092_
                                                         (reverse _clause132052132081_)))
                                                    ((lambda (_L132095_)
                                                       (for-each
                                                        (lambda (_clause132108_)
                                                          (let* ((_g132110132125_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g132111132122_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g132111132122_))))
                         (_g132109132167_
                          (lambda (_g132111132128_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g132111132128_))
                                (let ((_e132117132130_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g132111132128_))))
                                  (let ((_hd132116132133_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132117132130_)))
                                        (_tl132115132135_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132117132130_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132116132133_))
                                        (let ((_e132120132138_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132116132133_))))
                                          (let ((_hd132119132141_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132120132138_)))
                                                (_tl132118132143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132120132138_))))
                                            ((lambda (_L132146_
                                                      _L132147_
                                                      _L132148_)
                                               (for-each
                                                (lambda (_g132162132164_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g132162132164_
                                                     _L132148_
                                                     _method-calls131007_
                                                     _slot-refs131008_)))
                                                _L132146_))
                                             _tl132115132135_
                                             _tl132118132143_
                                             _hd132119132141_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132110132125_ _g132111132128_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132110132125_ _g132111132128_))))))
                    (declare (not safe))
                    (_g132109132167_ _clause132108_)))
                (let ((__tmp135091
                       (lambda (_g132169132172_ _g132170132174_)
                         (let ()
                           (declare (not safe))
                           (cons _g132169132172_ _g132170132174_)))))
                  (declare (not safe))
                  (foldr1 __tmp135091 '() _L132095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause132053132092_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop132048132076_
                                       _target132045132071_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g132039132058_ _g132040132061_))))))
                        (let ()
                          (declare (not safe))
                          (_g132039132058_ _g132040132061_)))))
                (let ()
                  (declare (not safe))
                  (_g132039132058_ _g132040132061_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g132038132177_ _L131942_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?131011_))
                                              _stx130915_
                                              (let* ((_specializer-id132186_
                                                      (let* ((_id132180_
                                                              (let ((__tmp135093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130988_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp135093 '"::specialize")))
                     (_specializer-id132183_
                      (let ((__tmp135094
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130915_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id132180_ __tmp135094))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id132183_))
                _specializer-id132183_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass132188_
                                                      (let ((__tmp135095
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135095)))
                                                     (_$method-table132190_
                                                      (let ((__tmp135096
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp135096)))
                                                     (_methods132192_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls131007_)))
                                                     (_$methods132196_
                                                      (map (lambda (_id132194_)
                                                             (let ((__tmp135097
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132194_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135097)))
                   _methods132192_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135098_
                                                      (for-each
                                                       (lambda (_g132197132200_
                                                                _g132198132202_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls131007_
                                                            _g132197132200_
                                                            _g132198132202_)))
                                                       _methods132192_
                                                       _$methods132196_))
                                                     (_methods-bind132213_
                                                      (map (lambda (_g132205132208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132206132210_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130917_
                        _$klass132188_
                        _$method-table132190_
                        _g132205132208_
                        _g132206132210_)))
                   _methods132192_
                   _$methods132196_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots132215_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs131008_)))
                                                     (_$slots132219_
                                                      (map (lambda (_id132217_)
                                                             (let ((__tmp135099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id132217_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp135099)))
                   _slots132215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g135100_
                                                      (for-each
                                                       (lambda (_g132220132223_
                                                                _g132221132225_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs131008_
                                                            _g132220132223_
                                                            _g132221132225_)))
                                                       _slots132215_
                                                       _$slots132219_))
                                                     (_slots-bind132236_
                                                      (map (lambda (_g132228132231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g132229132233_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130918_
                        _$klass132188_
                        _g132228132231_
                        _g132229132233_)))
                   _slots132215_
                   _$slots132219_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132322_
                                                      (let* ((_g132238132256_
                                                              (lambda (_g132239132253_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132239132253_))))
                     (_g132237132319_
                      (lambda (_g132239132259_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132239132259_))
                            (let ((_e132245132261_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132239132259_))))
                              (let ((_hd132244132264_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132245132261_)))
                                    (_tl132243132266_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132245132261_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132243132266_))
                                    (let ((_e132248132269_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132243132266_))))
                                      (let ((_hd132247132272_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132248132269_)))
                                            (_tl132246132274_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132248132269_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132247132272_))
                                            (let ((_e132251132277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132247132272_))))
                                              (let ((_hd132250132280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132251132277_)))
                                                    (_tl132249132282_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132251132277_))))
                                                ((lambda (_L132285_
                                                          _L132286_
                                                          _L132287_)
                                                   (let* ((_body132317_
                                                           (map (lambda (_g132312132314_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132312132314_
                             _L132287_
                             _$klass132188_
                             _method-calls131007_
                             _slot-refs131008_)))
                        _L132285_))
                  (__tmp135101
                   (let ((__tmp135102
                          (let ((__tmp135103
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132287_ _L132286_))))
                            (declare (not safe))
                            (cons __tmp135103 _body132317_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp135102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp135101
                                                      _L131943_)))
                                                 _tl132246132274_
                                                 _tl132249132282_
                                                 _hd132250132280_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132238132256_
                                               _g132239132259_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132238132256_ _g132239132259_)))))
                            (let ()
                              (declare (not safe))
                              (_g132238132256_ _g132239132259_))))))
                (declare (not safe))
                (_g132237132319_ _L131943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132479_
                                                      (let* ((_g132324132343_
                                                              (lambda (_g132325132340_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132325132340_))))
                     (_g132323132476_
                      (lambda (_g132325132346_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132325132346_))
                            (let ((_e132329132348_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132325132346_))))
                              (let ((_hd132328132351_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132329132348_)))
                                    (_tl132327132353_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132329132348_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132327132353_))
                                    (let ((_g135104_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132327132353_
                                              '0))))
                                      (begin
                                        (let ((_g135105_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135104_)
                                                     (##vector-length
                                                      _g135104_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135105_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135105_)))
                                        (let ((_target132330132356_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135104_ 0)))
                                              (_tl132332132358_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135104_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132332132358_))
                                              (letrec ((_loop132333132361_
                                                        (lambda (_hd132331132364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132337132366_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132331132364_))
                      (let ((_e132334132369_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132331132364_))))
                        (let ((_lp-hd132335132372_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132334132369_)))
                              (_lp-tl132336132374_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132334132369_))))
                          (let ((__tmp135109
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132335132372_
                                         _clause132337132366_))))
                            (declare (not safe))
                            (_loop132333132361_
                             _lp-tl132336132374_
                             __tmp135109))))
                      (let ((_clause132338132377_
                             (reverse _clause132337132366_)))
                        ((lambda (_L132380_)
                           (let* ((_clauses132474_
                                   (map (lambda (_clause132394_)
                                          (let* ((___stx133829133830_
                                                  _clause132394_)
                                                 (_g132397132412_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133829133830_)))))
                                            (let ((___kont133831133832_
                                                   (lambda (_L132440_
                                                            _L132441_
                                                            _L132442_)
                                                     (let* ((_body132462_
                                                             (map (lambda (_g132457132459_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132457132459_
                               _L132442_
                               _$klass132188_
                               _method-calls131007_
                               _slot-refs131008_)))
                          _L132440_))
                    (__tmp135106
                     (let () (declare (not safe)) (cons _L132442_ _L132441_))))
               (declare (not safe))
               (cons __tmp135106 _body132462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133833133834_
                                                   (lambda () _clause132394_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx133829133830_))
                                                  (let ((_e132404132424_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx133829133830_))))
                                                    (let ((_tl132402132429_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132404132424_)))
                                                          (_hd132403132427_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132404132424_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132403132427_))
                                                          (let ((_e132407132432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132403132427_))))
                    (let ((_tl132405132437_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132407132432_)))
                          (_hd132406132435_
                           (let ()
                             (declare (not safe))
                             (##car _e132407132432_))))
                      (___kont133831133832_
                       _tl132402132429_
                       _tl132405132437_
                       _hd132406132435_)))
                  (___kont133833133834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133833133834_)))))
                                        (let ((__tmp135107
                                               (lambda (_g132466132469_
                                                        _g132467132471_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132466132469_
                                                         _g132467132471_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp135107 '() _L132380_))))
                                  (__tmp135108
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132474_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135108 _L131942_)))
                         _clause132338132377_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132333132361_
                                                   _target132330132356_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132324132343_
                                                 _g132325132346_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132324132343_ _g132325132346_)))))
                            (let ()
                              (declare (not safe))
                              (_g132324132343_ _g132325132346_))))))
                (declare (not safe))
                (_g132323132476_ _L131942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132481_
                                                      (let ((__tmp135110
                                                             (let ((__tmp135111
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp135113
                                   (let ((__tmp135114
                                          (let ((__tmp135116
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L131944_ '())))
                                                (__tmp135115
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132322_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp135116 __tmp135115))))
                                     (declare (not safe))
                                     (cons __tmp135114 '())))
                                  (__tmp135112
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132479_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp135113 __tmp135112))))
                       (declare (not safe))
                       (cons '%#let-values __tmp135111))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp135110 _stx130915_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132483_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130919_
                                                         _$klass132188_
                                                         _$method-table132190_
                                                         _methods-bind132213_
                                                         _slots-bind132236_
                                                         _specializer-impl132481_))))
                                                (let ((__tmp135118
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130988_)))
                                                      (__tmp135117
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id132186_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp135118
                                                   '" => "
                                                   __tmp135117))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130920_
                                                   _L130988_
                                                   _specializer-id132186_
                                                   _specializer-impl132483_)))))
                                        _hd131875131937_
                                        _hd131872131929_
                                        _hd131869131921_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131851131881_ _g131852131884_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131851131881_ _g131852131884_)))
                           (let ()
                             (declare (not safe))
                             (_g131851131881_ _g131852131884_)))
                       (let ()
                         (declare (not safe))
                         (_g131851131881_ _g131852131884_)))))
               (let () (declare (not safe)) (_g131851131881_ _g131852131884_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131851131881_
                                                      _g131852131884_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131851131881_
                                              _g131852131884_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131851131881_ _g131852131884_)))))
                           (let ()
                             (declare (not safe))
                             (_g131851131881_ _g131852131884_)))))
                   (let ()
                     (declare (not safe))
                     (_g131851131881_ _g131852131884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131851131881_
                                                      _g131852131884_))))))
                                       (declare (not safe))
                                       (_g131850132486_ _L130987_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130987_))
                                         (let* ((_g132489132542_
                                                 (lambda (_g132490132539_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132490132539_))))
                                                (_g132488133673_
                                                 (lambda (_g132490132545_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132490132545_))
                                                       (let ((_e132498132547_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132490132545_))))
                 (let ((_hd132497132550_
                        (let () (declare (not safe)) (##car _e132498132547_)))
                       (_tl132496132552_
                        (let () (declare (not safe)) (##cdr _e132498132547_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132497132550_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132497132550_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132496132552_))
                               (let ((_e132501132555_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132496132552_))))
                                 (let ((_hd132500132558_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132501132555_)))
                                       (_tl132499132560_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132501132555_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132500132558_))
                                       (let ((_e132504132563_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132500132558_))))
                                         (let ((_hd132503132566_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132504132563_)))
                                               (_tl132502132568_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132504132563_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132503132566_))
                                               (let ((_e132507132571_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132503132566_))))
                                                 (let ((_hd132506132574_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132507132571_)))
                                                       (_tl132505132576_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132507132571_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132506132574_))
                                                       (let ((_e132510132579_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132506132574_))))
                 (let ((_hd132509132582_
                        (let () (declare (not safe)) (##car _e132510132579_)))
                       (_tl132508132584_
                        (let () (declare (not safe)) (##cdr _e132510132579_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132508132584_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132505132576_))
                           (let ((_e132513132587_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132505132576_))))
                             (let ((_hd132512132590_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132513132587_)))
                                   (_tl132511132592_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132513132587_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132512132590_))
                                   (let ((_e132516132595_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132512132590_))))
                                     (let ((_hd132515132598_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132516132595_)))
                                           (_tl132514132600_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132516132595_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132515132598_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132515132598_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132514132600_))
                                                   (let ((_e132519132603_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132514132600_))))
                                                     (let ((_hd132518132606_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132519132603_)))
                                                           (_tl132517132608_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132519132603_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132518132606_))
                                                           (let ((_e132522132611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132518132606_))))
                     (let ((_hd132521132614_
                            (let ()
                              (declare (not safe))
                              (##car _e132522132611_)))
                           (_tl132520132616_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132522132611_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132521132614_))
                           (let ((_e132525132619_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132521132614_))))
                             (let ((_hd132524132622_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132525132619_)))
                                   (_tl132523132624_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132525132619_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132524132622_))
                                   (let ((_e132528132627_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132524132622_))))
                                     (let ((_hd132527132630_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132528132627_)))
                                           (_tl132526132632_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132528132627_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132526132632_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132523132624_))
                                               (let ((_e132531132635_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132523132624_))))
                                                 (let ((_hd132530132638_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132531132635_)))
                                                       (_tl132529132640_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132531132635_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132529132640_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132520132616_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132517132608_))
                       (let ((_e132534132643_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132517132608_))))
                         (let ((_hd132533132646_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132534132643_)))
                               (_tl132532132648_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132534132643_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132532132648_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132511132592_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132502132568_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132499132560_))
                                           (let ((_e132537132651_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132499132560_))))
                                             (let ((_hd132536132654_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132537132651_)))
                                                   (_tl132535132656_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132537132651_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132535132656_))
                                                   ((lambda (_L132659_
                                                             _L132660_
                                                             _L132661_
                                                             _L132662_
                                                             _L132663_)
                                                      (let* ((_g132702132764_
                                                              (lambda (_g132703132761_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132703132761_))))
                     (_g132701133670_
                      (lambda (_g132703132767_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132703132767_))
                            (let ((_e132711132769_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132703132767_))))
                              (let ((_hd132710132772_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132711132769_)))
                                    (_tl132709132774_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132711132769_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132710132772_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132710132772_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132709132774_))
                                            (let ((_e132714132777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132709132774_))))
                                              (let ((_hd132713132780_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132714132777_)))
                                                    (_tl132712132782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132714132777_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132712132782_))
                                                    (let ((_e132717132785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132712132782_))))
                                                      (let ((_hd132716132788_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132717132785_)))
                    (_tl132715132790_
                     (let () (declare (not safe)) (##cdr _e132717132785_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132716132788_))
                    (let ((_e132720132793_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132716132788_))))
                      (let ((_hd132719132796_
                             (let ()
                               (declare (not safe))
                               (##car _e132720132793_)))
                            (_tl132718132798_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132720132793_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132719132796_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132719132796_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132718132798_))
                                    (let ((_e132723132801_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132718132798_))))
                                      (let ((_hd132722132804_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132723132801_)))
                                            (_tl132721132806_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132723132801_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132722132804_))
                                            (let ((_e132726132809_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132722132804_))))
                                              (let ((_hd132725132812_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132726132809_)))
                                                    (_tl132724132814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132726132809_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132725132812_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132725132812_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132724132814_))
                                                            (let ((_e132729132817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132724132814_))))
                      (let ((_hd132728132820_
                             (let ()
                               (declare (not safe))
                               (##car _e132729132817_)))
                            (_tl132727132822_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132729132817_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132727132822_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132721132806_))
                                (let ((_e132732132825_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132721132806_))))
                                  (let ((_hd132731132828_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132732132825_)))
                                        (_tl132730132830_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132732132825_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132731132828_))
                                        (let ((_e132735132833_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132731132828_))))
                                          (let ((_hd132734132836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132735132833_)))
                                                (_tl132733132838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132735132833_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132734132836_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132734132836_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132733132838_))
                                                        (let ((_e132738132841_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132733132838_))))
                  (let ((_hd132737132844_
                         (let () (declare (not safe)) (##car _e132738132841_)))
                        (_tl132736132846_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132738132841_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132736132846_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132730132830_))
                            (let ((_e132741132849_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132730132830_))))
                              (let ((_hd132740132852_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132741132849_)))
                                    (_tl132739132854_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132741132849_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132740132852_))
                                    (let ((_e132744132857_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132740132852_))))
                                      (let ((_hd132743132860_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132744132857_)))
                                            (_tl132742132862_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132744132857_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132743132860_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132743132860_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132742132862_))
                                                    (let ((_e132747132865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132742132862_))))
                                                      (let ((_hd132746132868_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132747132865_)))
                    (_tl132745132870_
                     (let () (declare (not safe)) (##cdr _e132747132865_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132745132870_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132739132854_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132739132854_))
                                  '1)
                            (let ((_g135015_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132739132854_
                                      '1))))
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
                                (let ((_target132748132873_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135015_ 0)))
                                      (_tl132750132875_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135015_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132750132875_))
                                      (let ((_e132759132878_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132750132875_))))
                                        (let ((_hd132758132881_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132759132878_)))
                                              (_tl132757132883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132759132878_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132757132883_))
                                              (letrec ((_loop132751132886_
                                                        (lambda (_hd132749132889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132755132891_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132749132889_))
                      (let ((_e132752132894_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132749132889_))))
                        (let ((_lp-hd132753132897_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132752132894_)))
                              (_lp-tl132754132899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132752132894_))))
                          (let ((__tmp135088
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132753132897_
                                         _kw-ref132755132891_))))
                            (declare (not safe))
                            (_loop132751132886_
                             _lp-tl132754132899_
                             __tmp135088))))
                      (let ((_kw-ref132756132902_
                             (reverse _kw-ref132755132891_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132715132790_))
                            ((lambda (_L132905_
                                      _L132906_
                                      _L132907_
                                      _L132908_
                                      _L132909_)
                               (let* ((_kw-count132960_
                                       (length (let ((__tmp135017
                                                      (lambda (_g132952132955_
                                                               _g132953132957_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132952132955_
                                                                _g132953132957_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp135017
                                                         '()
                                                         _L132906_))))
                                      (_self-index132962_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132960_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132661_))
                                     (let* ((_g132965132979_
                                             (lambda (_g132966132976_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132966132976_))))
                                            (_g132964133092_
                                             (lambda (_g132966132982_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132966132982_))
                                                   (let ((_e132971132984_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132966132982_))))
                                                     (let ((_hd132970132987_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132971132984_)))
                                                           (_tl132969132989_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132971132984_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132969132989_))
                                                           (let ((_e132974132992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132969132989_))))
                     (let ((_hd132973132995_
                            (let ()
                              (declare (not safe))
                              (##car _e132974132992_)))
                           (_tl132972132997_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132974132992_))))
                       ((lambda (_L133000_ _L133001_)
                          (let ((_self133017_
                                 (list-ref _L133001_ _self-index132962_)))
                            (for-each
                             (lambda (_g133018133020_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g133018133020_
                                  _self133017_
                                  _method-calls131007_
                                  _slot-refs131008_)))
                             _L133000_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?131011_))
                                _stx130915_
                                (let* ((_specializer-id133029_
                                        (let* ((_id133023_
                                                (let ((__tmp135061
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130988_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp135061
                                                   '"::specialize")))
                                               (_specializer-id133026_
                                                (let ((__tmp135062
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130915_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id133023_
                                                   __tmp135062))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id133026_))
                                          _specializer-id133026_))
                                       (_$klass133031_
                                        (let ((__tmp135063 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135063)))
                                       (_$method-table133033_
                                        (let ((__tmp135064
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp135064)))
                                       (_methods133035_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls131007_)))
                                       (_$methods133039_
                                        (map (lambda (_id133037_)
                                               (let ((__tmp135065
                                                      (gensym _id133037_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135065)))
                                             _methods133035_))
                                       (_g135066_
                                        (for-each
                                         (lambda (_g133040133043_
                                                  _g133041133045_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls131007_
                                              _g133040133043_
                                              _g133041133045_)))
                                         _methods133035_
                                         _$methods133039_))
                                       (_methods-bind133056_
                                        (map (lambda (_g133048133051_
                                                      _g133049133053_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130917_
                                                  _$klass133031_
                                                  _$method-table133033_
                                                  _g133048133051_
                                                  _g133049133053_)))
                                             _methods133035_
                                             _$methods133039_))
                                       (_slots133058_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs131008_)))
                                       (_$slots133062_
                                        (map (lambda (_id133060_)
                                               (let ((__tmp135067
                                                      (gensym _id133060_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp135067)))
                                             _slots133058_))
                                       (_g135068_
                                        (for-each
                                         (lambda (_g133063133066_
                                                  _g133064133068_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs131008_
                                              _g133063133066_
                                              _g133064133068_)))
                                         _slots133058_
                                         _$slots133062_))
                                       (_slots-bind133079_
                                        (map (lambda (_g133071133074_
                                                      _g133072133076_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130918_
                                                  _$klass133031_
                                                  _g133071133074_
                                                  _g133072133076_)))
                                             _slots133058_
                                             _$slots133062_))
                                       (_specializer-impl133087_
                                        (let* ((_specializer-body133085_
                                                (map (lambda (_g133080133082_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g133080133082_
                                                          _self133017_
                                                          _$klass133031_
                                                          _method-calls131007_
                                                          _slot-refs131008_)))
                                                     _L133000_))
                                               (__tmp135069
                                                (let ((__tmp135070
                                                       (let ((__tmp135072
                                                              (let ((__tmp135073
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135085
                                    (let ()
                                      (declare (not safe))
                                      (cons _L132663_ '())))
                                   (__tmp135074
                                    (let ((__tmp135075
                                           (let ((__tmp135076
                                                  (let ((__tmp135078
                                                         (let ((__tmp135079
                                                                (let ((__tmp135084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L132662_ '())))
                              (__tmp135080
                               (let ((__tmp135081
                                      (let ((__tmp135082
                                             (let ((__tmp135083
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L133001_
                                                            _specializer-body133085_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp135083))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp135082
                                         _L132661_))))
                                 (declare (not safe))
                                 (cons __tmp135081 '()))))
                          (declare (not safe))
                          (cons __tmp135084 __tmp135080))))
                   (declare (not safe))
                   (cons __tmp135079 '())))
                (__tmp135077
                 (let () (declare (not safe)) (cons _L132660_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135078
                                                          __tmp135077))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp135076))))
                                      (declare (not safe))
                                      (cons __tmp135075 '()))))
                               (declare (not safe))
                               (cons __tmp135085 __tmp135074))))
                        (declare (not safe))
                        (cons __tmp135073 '())))
                     (__tmp135071
                      (let () (declare (not safe)) (cons _L132659_ '()))))
                 (declare (not safe))
                 (cons __tmp135072 __tmp135071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp135070))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp135069
                                           _stx130915_)))
                                       (_specializer-impl133089_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130919_
                                           _$klass133031_
                                           _$method-table133033_
                                           _methods-bind133056_
                                           _slots-bind133079_
                                           _specializer-impl133087_))))
                                  (let ((__tmp135087
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130988_)))
                                        (__tmp135086
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id133029_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp135087
                                     '" => "
                                     __tmp135086))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130920_
                                     _L130988_
                                     _specializer-id133029_
                                     _specializer-impl133089_))))))
                        _tl132972132997_
                        _hd132973132995_)))
                   (let ()
                     (declare (not safe))
                     (_g132965132979_ _g132966132982_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132965132979_
                                                      _g132966132982_))))))
                                       (declare (not safe))
                                       (_g132964133092_ _L132661_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132661_))
                                         (let* ((_g133095133125_
                                                 (lambda (_g133096133122_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g133096133122_))))
                                                (_g133094133667_
                                                 (lambda (_g133096133128_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g133096133128_))
                                                       (let ((_e133102133130_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g133096133128_))))
                 (let ((_hd133101133133_
                        (let () (declare (not safe)) (##car _e133102133130_)))
                       (_tl133100133135_
                        (let () (declare (not safe)) (##cdr _e133102133130_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl133100133135_))
                       (let ((_e133105133138_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl133100133135_))))
                         (let ((_hd133104133141_
                                (let ()
                                  (declare (not safe))
                                  (##car _e133105133138_)))
                               (_tl133103133143_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e133105133138_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd133104133141_))
                               (let ((_e133108133146_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd133104133141_))))
                                 (let ((_hd133107133149_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e133108133146_)))
                                       (_tl133106133151_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e133108133146_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd133107133149_))
                                       (let ((_e133111133154_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd133107133149_))))
                                         (let ((_hd133110133157_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e133111133154_)))
                                               (_tl133109133159_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e133111133154_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd133110133157_))
                                               (let ((_e133114133162_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd133110133157_))))
                                                 (let ((_hd133113133165_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e133114133162_)))
                                                       (_tl133112133167_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e133114133162_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl133112133167_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl133109133159_))
                                                           (let ((_e133117133170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl133109133159_))))
                     (let ((_hd133116133173_
                            (let ()
                              (declare (not safe))
                              (##car _e133117133170_)))
                           (_tl133115133175_
                            (let ()
                              (declare (not safe))
                              (##cdr _e133117133170_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl133115133175_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl133106133151_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl133103133143_))
                                   (let ((_e133120133178_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl133103133143_))))
                                     (let ((_hd133119133181_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e133120133178_)))
                                           (_tl133118133183_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e133120133178_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl133118133183_))
                                           ((lambda (_L133186_
                                                     _L133187_
                                                     _L133188_)
                                              (let* ((_g133211133225_
                                                      (lambda (_g133212133222_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133212133222_))))
                                                     (_g133210133266_
                                                      (lambda (_g133212133228_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133212133228_))
                                                            (let ((_e133217133230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133212133228_))))
                      (let ((_hd133216133233_
                             (let ()
                               (declare (not safe))
                               (##car _e133217133230_)))
                            (_tl133215133235_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133217133230_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl133215133235_))
                            (let ((_e133220133238_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl133215133235_))))
                              (let ((_hd133219133241_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e133220133238_)))
                                    (_tl133218133243_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e133220133238_))))
                                ((lambda (_L133246_ _L133247_)
                                   (let ((_self133260_
                                          (list-ref
                                           _L133247_
                                           _self-index132962_)))
                                     (for-each
                                      (lambda (_g133261133263_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133261133263_
                                           _self133260_
                                           _method-calls131007_
                                           _slot-refs131008_)))
                                      _L133246_)))
                                 _tl133218133243_
                                 _hd133219133241_)))
                            (let ()
                              (declare (not safe))
                              (_g133211133225_ _g133212133228_)))))
                    (let ()
                      (declare (not safe))
                      (_g133211133225_ _g133212133228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133210133266_ _L133187_))
                                              (let* ((_g133269133288_
                                                      (lambda (_g133270133285_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133270133285_))))
                                                     (_g133268133393_
                                                      (lambda (_g133270133291_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133270133291_))
                                                            (let ((_e133274133293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133270133291_))))
                      (let ((_hd133273133296_
                             (let ()
                               (declare (not safe))
                               (##car _e133274133293_)))
                            (_tl133272133298_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133274133293_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133272133298_))
                            (let ((_g135018_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133272133298_
                                      '0))))
                              (begin
                                (let ((_g135019_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g135018_)
                                             (##vector-length _g135018_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g135019_ 2)))
                                      (error "Context expects 2 values"
                                             _g135019_)))
                                (let ((_target133275133301_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135018_ 0)))
                                      (_tl133277133303_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g135018_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133277133303_))
                                      (letrec ((_loop133278133306_
                                                (lambda (_hd133276133309_
                                                         _clause133282133311_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133276133309_))
                                                      (let ((_e133279133314_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133276133309_))))
                (let ((_lp-hd133280133317_
                       (let () (declare (not safe)) (##car _e133279133314_)))
                      (_lp-tl133281133319_
                       (let () (declare (not safe)) (##cdr _e133279133314_))))
                  (let ((__tmp135021
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133280133317_ _clause133282133311_))))
                    (declare (not safe))
                    (_loop133278133306_ _lp-tl133281133319_ __tmp135021))))
              (let ((_clause133283133322_ (reverse _clause133282133311_)))
                ((lambda (_L133325_)
                   (for-each
                    (lambda (_clause133338_)
                      (let* ((_g133340133351_
                              (lambda (_g133341133348_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133341133348_))))
                             (_g133339133383_
                              (lambda (_g133341133354_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133341133354_))
                                    (let ((_e133346133356_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133341133354_))))
                                      (let ((_hd133345133359_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133346133356_)))
                                            (_tl133344133361_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133346133356_))))
                                        ((lambda (_L133364_ _L133365_)
                                           (let ((_self133377_
                                                  (list-ref
                                                   _L133365_
                                                   _self-index132962_)))
                                             (for-each
                                              (lambda (_g133378133380_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133378133380_
                                                   _self133377_
                                                   _method-calls131007_
                                                   _slot-refs131008_)))
                                              _L133364_)))
                                         _tl133344133361_
                                         _hd133345133359_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133340133351_ _g133341133354_))))))
                        (declare (not safe))
                        (_g133339133383_ _clause133338_)))
                    (let ((__tmp135020
                           (lambda (_g133385133388_ _g133386133390_)
                             (let ()
                               (declare (not safe))
                               (cons _g133385133388_ _g133386133390_)))))
                      (declare (not safe))
                      (foldr1 __tmp135020 '() _L133325_))))
                 _clause133283133322_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133278133306_
                                           _target133275133301_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133269133288_ _g133270133291_))))))
                            (let ()
                              (declare (not safe))
                              (_g133269133288_ _g133270133291_)))))
                    (let ()
                      (declare (not safe))
                      (_g133269133288_ _g133270133291_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133268133393_ _L133186_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?131011_))
                                                  _stx130915_
                                                  (let* ((_specializer-id133402_
                                                          (let* ((_id133396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp135022
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130988_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp135022 '"::specialize")))
                         (_specializer-id133399_
                          (let ((__tmp135023
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130915_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133396_ __tmp135023))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133399_))
                    _specializer-id133399_))
                 (_$klass133404_
                  (let ((__tmp135024 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135024)))
                 (_$method-table133406_
                  (let ((__tmp135025 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp135025)))
                 (_methods133408_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls131007_)))
                 (_$methods133412_
                  (map (lambda (_id133410_)
                         (let ((__tmp135026 (gensym _id133410_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135026)))
                       _methods133408_))
                 (_g135027_
                  (for-each
                   (lambda (_g133413133416_ _g133414133418_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls131007_
                        _g133413133416_
                        _g133414133418_)))
                   _methods133408_
                   _$methods133412_))
                 (_methods-bind133429_
                  (map (lambda (_g133421133424_ _g133422133426_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130917_
                            _$klass133404_
                            _$method-table133406_
                            _g133421133424_
                            _g133422133426_)))
                       _methods133408_
                       _$methods133412_))
                 (_slots133431_
                  (let () (declare (not safe)) (hash-keys _slot-refs131008_)))
                 (_$slots133435_
                  (map (lambda (_id133433_)
                         (let ((__tmp135028 (gensym _id133433_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp135028)))
                       _slots133431_))
                 (_g135029_
                  (for-each
                   (lambda (_g133436133439_ _g133437133441_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs131008_
                        _g133436133439_
                        _g133437133441_)))
                   _slots133431_
                   _$slots133435_))
                 (_slots-bind133452_
                  (map (lambda (_g133444133447_ _g133445133449_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130918_
                            _$klass133404_
                            _g133444133447_
                            _g133445133449_)))
                       _slots133431_
                       _$slots133435_))
                 (_specializer-lambda-expr133525_
                  (let* ((_g133454133468_
                          (lambda (_g133455133465_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133455133465_))))
                         (_g133453133522_
                          (lambda (_g133455133471_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133455133471_))
                                (let ((_e133460133473_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133455133471_))))
                                  (let ((_hd133459133476_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133460133473_)))
                                        (_tl133458133478_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133460133473_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133458133478_))
                                        (let ((_e133463133481_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133458133478_))))
                                          (let ((_hd133462133484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133463133481_)))
                                                (_tl133461133486_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133463133481_))))
                                            ((lambda (_L133489_ _L133490_)
                                               (let* ((_self133513_
                                                       (list-ref
                                                        _L133490_
                                                        _self-index132962_))
                                                      (_body133519_
                                                       (map (lambda (_g133514133516_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133514133516_
                         _self133513_
                         _$klass133404_
                         _method-calls131007_
                         _slot-refs131008_)))
                    _L133489_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp135030
                                                        (let ((__tmp135031
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133490_ _body133519_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp135031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp135030
                                                    _L133187_))))
                                             _tl133461133486_
                                             _hd133462133484_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133454133468_ _g133455133471_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133454133468_ _g133455133471_))))))
                    (declare (not safe))
                    (_g133453133522_ _L133187_)))
                 (_specializer-case-lambda-expr133660_
                  (let* ((_g133527133546_
                          (lambda (_g133528133543_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133528133543_))))
                         (_g133526133657_
                          (lambda (_g133528133549_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133528133549_))
                                (let ((_e133532133551_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133528133549_))))
                                  (let ((_hd133531133554_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133532133551_)))
                                        (_tl133530133556_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133532133551_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133530133556_))
                                        (let ((_g135032_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133530133556_
                                                  '0))))
                                          (begin
                                            (let ((_g135033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g135032_)
                                                         (##vector-length
                                                          _g135032_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g135033_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g135033_)))
                                            (let ((_target133533133559_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135032_
                                                      0)))
                                                  (_tl133535133561_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g135032_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133535133561_))
                                                  (letrec ((_loop133536133564_
                                                            (lambda (_hd133534133567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133540133569_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133534133567_))
                          (let ((_e133537133572_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133534133567_))))
                            (let ((_lp-hd133538133575_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133537133572_)))
                                  (_lp-tl133539133577_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133537133572_))))
                              (let ((__tmp135036
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133538133575_
                                             _clause133540133569_))))
                                (declare (not safe))
                                (_loop133536133564_
                                 _lp-tl133539133577_
                                 __tmp135036))))
                          (let ((_clause133541133580_
                                 (reverse _clause133540133569_)))
                            ((lambda (_L133583_)
                               (let* ((_clauses133655_
                                       (map (lambda (_clause133597_)
                                              (let* ((_g133599133610_
                                                      (lambda (_g133600133607_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133600133607_))))
                                                     (_g133598133645_
                                                      (lambda (_g133600133613_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133600133613_))
                                                            (let ((_e133605133615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133600133613_))))
                      (let ((_hd133604133618_
                             (let ()
                               (declare (not safe))
                               (##car _e133605133615_)))
                            (_tl133603133620_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133605133615_))))
                        ((lambda (_L133623_ _L133624_)
                           (let* ((_self133636_
                                   (list-ref _L133624_ _self-index132962_))
                                  (_body133642_
                                   (map (lambda (_g133637133639_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g133637133639_
                                             _self133636_
                                             _$klass133404_
                                             _method-calls131007_
                                             _slot-refs131008_)))
                                        _L133623_)))
                             (let ()
                               (declare (not safe))
                               (cons _L133624_ _body133642_))))
                         _tl133603133620_
                         _hd133604133618_)))
                    (let ()
                      (declare (not safe))
                      (_g133599133610_ _g133600133613_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133598133645_
                                                 _clause133597_)))
                                            (let ((__tmp135034
                                                   (lambda (_g133647133650_
                                                            _g133648133652_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g133647133650_
                                                             _g133648133652_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp135034
                                                      '()
                                                      _L133583_))))
                                      (__tmp135035
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses133655_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp135035
                                  _L133186_)))
                             _clause133541133580_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133536133564_
                                                       _target133533133559_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133527133546_
                                                     _g133528133549_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133527133546_ _g133528133549_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133527133546_ _g133528133549_))))))
                    (declare (not safe))
                    (_g133526133657_ _L133186_)))
                 (_specializer-impl133662_
                  (let ((__tmp135037
                         (let ((__tmp135038
                                (let ((__tmp135040
                                       (let ((__tmp135041
                                              (let ((__tmp135058
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L132663_ '())))
                                                    (__tmp135042
                                                     (let ((__tmp135043
                                                            (let ((__tmp135044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135046
                                  (let ((__tmp135047
                                         (let ((__tmp135057
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132662_ '())))
                                               (__tmp135048
                                                (let ((__tmp135049
                                                       (let ((__tmp135050
                                                              (let ((__tmp135051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135053
                                    (let ((__tmp135054
                                           (let ((__tmp135056
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L133188_ '())))
                                                 (__tmp135055
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133525_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp135056 __tmp135055))))
                                      (declare (not safe))
                                      (cons __tmp135054 '())))
                                   (__tmp135052
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr133660_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp135053 __tmp135052))))
                        (declare (not safe))
                        (cons '%#let-values __tmp135051))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp135050 _stx130915_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135049 '()))))
                                           (declare (not safe))
                                           (cons __tmp135057 __tmp135048))))
                                    (declare (not safe))
                                    (cons __tmp135047 '())))
                                 (__tmp135045
                                  (let ()
                                    (declare (not safe))
                                    (cons _L132660_ '()))))
                             (declare (not safe))
                             (cons __tmp135046 __tmp135045))))
                      (declare (not safe))
                      (cons '%#let-values __tmp135044))))
               (declare (not safe))
               (cons __tmp135043 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135058
                                                      __tmp135042))))
                                         (declare (not safe))
                                         (cons __tmp135041 '())))
                                      (__tmp135039
                                       (let ()
                                         (declare (not safe))
                                         (cons _L132659_ '()))))
                                  (declare (not safe))
                                  (cons __tmp135040 __tmp135039))))
                           (declare (not safe))
                           (cons '%#let-values __tmp135038))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp135037 _stx130915_)))
                 (_specializer-impl133664_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130919_
                     _$klass133404_
                     _$method-table133406_
                     _methods-bind133429_
                     _slots-bind133452_
                     _specializer-impl133662_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp135060
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130988_)))
                                                          (__tmp135059
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133402_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp135060
                                                       '" => "
                                                       __tmp135059))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130920_
                                                       _L130988_
                                                       _specializer-id133402_
                                                       _specializer-impl133664_)))))
                                            _hd133119133181_
                                            _hd133116133173_
                                            _hd133113133165_)
                                           (let ()
                                             (declare (not safe))
                                             (_g133095133125_
                                              _g133096133128_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g133095133125_ _g133096133128_)))
                               (let ()
                                 (declare (not safe))
                                 (_g133095133125_ _g133096133128_)))
                           (let ()
                             (declare (not safe))
                             (_g133095133125_ _g133096133128_)))))
                   (let ()
                     (declare (not safe))
                     (_g133095133125_ _g133096133128_)))
               (let ()
                 (declare (not safe))
                 (_g133095133125_ _g133096133128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g133095133125_
                                                  _g133096133128_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g133095133125_ _g133096133128_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g133095133125_ _g133096133128_)))))
                       (let ()
                         (declare (not safe))
                         (_g133095133125_ _g133096133128_)))))
               (let ()
                 (declare (not safe))
                 (_g133095133125_ _g133096133128_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g133094133667_ _L132661_))
                                         _stx130915_))))
                             _hd132758132881_
                             _kw-ref132756132902_
                             _hd132746132868_
                             _hd132737132844_
                             _hd132728132820_)
                            (let ()
                              (declare (not safe))
                              (_g132702132764_ _g132703132767_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132751132886_
                                                   _target132748132873_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132702132764_
                                                 _g132703132767_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132702132764_ _g132703132767_))))))
                            (let ()
                              (declare (not safe))
                              (_g132702132764_ _g132703132767_)))
                        (let ()
                          (declare (not safe))
                          (_g132702132764_ _g132703132767_)))
                    (let ()
                      (declare (not safe))
                      (_g132702132764_ _g132703132767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132702132764_
                                                       _g132703132767_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132702132764_
                                                   _g132703132767_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132702132764_
                                               _g132703132767_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132702132764_ _g132703132767_)))))
                            (let ()
                              (declare (not safe))
                              (_g132702132764_ _g132703132767_)))
                        (let ()
                          (declare (not safe))
                          (_g132702132764_ _g132703132767_)))))
                (let ()
                  (declare (not safe))
                  (_g132702132764_ _g132703132767_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132702132764_
                                                       _g132703132767_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132702132764_
                                                   _g132703132767_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132702132764_ _g132703132767_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132702132764_ _g132703132767_)))
                            (let ()
                              (declare (not safe))
                              (_g132702132764_ _g132703132767_)))))
                    (let ()
                      (declare (not safe))
                      (_g132702132764_ _g132703132767_)))
                (let ()
                  (declare (not safe))
                  (_g132702132764_ _g132703132767_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132702132764_
                                                       _g132703132767_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132702132764_
                                               _g132703132767_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132702132764_ _g132703132767_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132702132764_ _g132703132767_)))
                            (let ()
                              (declare (not safe))
                              (_g132702132764_ _g132703132767_)))))
                    (let ()
                      (declare (not safe))
                      (_g132702132764_ _g132703132767_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132702132764_
                                                       _g132703132767_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132702132764_
                                               _g132703132767_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132702132764_ _g132703132767_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132702132764_ _g132703132767_)))))
                            (let ()
                              (declare (not safe))
                              (_g132702132764_ _g132703132767_))))))
                (declare (not safe))
                (_g132701133670_ _L132660_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132536132654_
                                                    _hd132533132646_
                                                    _hd132530132638_
                                                    _hd132527132630_
                                                    _hd132509132582_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132489132542_
                                                      _g132490132545_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132489132542_
                                              _g132490132545_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132489132542_ _g132490132545_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132489132542_ _g132490132545_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132489132542_ _g132490132545_)))))
                       (let ()
                         (declare (not safe))
                         (_g132489132542_ _g132490132545_)))
                   (let ()
                     (declare (not safe))
                     (_g132489132542_ _g132490132545_)))
               (let ()
                 (declare (not safe))
                 (_g132489132542_ _g132490132545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132489132542_
                                                  _g132490132545_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132489132542_
                                              _g132490132545_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132489132542_ _g132490132545_)))))
                           (let ()
                             (declare (not safe))
                             (_g132489132542_ _g132490132545_)))))
                   (let ()
                     (declare (not safe))
                     (_g132489132542_ _g132490132545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132489132542_
                                                      _g132490132545_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132489132542_
                                                  _g132490132545_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132489132542_
                                              _g132490132545_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132489132542_ _g132490132545_)))))
                           (let ()
                             (declare (not safe))
                             (_g132489132542_ _g132490132545_)))
                       (let ()
                         (declare (not safe))
                         (_g132489132542_ _g132490132545_)))))
               (let ()
                 (declare (not safe))
                 (_g132489132542_ _g132490132545_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132489132542_
                                                  _g132490132545_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132489132542_ _g132490132545_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132489132542_ _g132490132545_)))
                           (let ()
                             (declare (not safe))
                             (_g132489132542_ _g132490132545_)))
                       (let ()
                         (declare (not safe))
                         (_g132489132542_ _g132490132545_)))))
               (let ()
                 (declare (not safe))
                 (_g132489132542_ _g132490132545_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132488133673_ _L130987_))
                                         _stx130915_))))))))
                  (___kont133853133854_ (lambda () _stx130915_)))
              (let ((___match133882133883_
                     (lambda (_e130929130955_
                              _hd130928130958_
                              _tl130927130960_
                              _e130932130963_
                              _hd130931130966_
                              _tl130930130968_
                              _e130935130971_
                              _hd130934130974_
                              _tl130933130976_
                              _e130938130979_
                              _hd130937130982_
                              _tl130936130984_)
                       (let ((_L130987_ _hd130937130982_)
                             (_L130988_ _hd130934130974_))
                         (if (let ((__tmp135149
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130988_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp135149))
                             (___kont133851133852_ _L130987_ _L130988_)
                             (___kont133853133854_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133849133850_))
                    (let ((_e130929130955_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133849133850_))))
                      (let ((_tl130927130960_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130929130955_)))
                            (_hd130928130958_
                             (let ()
                               (declare (not safe))
                               (##car _e130929130955_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130927130960_))
                            (let ((_e130932130963_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130927130960_))))
                              (let ((_tl130930130968_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130932130963_)))
                                    (_hd130931130966_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130932130963_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130931130966_))
                                    (let ((_e130935130971_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130931130966_))))
                                      (let ((_tl130933130976_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130935130971_)))
                                            (_hd130934130974_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130935130971_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130933130976_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130930130968_))
                                                (let ((_e130938130979_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130930130968_))))
                                                  (let ((_tl130936130984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130938130979_)))
                                                        (_hd130937130982_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130938130979_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130936130984_))
                                                        (___match133882133883_
                                                         _e130929130955_
                                                         _hd130928130958_
                                                         _tl130927130960_
                                                         _e130932130963_
                                                         _hd130931130966_
                                                         _tl130930130968_
                                                         _e130935130971_
                                                         _hd130934130974_
                                                         _tl130933130976_
                                                         _e130938130979_
                                                         _hd130937130982_
                                                         _tl130936130984_)
                                                        (___kont133853133854_))))
                                                (___kont133853133854_))
                                            (___kont133853133854_))))
                                    (___kont133853133854_))))
                            (___kont133853133854_))))
                    (___kont133853133854_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx129874_ _self129875_ _methods129876_ _slots129877_)
        (let* ((___stx133885133886_ _stx129874_)
               (_g129885130107_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133885133886_)))))
          (let ((___kont133887133888_
                 (lambda (_L130864_ _L130865_ _L130866_ _L130867_)
                   (let ((__tmp135150
                          (let () (declare (not safe)) (gx#stx-e _L130865_))))
                     (declare (not safe))
                     (hash-put! _methods129876_ __tmp135150 '#t))
                   (for-each
                    (lambda (_g130900130902_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130900130902_
                         _self129875_
                         _methods129876_
                         _slots129877_)))
                    (let ((__tmp135151
                           (lambda (_g130904130907_ _g130905130909_)
                             (let ()
                               (declare (not safe))
                               (cons _g130904130907_ _g130905130909_)))))
                      (declare (not safe))
                      (foldr1 __tmp135151 '() _L130864_)))))
                (___kont133891133892_
                 (lambda (_L130699_ _L130700_ _L130701_ _L130702_ _L130703_)
                   (let ((__tmp135152
                          (let () (declare (not safe)) (gx#stx-e _L130700_))))
                     (declare (not safe))
                     (hash-put! _methods129876_ __tmp135152 '#t))
                   (for-each
                    (lambda (_g130743130745_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130743130745_
                         _self129875_
                         _methods129876_
                         _slots129877_)))
                    (let ((__tmp135153
                           (lambda (_g130747130750_ _g130748130752_)
                             (let ()
                               (declare (not safe))
                               (cons _g130747130750_ _g130748130752_)))))
                      (declare (not safe))
                      (foldr1 __tmp135153 '() _L130699_)))))
                (___kont133895133896_
                 (lambda (_L130532_ _L130533_ _L130534_)
                   (let ((__tmp135154
                          (let () (declare (not safe)) (gx#stx-e _L130532_))))
                     (declare (not safe))
                     (hash-put! _slots129877_ __tmp135154 '#t))))
                (___kont133897133898_
                 (lambda (_L130409_ _L130410_ _L130411_ _L130412_)
                   (let ((__tmp135155
                          (let () (declare (not safe)) (gx#stx-e _L130410_))))
                     (declare (not safe))
                     (hash-put! _slots129877_ __tmp135155 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130409_
                      _self129875_
                      _methods129876_
                      _slots129877_))))
                (___kont133899133900_
                 (lambda (_L130283_ _L130284_)
                   (let* ((_accessor130306_
                           (let ((__tmp135156
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130284_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135156)))
                          (_klass130308_
                           (let ((__tmp135157
                                  (##structure-ref
                                   _accessor130306_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129874_
                              __tmp135157)))
                          (_slot130310_
                           (##structure-ref
                            _accessor130306_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp135159
                                     (##structure-ref
                                      _accessor130306_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135159))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130308_
                                     _slot130310_))
                                  (##structure-ref
                                   _klass130308_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp135158
                                (##structure-ref
                                 _accessor130306_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots129877_ __tmp135158 '#t))))))
                (___kont133901133902_
                 (lambda (_L130183_ _L130184_ _L130185_)
                   (let* ((_mutator130212_
                           (let ((__tmp135160
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130185_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp135160)))
                          (_klass130214_
                           (let ((__tmp135161
                                  (##structure-ref
                                   _mutator130212_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129874_
                              __tmp135161)))
                          (_slot130216_
                           (##structure-ref
                            _mutator130212_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp135162
                                     (##structure-ref
                                      _mutator130212_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp135162))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130214_
                                     _slot130216_))
                                  (##structure-ref
                                   _klass130214_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots129877_ _slot130216_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L130183_
                        _self129875_
                        _methods129876_
                        _slots129877_)))))
                (___kont133903133904_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx129874_
                      _self129875_
                      _methods129876_
                      _slots129877_)))))
            (let* ((___match134384134385_
                    (lambda (_e130081130119_
                             _hd130080130122_
                             _tl130079130124_
                             _e130084130127_
                             _hd130083130130_
                             _tl130082130132_
                             _e130087130135_
                             _hd130086130138_
                             _tl130085130140_
                             _e130090130143_
                             _hd130089130146_
                             _tl130088130148_
                             _e130093130151_
                             _hd130092130154_
                             _tl130091130156_
                             _e130096130159_
                             _hd130095130162_
                             _tl130094130164_
                             _e130099130167_
                             _hd130098130170_
                             _tl130097130172_
                             _e130102130175_
                             _hd130101130178_
                             _tl130100130180_)
                      (let ((_L130183_ _hd130101130178_)
                            (_L130184_ _hd130098130170_)
                            (_L130185_ _hd130089130146_))
                        (if (and (let ((__tmp135163
                                        (let ((__tmp135164
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130185_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135164))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135163
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130184_
                                    _self129875_)))
                            (___kont133901133902_
                             _L130183_
                             _L130184_
                             _L130185_)
                            (___kont133903133904_)))))
                   (___match134382134383_
                    (lambda (_e130081130119_
                             _hd130080130122_
                             _tl130079130124_
                             _e130084130127_
                             _hd130083130130_
                             _tl130082130132_
                             _e130087130135_
                             _hd130086130138_
                             _tl130085130140_
                             _e130090130143_
                             _hd130089130146_
                             _tl130088130148_
                             _e130093130151_
                             _hd130092130154_
                             _tl130091130156_
                             _e130096130159_
                             _hd130095130162_
                             _tl130094130164_
                             _e130099130167_
                             _hd130098130170_
                             _tl130097130172_
                             _e130102130175_
                             _hd130101130178_
                             _tl130100130180_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130100130180_))
                          (___match134384134385_
                           _e130081130119_
                           _hd130080130122_
                           _tl130079130124_
                           _e130084130127_
                           _hd130083130130_
                           _tl130082130132_
                           _e130087130135_
                           _hd130086130138_
                           _tl130085130140_
                           _e130090130143_
                           _hd130089130146_
                           _tl130088130148_
                           _e130093130151_
                           _hd130092130154_
                           _tl130091130156_
                           _e130096130159_
                           _hd130095130162_
                           _tl130094130164_
                           _e130099130167_
                           _hd130098130170_
                           _tl130097130172_
                           _e130102130175_
                           _hd130101130178_
                           _tl130100130180_)
                          (___kont133903133904_))))
                   (___match134376134377_
                    (lambda (_e130081130119_
                             _hd130080130122_
                             _tl130079130124_
                             _e130084130127_
                             _hd130083130130_
                             _tl130082130132_
                             _e130087130135_
                             _hd130086130138_
                             _tl130085130140_
                             _e130090130143_
                             _hd130089130146_
                             _tl130088130148_
                             _e130093130151_
                             _hd130092130154_
                             _tl130091130156_
                             _e130096130159_
                             _hd130095130162_
                             _tl130094130164_
                             _e130099130167_
                             _hd130098130170_
                             _tl130097130172_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130091130156_))
                          (let ((_e130102130175_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130091130156_))))
                            (let ((_tl130100130180_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130102130175_)))
                                  (_hd130101130178_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130102130175_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130100130180_))
                                  (___match134384134385_
                                   _e130081130119_
                                   _hd130080130122_
                                   _tl130079130124_
                                   _e130084130127_
                                   _hd130083130130_
                                   _tl130082130132_
                                   _e130087130135_
                                   _hd130086130138_
                                   _tl130085130140_
                                   _e130090130143_
                                   _hd130089130146_
                                   _tl130088130148_
                                   _e130093130151_
                                   _hd130092130154_
                                   _tl130091130156_
                                   _e130096130159_
                                   _hd130095130162_
                                   _tl130094130164_
                                   _e130099130167_
                                   _hd130098130170_
                                   _tl130097130172_
                                   _e130102130175_
                                   _hd130101130178_
                                   _tl130100130180_)
                                  (___kont133903133904_))))
                          (___kont133903133904_))))
                   (___match134322134323_
                    (lambda (_e130057130227_
                             _hd130056130230_
                             _tl130055130232_
                             _e130060130235_
                             _hd130059130238_
                             _tl130058130240_
                             _e130063130243_
                             _hd130062130246_
                             _tl130061130248_
                             _e130066130251_
                             _hd130065130254_
                             _tl130064130256_
                             _e130069130259_
                             _hd130068130262_
                             _tl130067130264_
                             _e130072130267_
                             _hd130071130270_
                             _tl130070130272_
                             _e130075130275_
                             _hd130074130278_
                             _tl130073130280_)
                      (let ((_L130283_ _hd130074130278_)
                            (_L130284_ _hd130065130254_))
                        (if (and (let ((__tmp135165
                                        (let ((__tmp135166
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130284_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp135166))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp135165
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130283_
                                    _self129875_)))
                            (___kont133899133900_ _L130283_ _L130284_)
                            (___kont133903133904_)))))
                   (___match134320134321_
                    (lambda (_e130057130227_
                             _hd130056130230_
                             _tl130055130232_
                             _e130060130235_
                             _hd130059130238_
                             _tl130058130240_
                             _e130063130243_
                             _hd130062130246_
                             _tl130061130248_
                             _e130066130251_
                             _hd130065130254_
                             _tl130064130256_
                             _e130069130259_
                             _hd130068130262_
                             _tl130067130264_
                             _e130072130267_
                             _hd130071130270_
                             _tl130070130272_
                             _e130075130275_
                             _hd130074130278_
                             _tl130073130280_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130067130264_))
                          (___match134322134323_
                           _e130057130227_
                           _hd130056130230_
                           _tl130055130232_
                           _e130060130235_
                           _hd130059130238_
                           _tl130058130240_
                           _e130063130243_
                           _hd130062130246_
                           _tl130061130248_
                           _e130066130251_
                           _hd130065130254_
                           _tl130064130256_
                           _e130069130259_
                           _hd130068130262_
                           _tl130067130264_
                           _e130072130267_
                           _hd130071130270_
                           _tl130070130272_
                           _e130075130275_
                           _hd130074130278_
                           _tl130073130280_)
                          (___match134376134377_
                           _e130057130227_
                           _hd130056130230_
                           _tl130055130232_
                           _e130060130235_
                           _hd130059130238_
                           _tl130058130240_
                           _e130063130243_
                           _hd130062130246_
                           _tl130061130248_
                           _e130066130251_
                           _hd130065130254_
                           _tl130064130256_
                           _e130069130259_
                           _hd130068130262_
                           _tl130067130264_
                           _e130072130267_
                           _hd130071130270_
                           _tl130070130272_
                           _e130075130275_
                           _hd130074130278_
                           _tl130073130280_))))
                   (___match134266134267_
                    (lambda (_e130022130321_
                             _hd130021130324_
                             _tl130020130326_
                             _e130025130329_
                             _hd130024130332_
                             _tl130023130334_
                             _e130028130337_
                             _hd130027130340_
                             _tl130026130342_
                             _e130031130345_
                             _hd130030130348_
                             _tl130029130350_
                             _e130034130353_
                             _hd130033130356_
                             _tl130032130358_
                             _e130037130361_
                             _hd130036130364_
                             _tl130035130366_
                             _e130040130369_
                             _hd130039130372_
                             _tl130038130374_
                             _e130043130377_
                             _hd130042130380_
                             _tl130041130382_
                             _e130046130385_
                             _hd130045130388_
                             _tl130044130390_
                             _e130049130393_
                             _hd130048130396_
                             _tl130047130398_
                             _e130052130401_
                             _hd130051130404_
                             _tl130050130406_)
                      (let ((_L130409_ _hd130051130404_)
                            (_L130410_ _hd130048130396_)
                            (_L130411_ _hd130039130372_)
                            (_L130412_ _hd130030130348_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130412_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130412_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130411_
                                    _self129875_)))
                            (___kont133897133898_
                             _L130409_
                             _L130410_
                             _L130411_
                             _L130412_)
                            (___kont133903133904_)))))
                   (___match134258134259_
                    (lambda (_e130022130321_
                             _hd130021130324_
                             _tl130020130326_
                             _e130025130329_
                             _hd130024130332_
                             _tl130023130334_
                             _e130028130337_
                             _hd130027130340_
                             _tl130026130342_
                             _e130031130345_
                             _hd130030130348_
                             _tl130029130350_
                             _e130034130353_
                             _hd130033130356_
                             _tl130032130358_
                             _e130037130361_
                             _hd130036130364_
                             _tl130035130366_
                             _e130040130369_
                             _hd130039130372_
                             _tl130038130374_
                             _e130043130377_
                             _hd130042130380_
                             _tl130041130382_
                             _e130046130385_
                             _hd130045130388_
                             _tl130044130390_
                             _e130049130393_
                             _hd130048130396_
                             _tl130047130398_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl130041130382_))
                          (let ((_e130052130401_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl130041130382_))))
                            (let ((_tl130050130406_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130052130401_)))
                                  (_hd130051130404_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130052130401_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl130050130406_))
                                  (___match134266134267_
                                   _e130022130321_
                                   _hd130021130324_
                                   _tl130020130326_
                                   _e130025130329_
                                   _hd130024130332_
                                   _tl130023130334_
                                   _e130028130337_
                                   _hd130027130340_
                                   _tl130026130342_
                                   _e130031130345_
                                   _hd130030130348_
                                   _tl130029130350_
                                   _e130034130353_
                                   _hd130033130356_
                                   _tl130032130358_
                                   _e130037130361_
                                   _hd130036130364_
                                   _tl130035130366_
                                   _e130040130369_
                                   _hd130039130372_
                                   _tl130038130374_
                                   _e130043130377_
                                   _hd130042130380_
                                   _tl130041130382_
                                   _e130046130385_
                                   _hd130045130388_
                                   _tl130044130390_
                                   _e130049130393_
                                   _hd130048130396_
                                   _tl130047130398_
                                   _e130052130401_
                                   _hd130051130404_
                                   _tl130050130406_)
                                  (___kont133903133904_))))
                          (___match134382134383_
                           _e130022130321_
                           _hd130021130324_
                           _tl130020130326_
                           _e130025130329_
                           _hd130024130332_
                           _tl130023130334_
                           _e130028130337_
                           _hd130027130340_
                           _tl130026130342_
                           _e130031130345_
                           _hd130030130348_
                           _tl130029130350_
                           _e130034130353_
                           _hd130033130356_
                           _tl130032130358_
                           _e130037130361_
                           _hd130036130364_
                           _tl130035130366_
                           _e130040130369_
                           _hd130039130372_
                           _tl130038130374_
                           _e130043130377_
                           _hd130042130380_
                           _tl130041130382_))))
                   (___match134180134181_
                    (lambda (_e129988130452_
                             _hd129987130455_
                             _tl129986130457_
                             _e129991130460_
                             _hd129990130463_
                             _tl129989130465_
                             _e129994130468_
                             _hd129993130471_
                             _tl129992130473_
                             _e129997130476_
                             _hd129996130479_
                             _tl129995130481_
                             _e130000130484_
                             _hd129999130487_
                             _tl129998130489_
                             _e130003130492_
                             _hd130002130495_
                             _tl130001130497_
                             _e130006130500_
                             _hd130005130503_
                             _tl130004130505_
                             _e130009130508_
                             _hd130008130511_
                             _tl130007130513_
                             _e130012130516_
                             _hd130011130519_
                             _tl130010130521_
                             _e130015130524_
                             _hd130014130527_
                             _tl130013130529_)
                      (let ((_L130532_ _hd130014130527_)
                            (_L130533_ _hd130005130503_)
                            (_L130534_ _hd129996130479_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130534_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130534_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130533_
                                    _self129875_)))
                            (___kont133895133896_
                             _L130532_
                             _L130533_
                             _L130534_)
                            (___match134384134385_
                             _e129988130452_
                             _hd129987130455_
                             _tl129986130457_
                             _e129991130460_
                             _hd129990130463_
                             _tl129989130465_
                             _e129994130468_
                             _hd129993130471_
                             _tl129992130473_
                             _e129997130476_
                             _hd129996130479_
                             _tl129995130481_
                             _e130000130484_
                             _hd129999130487_
                             _tl129998130489_
                             _e130003130492_
                             _hd130002130495_
                             _tl130001130497_
                             _e130006130500_
                             _hd130005130503_
                             _tl130004130505_
                             _e130009130508_
                             _hd130008130511_
                             _tl130007130513_)))))
                   (___match134178134179_
                    (lambda (_e129988130452_
                             _hd129987130455_
                             _tl129986130457_
                             _e129991130460_
                             _hd129990130463_
                             _tl129989130465_
                             _e129994130468_
                             _hd129993130471_
                             _tl129992130473_
                             _e129997130476_
                             _hd129996130479_
                             _tl129995130481_
                             _e130000130484_
                             _hd129999130487_
                             _tl129998130489_
                             _e130003130492_
                             _hd130002130495_
                             _tl130001130497_
                             _e130006130500_
                             _hd130005130503_
                             _tl130004130505_
                             _e130009130508_
                             _hd130008130511_
                             _tl130007130513_
                             _e130012130516_
                             _hd130011130519_
                             _tl130010130521_
                             _e130015130524_
                             _hd130014130527_
                             _tl130013130529_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl130007130513_))
                          (___match134180134181_
                           _e129988130452_
                           _hd129987130455_
                           _tl129986130457_
                           _e129991130460_
                           _hd129990130463_
                           _tl129989130465_
                           _e129994130468_
                           _hd129993130471_
                           _tl129992130473_
                           _e129997130476_
                           _hd129996130479_
                           _tl129995130481_
                           _e130000130484_
                           _hd129999130487_
                           _tl129998130489_
                           _e130003130492_
                           _hd130002130495_
                           _tl130001130497_
                           _e130006130500_
                           _hd130005130503_
                           _tl130004130505_
                           _e130009130508_
                           _hd130008130511_
                           _tl130007130513_
                           _e130012130516_
                           _hd130011130519_
                           _tl130010130521_
                           _e130015130524_
                           _hd130014130527_
                           _tl130013130529_)
                          (___match134258134259_
                           _e129988130452_
                           _hd129987130455_
                           _tl129986130457_
                           _e129991130460_
                           _hd129990130463_
                           _tl129989130465_
                           _e129994130468_
                           _hd129993130471_
                           _tl129992130473_
                           _e129997130476_
                           _hd129996130479_
                           _tl129995130481_
                           _e130000130484_
                           _hd129999130487_
                           _tl129998130489_
                           _e130003130492_
                           _hd130002130495_
                           _tl130001130497_
                           _e130006130500_
                           _hd130005130503_
                           _tl130004130505_
                           _e130009130508_
                           _hd130008130511_
                           _tl130007130513_
                           _e130012130516_
                           _hd130011130519_
                           _tl130010130521_
                           _e130015130524_
                           _hd130014130527_
                           _tl130013130529_))))
                   (___match134168134169_
                    (lambda (_e129988130452_
                             _hd129987130455_
                             _tl129986130457_
                             _e129991130460_
                             _hd129990130463_
                             _tl129989130465_
                             _e129994130468_
                             _hd129993130471_
                             _tl129992130473_
                             _e129997130476_
                             _hd129996130479_
                             _tl129995130481_
                             _e130000130484_
                             _hd129999130487_
                             _tl129998130489_
                             _e130003130492_
                             _hd130002130495_
                             _tl130001130497_
                             _e130006130500_
                             _hd130005130503_
                             _tl130004130505_
                             _e130009130508_
                             _hd130008130511_
                             _tl130007130513_
                             _e130012130516_
                             _hd130011130519_
                             _tl130010130521_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd130011130519_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl130010130521_))
                              (let ((_e130015130524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl130010130521_))))
                                (let ((_tl130013130529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130015130524_)))
                                      (_hd130014130527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130015130524_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130013130529_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl130007130513_))
                                          (___match134180134181_
                                           _e129988130452_
                                           _hd129987130455_
                                           _tl129986130457_
                                           _e129991130460_
                                           _hd129990130463_
                                           _tl129989130465_
                                           _e129994130468_
                                           _hd129993130471_
                                           _tl129992130473_
                                           _e129997130476_
                                           _hd129996130479_
                                           _tl129995130481_
                                           _e130000130484_
                                           _hd129999130487_
                                           _tl129998130489_
                                           _e130003130492_
                                           _hd130002130495_
                                           _tl130001130497_
                                           _e130006130500_
                                           _hd130005130503_
                                           _tl130004130505_
                                           _e130009130508_
                                           _hd130008130511_
                                           _tl130007130513_
                                           _e130012130516_
                                           _hd130011130519_
                                           _tl130010130521_
                                           _e130015130524_
                                           _hd130014130527_
                                           _tl130013130529_)
                                          (___match134258134259_
                                           _e129988130452_
                                           _hd129987130455_
                                           _tl129986130457_
                                           _e129991130460_
                                           _hd129990130463_
                                           _tl129989130465_
                                           _e129994130468_
                                           _hd129993130471_
                                           _tl129992130473_
                                           _e129997130476_
                                           _hd129996130479_
                                           _tl129995130481_
                                           _e130000130484_
                                           _hd129999130487_
                                           _tl129998130489_
                                           _e130003130492_
                                           _hd130002130495_
                                           _tl130001130497_
                                           _e130006130500_
                                           _hd130005130503_
                                           _tl130004130505_
                                           _e130009130508_
                                           _hd130008130511_
                                           _tl130007130513_
                                           _e130012130516_
                                           _hd130011130519_
                                           _tl130010130521_
                                           _e130015130524_
                                           _hd130014130527_
                                           _tl130013130529_))
                                      (___match134382134383_
                                       _e129988130452_
                                       _hd129987130455_
                                       _tl129986130457_
                                       _e129991130460_
                                       _hd129990130463_
                                       _tl129989130465_
                                       _e129994130468_
                                       _hd129993130471_
                                       _tl129992130473_
                                       _e129997130476_
                                       _hd129996130479_
                                       _tl129995130481_
                                       _e130000130484_
                                       _hd129999130487_
                                       _tl129998130489_
                                       _e130003130492_
                                       _hd130002130495_
                                       _tl130001130497_
                                       _e130006130500_
                                       _hd130005130503_
                                       _tl130004130505_
                                       _e130009130508_
                                       _hd130008130511_
                                       _tl130007130513_))))
                              (___match134382134383_
                               _e129988130452_
                               _hd129987130455_
                               _tl129986130457_
                               _e129991130460_
                               _hd129990130463_
                               _tl129989130465_
                               _e129994130468_
                               _hd129993130471_
                               _tl129992130473_
                               _e129997130476_
                               _hd129996130479_
                               _tl129995130481_
                               _e130000130484_
                               _hd129999130487_
                               _tl129998130489_
                               _e130003130492_
                               _hd130002130495_
                               _tl130001130497_
                               _e130006130500_
                               _hd130005130503_
                               _tl130004130505_
                               _e130009130508_
                               _hd130008130511_
                               _tl130007130513_))
                          (___match134382134383_
                           _e129988130452_
                           _hd129987130455_
                           _tl129986130457_
                           _e129991130460_
                           _hd129990130463_
                           _tl129989130465_
                           _e129994130468_
                           _hd129993130471_
                           _tl129992130473_
                           _e129997130476_
                           _hd129996130479_
                           _tl129995130481_
                           _e130000130484_
                           _hd129999130487_
                           _tl129998130489_
                           _e130003130492_
                           _hd130002130495_
                           _tl130001130497_
                           _e130006130500_
                           _hd130005130503_
                           _tl130004130505_
                           _e130009130508_
                           _hd130008130511_
                           _tl130007130513_))))
                   (___match134100134101_
                    (lambda (_e129937130571_
                             _hd129936130574_
                             _tl129935130576_
                             _e129940130579_
                             _hd129939130582_
                             _tl129938130584_
                             _e129943130587_
                             _hd129942130590_
                             _tl129941130592_
                             _e129946130595_
                             _hd129945130598_
                             _tl129944130600_
                             _e129949130603_
                             _hd129948130606_
                             _tl129947130608_
                             _e129952130611_
                             _hd129951130614_
                             _tl129950130616_
                             _e129955130619_
                             _hd129954130622_
                             _tl129953130624_
                             _e129958130627_
                             _hd129957130630_
                             _tl129956130632_
                             _e129961130635_
                             _hd129960130638_
                             _tl129959130640_
                             _e129964130643_
                             _hd129963130646_
                             _tl129962130648_
                             _e129967130651_
                             _hd129966130654_
                             _tl129965130656_
                             _e129970130659_
                             _hd129969130662_
                             _tl129968130664_
                             _e129973130667_
                             _hd129972130670_
                             _tl129971130672_
                             ___splice133893133894_
                             _target129974130675_
                             _tl129976130677_)
                      (letrec ((_loop129977130680_
                                (lambda (_hd129975130683_ _args129981130685_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129975130683_))
                                      (let ((_e129978130688_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129975130683_))))
                                        (let ((_lp-tl129980130693_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129978130688_)))
                                              (_lp-hd129979130691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129978130688_))))
                                          (let ((__tmp135167
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129979130691_
                                                         _args129981130685_))))
                                            (declare (not safe))
                                            (_loop129977130680_
                                             _lp-tl129980130693_
                                             __tmp135167))))
                                      (let ((_args129982130696_
                                             (reverse _args129981130685_)))
                                        (let ((_L130699_ _args129982130696_)
                                              (_L130700_ _hd129972130670_)
                                              (_L130701_ _hd129963130646_)
                                              (_L130702_ _hd129954130622_)
                                              (_L130703_ _hd129945130598_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130703_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130702_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130701_
                                                      _self129875_)))
                                              (___kont133891133892_
                                               _L130699_
                                               _L130700_
                                               _L130701_
                                               _L130702_
                                               _L130703_)
                                              (___kont133903133904_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129977130680_ _target129974130675_ '())))))
                   (___match134058134059_
                    (lambda (_e129937130571_
                             _hd129936130574_
                             _tl129935130576_
                             _e129940130579_
                             _hd129939130582_
                             _tl129938130584_
                             _e129943130587_
                             _hd129942130590_
                             _tl129941130592_
                             _e129946130595_
                             _hd129945130598_
                             _tl129944130600_
                             _e129949130603_
                             _hd129948130606_
                             _tl129947130608_
                             _e129952130611_
                             _hd129951130614_
                             _tl129950130616_
                             _e129955130619_
                             _hd129954130622_
                             _tl129953130624_
                             _e129958130627_
                             _hd129957130630_
                             _tl129956130632_
                             _e129961130635_
                             _hd129960130638_
                             _tl129959130640_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129960130638_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129959130640_))
                              (let ((_e129964130643_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129959130640_))))
                                (let ((_tl129962130648_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129964130643_)))
                                      (_hd129963130646_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129964130643_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129962130648_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129956130632_))
                                          (let ((_e129967130651_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129956130632_))))
                                            (let ((_tl129965130656_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129967130651_)))
                                                  (_hd129966130654_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129967130651_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129966130654_))
                                                  (let ((_e129970130659_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129966130654_))))
                                                    (let ((_tl129968130664_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129970130659_)))
                                                          (_hd129969130662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129970130659_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129969130662_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129969130662_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129968130664_))
                          (let ((_e129973130667_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129968130664_))))
                            (let ((_tl129971130672_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129973130667_)))
                                  (_hd129972130670_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129973130667_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129971130672_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129965130656_))
                                      (let ((___splice133893133894_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129965130656_
                                                '0))))
                                        (let ((_tl129976130677_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133893133894_
                                                  '1)))
                                              (_target129974130675_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133893133894_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129976130677_))
                                              (___match134100134101_
                                               _e129937130571_
                                               _hd129936130574_
                                               _tl129935130576_
                                               _e129940130579_
                                               _hd129939130582_
                                               _tl129938130584_
                                               _e129943130587_
                                               _hd129942130590_
                                               _tl129941130592_
                                               _e129946130595_
                                               _hd129945130598_
                                               _tl129944130600_
                                               _e129949130603_
                                               _hd129948130606_
                                               _tl129947130608_
                                               _e129952130611_
                                               _hd129951130614_
                                               _tl129950130616_
                                               _e129955130619_
                                               _hd129954130622_
                                               _tl129953130624_
                                               _e129958130627_
                                               _hd129957130630_
                                               _tl129956130632_
                                               _e129961130635_
                                               _hd129960130638_
                                               _tl129959130640_
                                               _e129964130643_
                                               _hd129963130646_
                                               _tl129962130648_
                                               _e129967130651_
                                               _hd129966130654_
                                               _tl129965130656_
                                               _e129970130659_
                                               _hd129969130662_
                                               _tl129968130664_
                                               _e129973130667_
                                               _hd129972130670_
                                               _tl129971130672_
                                               ___splice133893133894_
                                               _target129974130675_
                                               _tl129976130677_)
                                              (___kont133903133904_))))
                                      (___kont133903133904_))
                                  (___kont133903133904_))))
                          (___kont133903133904_))
                      (___kont133903133904_))
                  (___kont133903133904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133903133904_))))
                                          (___match134382134383_
                                           _e129937130571_
                                           _hd129936130574_
                                           _tl129935130576_
                                           _e129940130579_
                                           _hd129939130582_
                                           _tl129938130584_
                                           _e129943130587_
                                           _hd129942130590_
                                           _tl129941130592_
                                           _e129946130595_
                                           _hd129945130598_
                                           _tl129944130600_
                                           _e129949130603_
                                           _hd129948130606_
                                           _tl129947130608_
                                           _e129952130611_
                                           _hd129951130614_
                                           _tl129950130616_
                                           _e129955130619_
                                           _hd129954130622_
                                           _tl129953130624_
                                           _e129958130627_
                                           _hd129957130630_
                                           _tl129956130632_))
                                      (___match134382134383_
                                       _e129937130571_
                                       _hd129936130574_
                                       _tl129935130576_
                                       _e129940130579_
                                       _hd129939130582_
                                       _tl129938130584_
                                       _e129943130587_
                                       _hd129942130590_
                                       _tl129941130592_
                                       _e129946130595_
                                       _hd129945130598_
                                       _tl129944130600_
                                       _e129949130603_
                                       _hd129948130606_
                                       _tl129947130608_
                                       _e129952130611_
                                       _hd129951130614_
                                       _tl129950130616_
                                       _e129955130619_
                                       _hd129954130622_
                                       _tl129953130624_
                                       _e129958130627_
                                       _hd129957130630_
                                       _tl129956130632_))))
                              (___match134382134383_
                               _e129937130571_
                               _hd129936130574_
                               _tl129935130576_
                               _e129940130579_
                               _hd129939130582_
                               _tl129938130584_
                               _e129943130587_
                               _hd129942130590_
                               _tl129941130592_
                               _e129946130595_
                               _hd129945130598_
                               _tl129944130600_
                               _e129949130603_
                               _hd129948130606_
                               _tl129947130608_
                               _e129952130611_
                               _hd129951130614_
                               _tl129950130616_
                               _e129955130619_
                               _hd129954130622_
                               _tl129953130624_
                               _e129958130627_
                               _hd129957130630_
                               _tl129956130632_))
                          (___match134168134169_
                           _e129937130571_
                           _hd129936130574_
                           _tl129935130576_
                           _e129940130579_
                           _hd129939130582_
                           _tl129938130584_
                           _e129943130587_
                           _hd129942130590_
                           _tl129941130592_
                           _e129946130595_
                           _hd129945130598_
                           _tl129944130600_
                           _e129949130603_
                           _hd129948130606_
                           _tl129947130608_
                           _e129952130611_
                           _hd129951130614_
                           _tl129950130616_
                           _e129955130619_
                           _hd129954130622_
                           _tl129953130624_
                           _e129958130627_
                           _hd129957130630_
                           _tl129956130632_
                           _e129961130635_
                           _hd129960130638_
                           _tl129959130640_))))
                   (___match133990133991_
                    (lambda (_e129893130760_
                             _hd129892130763_
                             _tl129891130765_
                             _e129896130768_
                             _hd129895130771_
                             _tl129894130773_
                             _e129899130776_
                             _hd129898130779_
                             _tl129897130781_
                             _e129902130784_
                             _hd129901130787_
                             _tl129900130789_
                             _e129905130792_
                             _hd129904130795_
                             _tl129903130797_
                             _e129908130800_
                             _hd129907130803_
                             _tl129906130805_
                             _e129911130808_
                             _hd129910130811_
                             _tl129909130813_
                             _e129914130816_
                             _hd129913130819_
                             _tl129912130821_
                             _e129917130824_
                             _hd129916130827_
                             _tl129915130829_
                             _e129920130832_
                             _hd129919130835_
                             _tl129918130837_
                             ___splice133889133890_
                             _target129921130840_
                             _tl129923130842_)
                      (letrec ((_loop129924130845_
                                (lambda (_hd129922130848_ _args129928130850_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129922130848_))
                                      (let ((_e129925130853_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129922130848_))))
                                        (let ((_lp-tl129927130858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129925130853_)))
                                              (_lp-hd129926130856_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129925130853_))))
                                          (let ((__tmp135168
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129926130856_
                                                         _args129928130850_))))
                                            (declare (not safe))
                                            (_loop129924130845_
                                             _lp-tl129927130858_
                                             __tmp135168))))
                                      (let ((_args129929130861_
                                             (reverse _args129928130850_)))
                                        (let ((_L130864_ _args129929130861_)
                                              (_L130865_ _hd129919130835_)
                                              (_L130866_ _hd129910130811_)
                                              (_L130867_ _hd129901130787_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130867_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130866_
                                                      _self129875_)))
                                              (___kont133887133888_
                                               _L130864_
                                               _L130865_
                                               _L130866_
                                               _L130867_)
                                              (___match134178134179_
                                               _e129893130760_
                                               _hd129892130763_
                                               _tl129891130765_
                                               _e129896130768_
                                               _hd129895130771_
                                               _tl129894130773_
                                               _e129899130776_
                                               _hd129898130779_
                                               _tl129897130781_
                                               _e129902130784_
                                               _hd129901130787_
                                               _tl129900130789_
                                               _e129905130792_
                                               _hd129904130795_
                                               _tl129903130797_
                                               _e129908130800_
                                               _hd129907130803_
                                               _tl129906130805_
                                               _e129911130808_
                                               _hd129910130811_
                                               _tl129909130813_
                                               _e129914130816_
                                               _hd129913130819_
                                               _tl129912130821_
                                               _e129917130824_
                                               _hd129916130827_
                                               _tl129915130829_
                                               _e129920130832_
                                               _hd129919130835_
                                               _tl129918130837_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129924130845_ _target129921130840_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133885133886_))
                  (let ((_e129893130760_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133885133886_))))
                    (let ((_tl129891130765_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129893130760_)))
                          (_hd129892130763_
                           (let ()
                             (declare (not safe))
                             (##car _e129893130760_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129891130765_))
                          (let ((_e129896130768_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129891130765_))))
                            (let ((_tl129894130773_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129896130768_)))
                                  (_hd129895130771_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129896130768_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129895130771_))
                                  (let ((_e129899130776_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129895130771_))))
                                    (let ((_tl129897130781_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129899130776_)))
                                          (_hd129898130779_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129899130776_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129898130779_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129898130779_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129897130781_))
                                                  (let ((_e129902130784_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129897130781_))))
                                                    (let ((_tl129900130789_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129902130784_)))
                                                          (_hd129901130787_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129902130784_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129900130789_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129894130773_))
                      (let ((_e129905130792_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129894130773_))))
                        (let ((_tl129903130797_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129905130792_)))
                              (_hd129904130795_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129905130792_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129904130795_))
                              (let ((_e129908130800_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129904130795_))))
                                (let ((_tl129906130805_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129908130800_)))
                                      (_hd129907130803_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129908130800_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129907130803_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129907130803_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129906130805_))
                                              (let ((_e129911130808_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129906130805_))))
                                                (let ((_tl129909130813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129911130808_)))
                                                      (_hd129910130811_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129911130808_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129909130813_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129903130797_))
                                                          (let ((_e129914130816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129903130797_))))
                    (let ((_tl129912130821_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129914130816_)))
                          (_hd129913130819_
                           (let ()
                             (declare (not safe))
                             (##car _e129914130816_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129913130819_))
                          (let ((_e129917130824_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129913130819_))))
                            (let ((_tl129915130829_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129917130824_)))
                                  (_hd129916130827_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129917130824_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129916130827_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129916130827_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129915130829_))
                                          (let ((_e129920130832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129915130829_))))
                                            (let ((_tl129918130837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129920130832_)))
                                                  (_hd129919130835_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129920130832_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129918130837_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129912130821_))
                                                      (let ((___splice133889133890_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129912130821_ '0))))
                (let ((_tl129923130842_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133889133890_ '1)))
                      (_target129921130840_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133889133890_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129923130842_))
                      (___match133990133991_
                       _e129893130760_
                       _hd129892130763_
                       _tl129891130765_
                       _e129896130768_
                       _hd129895130771_
                       _tl129894130773_
                       _e129899130776_
                       _hd129898130779_
                       _tl129897130781_
                       _e129902130784_
                       _hd129901130787_
                       _tl129900130789_
                       _e129905130792_
                       _hd129904130795_
                       _tl129903130797_
                       _e129908130800_
                       _hd129907130803_
                       _tl129906130805_
                       _e129911130808_
                       _hd129910130811_
                       _tl129909130813_
                       _e129914130816_
                       _hd129913130819_
                       _tl129912130821_
                       _e129917130824_
                       _hd129916130827_
                       _tl129915130829_
                       _e129920130832_
                       _hd129919130835_
                       _tl129918130837_
                       ___splice133889133890_
                       _target129921130840_
                       _tl129923130842_)
                      (___match134178134179_
                       _e129893130760_
                       _hd129892130763_
                       _tl129891130765_
                       _e129896130768_
                       _hd129895130771_
                       _tl129894130773_
                       _e129899130776_
                       _hd129898130779_
                       _tl129897130781_
                       _e129902130784_
                       _hd129901130787_
                       _tl129900130789_
                       _e129905130792_
                       _hd129904130795_
                       _tl129903130797_
                       _e129908130800_
                       _hd129907130803_
                       _tl129906130805_
                       _e129911130808_
                       _hd129910130811_
                       _tl129909130813_
                       _e129914130816_
                       _hd129913130819_
                       _tl129912130821_
                       _e129917130824_
                       _hd129916130827_
                       _tl129915130829_
                       _e129920130832_
                       _hd129919130835_
                       _tl129918130837_))))
              (___match134178134179_
               _e129893130760_
               _hd129892130763_
               _tl129891130765_
               _e129896130768_
               _hd129895130771_
               _tl129894130773_
               _e129899130776_
               _hd129898130779_
               _tl129897130781_
               _e129902130784_
               _hd129901130787_
               _tl129900130789_
               _e129905130792_
               _hd129904130795_
               _tl129903130797_
               _e129908130800_
               _hd129907130803_
               _tl129906130805_
               _e129911130808_
               _hd129910130811_
               _tl129909130813_
               _e129914130816_
               _hd129913130819_
               _tl129912130821_
               _e129917130824_
               _hd129916130827_
               _tl129915130829_
               _e129920130832_
               _hd129919130835_
               _tl129918130837_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134382134383_
                                                   _e129893130760_
                                                   _hd129892130763_
                                                   _tl129891130765_
                                                   _e129896130768_
                                                   _hd129895130771_
                                                   _tl129894130773_
                                                   _e129899130776_
                                                   _hd129898130779_
                                                   _tl129897130781_
                                                   _e129902130784_
                                                   _hd129901130787_
                                                   _tl129900130789_
                                                   _e129905130792_
                                                   _hd129904130795_
                                                   _tl129903130797_
                                                   _e129908130800_
                                                   _hd129907130803_
                                                   _tl129906130805_
                                                   _e129911130808_
                                                   _hd129910130811_
                                                   _tl129909130813_
                                                   _e129914130816_
                                                   _hd129913130819_
                                                   _tl129912130821_))))
                                          (___match134382134383_
                                           _e129893130760_
                                           _hd129892130763_
                                           _tl129891130765_
                                           _e129896130768_
                                           _hd129895130771_
                                           _tl129894130773_
                                           _e129899130776_
                                           _hd129898130779_
                                           _tl129897130781_
                                           _e129902130784_
                                           _hd129901130787_
                                           _tl129900130789_
                                           _e129905130792_
                                           _hd129904130795_
                                           _tl129903130797_
                                           _e129908130800_
                                           _hd129907130803_
                                           _tl129906130805_
                                           _e129911130808_
                                           _hd129910130811_
                                           _tl129909130813_
                                           _e129914130816_
                                           _hd129913130819_
                                           _tl129912130821_))
                                      (___match134058134059_
                                       _e129893130760_
                                       _hd129892130763_
                                       _tl129891130765_
                                       _e129896130768_
                                       _hd129895130771_
                                       _tl129894130773_
                                       _e129899130776_
                                       _hd129898130779_
                                       _tl129897130781_
                                       _e129902130784_
                                       _hd129901130787_
                                       _tl129900130789_
                                       _e129905130792_
                                       _hd129904130795_
                                       _tl129903130797_
                                       _e129908130800_
                                       _hd129907130803_
                                       _tl129906130805_
                                       _e129911130808_
                                       _hd129910130811_
                                       _tl129909130813_
                                       _e129914130816_
                                       _hd129913130819_
                                       _tl129912130821_
                                       _e129917130824_
                                       _hd129916130827_
                                       _tl129915130829_))
                                  (___match134382134383_
                                   _e129893130760_
                                   _hd129892130763_
                                   _tl129891130765_
                                   _e129896130768_
                                   _hd129895130771_
                                   _tl129894130773_
                                   _e129899130776_
                                   _hd129898130779_
                                   _tl129897130781_
                                   _e129902130784_
                                   _hd129901130787_
                                   _tl129900130789_
                                   _e129905130792_
                                   _hd129904130795_
                                   _tl129903130797_
                                   _e129908130800_
                                   _hd129907130803_
                                   _tl129906130805_
                                   _e129911130808_
                                   _hd129910130811_
                                   _tl129909130813_
                                   _e129914130816_
                                   _hd129913130819_
                                   _tl129912130821_))))
                          (___match134382134383_
                           _e129893130760_
                           _hd129892130763_
                           _tl129891130765_
                           _e129896130768_
                           _hd129895130771_
                           _tl129894130773_
                           _e129899130776_
                           _hd129898130779_
                           _tl129897130781_
                           _e129902130784_
                           _hd129901130787_
                           _tl129900130789_
                           _e129905130792_
                           _hd129904130795_
                           _tl129903130797_
                           _e129908130800_
                           _hd129907130803_
                           _tl129906130805_
                           _e129911130808_
                           _hd129910130811_
                           _tl129909130813_
                           _e129914130816_
                           _hd129913130819_
                           _tl129912130821_))))
                  (___match134320134321_
                   _e129893130760_
                   _hd129892130763_
                   _tl129891130765_
                   _e129896130768_
                   _hd129895130771_
                   _tl129894130773_
                   _e129899130776_
                   _hd129898130779_
                   _tl129897130781_
                   _e129902130784_
                   _hd129901130787_
                   _tl129900130789_
                   _e129905130792_
                   _hd129904130795_
                   _tl129903130797_
                   _e129908130800_
                   _hd129907130803_
                   _tl129906130805_
                   _e129911130808_
                   _hd129910130811_
                   _tl129909130813_))
              (___kont133903133904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133903133904_))
                                          (___kont133903133904_))
                                      (___kont133903133904_))))
                              (___kont133903133904_))))
                      (___kont133903133904_))
                  (___kont133903133904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133903133904_))
                                              (___kont133903133904_))
                                          (___kont133903133904_))))
                                  (___kont133903133904_))))
                          (___kont133903133904_))))
                  (___kont133903133904_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx128809_
               _self128810_
               _$klass128811_
               _methods128812_
               _slots128813_)
        (letrec ((_force-e128815_
                  (lambda (_target129872_)
                    (let ((__tmp135169
                           (let ((__tmp135173
                                  (let ((__tmp135174
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp135174)))
                                 (__tmp135170
                                  (let ((__tmp135171
                                         (let ((__tmp135172
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target129872_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp135172))))
                                    (declare (not safe))
                                    (cons __tmp135171 '()))))
                             (declare (not safe))
                             (cons __tmp135173 __tmp135170))))
                      (declare (not safe))
                      (cons '%#call __tmp135169)))))
          (let* ((___stx134387134388_ _stx128809_)
                 (_g128823129045_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134387134388_)))))
            (let ((___kont134389134390_
                   (lambda (_L129818_ _L129819_ _L129820_ _L129821_)
                     (let ((_$method129866_
                            (let ((__tmp135175
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129819_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128812_ __tmp135175)))
                           (_args129867_
                            (map (lambda (_g129854129856_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129854129856_
                                      _self128810_
                                      _$klass128811_
                                      _methods128812_
                                      _slots128813_)))
                                 (let ((__tmp135176
                                        (lambda (_g129858129861_
                                                 _g129859129863_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129858129861_
                                                  _g129859129863_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135176 '() _L129818_)))))
                       (let ((__tmp135177
                              (let ((__tmp135178
                                     (let ((__tmp135182
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128815_
                                               _$method129866_)))
                                           (__tmp135179
                                            (let ((__tmp135180
                                                   (let ((__tmp135181
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self128810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135181))))
                                              (declare (not safe))
                                              (cons __tmp135180
                                                    _args129867_))))
                                       (declare (not safe))
                                       (cons __tmp135182 __tmp135179))))
                                (declare (not safe))
                                (cons '%#call __tmp135178))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135177 _stx128809_)))))
                  (___kont134393134394_
                   (lambda (_L129650_ _L129651_ _L129652_ _L129653_ _L129654_)
                     (let ((_$method129706_
                            (let ((__tmp135183
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129651_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128812_ __tmp135183)))
                           (_args129707_
                            (map (lambda (_g129694129696_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129694129696_
                                      _self128810_
                                      _$klass128811_
                                      _methods128812_
                                      _slots128813_)))
                                 (let ((__tmp135184
                                        (lambda (_g129698129701_
                                                 _g129699129703_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129698129701_
                                                  _g129699129703_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp135184 '() _L129650_)))))
                       (let ((__tmp135185
                              (let ((__tmp135186
                                     (let ((__tmp135192
                                            (let ((__tmp135193
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135193)))
                                           (__tmp135187
                                            (let ((__tmp135191
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128815_
                                                      _$method129706_)))
                                                  (__tmp135188
                                                   (let ((__tmp135189
                                                          (let ((__tmp135190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128810_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135189
                                                           _args129707_))))
                                              (declare (not safe))
                                              (cons __tmp135191 __tmp135188))))
                                       (declare (not safe))
                                       (cons __tmp135192 __tmp135187))))
                                (declare (not safe))
                                (cons '%#call __tmp135186))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135185 _stx128809_)))))
                  (___kont134397134398_
                   (lambda (_L129481_ _L129482_ _L129483_)
                     (let* ((_$field129515_
                             (let ((__tmp135194
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129481_))))
                               (declare (not safe))
                               (hash-ref__0 _slots128813_ __tmp135194)))
                            (__tmp135195
                             (let ((__tmp135196
                                    (let ((__tmp135203
                                           (let ((__tmp135204
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass128811_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp135204)))
                                          (__tmp135197
                                           (let ((__tmp135201
                                                  (let ((__tmp135202
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp135202)))
                                                 (__tmp135198
                                                  (let ((__tmp135199
                                                         (let ((__tmp135200
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self128810_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp135200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135199 '()))))
                                             (declare (not safe))
                                             (cons __tmp135201 __tmp135198))))
                                      (declare (not safe))
                                      (cons __tmp135203 __tmp135197))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp135196))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp135195 _stx128809_))))
                  (___kont134399134400_
                   (lambda (_L129355_ _L129356_ _L129357_ _L129358_)
                     (let ((_$field129393_
                            (let ((__tmp135205
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129356_))))
                              (declare (not safe))
                              (hash-ref__0 _slots128813_ __tmp135205)))
                           (_expr129394_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129355_
                               _self128810_
                               _$klass128811_
                               _methods128812_
                               _slots128813_))))
                       (let ((__tmp135206
                              (let ((__tmp135207
                                     (let ((__tmp135215
                                            (let ((__tmp135216
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass128811_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp135216)))
                                           (__tmp135208
                                            (let ((__tmp135213
                                                   (let ((__tmp135214
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp135214)))
                                                  (__tmp135209
                                                   (let ((__tmp135211
                                                          (let ((__tmp135212
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128810_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp135212)))
                 (__tmp135210
                  (let () (declare (not safe)) (cons _expr129394_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135211
                                                           __tmp135210))))
                                              (declare (not safe))
                                              (cons __tmp135213 __tmp135209))))
                                       (declare (not safe))
                                       (cons __tmp135215 __tmp135208))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp135207))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp135206 _stx128809_)))))
                  (___kont134401134402_
                   (lambda (_L129227_ _L129228_)
                     (let* ((_accessor129250_
                             (let ((__tmp135217
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129228_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135217)))
                            (_klass129252_
                             (let ((__tmp135218
                                    (##structure-ref
                                     _accessor129250_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128809_
                                __tmp135218)))
                            (_slot129254_
                             (##structure-ref
                              _accessor129250_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp135229
                                       (##structure-ref
                                        _accessor129250_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135229))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129252_
                                       _slot129254_))
                                    (##structure-ref
                                     _klass129252_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx128809_
                           (let* ((_$field129260_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots128813_ _slot129254_)))
                                  (__tmp135219
                                   (let ((__tmp135220
                                          (let ((__tmp135227
                                                 (let ((__tmp135228
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass128811_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135228)))
                                                (__tmp135221
                                                 (let ((__tmp135225
                                                        (let ((__tmp135226
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129260_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135226)))
               (__tmp135222
                (let ((__tmp135223
                       (let ((__tmp135224
                              (let ()
                                (declare (not safe))
                                (cons _self128810_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135224))))
                  (declare (not safe))
                  (cons __tmp135223 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135225
                                                         __tmp135222))))
                                            (declare (not safe))
                                            (cons __tmp135227 __tmp135221))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp135220))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135219
                              _stx128809_))))))
                  (___kont134403134404_
                   (lambda (_L129121_ _L129122_ _L129123_)
                     (let* ((_mutator129152_
                             (let ((__tmp135230
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L129123_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp135230)))
                            (_klass129154_
                             (let ((__tmp135231
                                    (##structure-ref
                                     _mutator129152_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128809_
                                __tmp135231)))
                            (_slot129156_
                             (##structure-ref
                              _mutator129152_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr129158_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L129121_
                                _self128810_
                                _$klass128811_
                                _methods128812_
                                _slots128813_))))
                       (if (and (let ((__tmp135253
                                       (##structure-ref
                                        _mutator129152_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135253))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129154_
                                       _slot129156_))
                                    (##structure-ref
                                     _klass129154_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135243
                                  (let ((__tmp135244
                                         (let ((__tmp135250
                                                (let ((__tmp135252
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp135251
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L129123_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp135252
                                                        __tmp135251)))
                                               (__tmp135245
                                                (let ((__tmp135247
                                                       (let ((__tmp135249
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref)))
                     (__tmp135248
                      (let () (declare (not safe)) (cons _L129122_ '()))))
                 (declare (not safe))
                 (cons __tmp135249 __tmp135248)))
              (__tmp135246
               (let () (declare (not safe)) (cons _expr129158_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135247
                                                        __tmp135246))))
                                           (declare (not safe))
                                           (cons __tmp135250 __tmp135245))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135244))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135243 _stx128809_))
                           (let* ((_$field129164_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots128813_ _slot129156_)))
                                  (__tmp135232
                                   (let ((__tmp135233
                                          (let ((__tmp135241
                                                 (let ((__tmp135242
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass128811_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp135242)))
                                                (__tmp135234
                                                 (let ((__tmp135239
                                                        (let ((__tmp135240
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129164_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp135240)))
               (__tmp135235
                (let ((__tmp135237
                       (let ((__tmp135238
                              (let ()
                                (declare (not safe))
                                (cons _self128810_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp135238)))
                      (__tmp135236
                       (let () (declare (not safe)) (cons _expr129158_ '()))))
                  (declare (not safe))
                  (cons __tmp135237 __tmp135236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp135239
                                                         __tmp135235))))
                                            (declare (not safe))
                                            (cons __tmp135241 __tmp135234))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp135233))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp135232
                              _stx128809_))))))
                  (___kont134405134406_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx128809_
                        _self128810_
                        _$klass128811_
                        _methods128812_
                        _slots128813_)))))
              (let* ((___match134886134887_
                      (lambda (_e129019129057_
                               _hd129018129060_
                               _tl129017129062_
                               _e129022129065_
                               _hd129021129068_
                               _tl129020129070_
                               _e129025129073_
                               _hd129024129076_
                               _tl129023129078_
                               _e129028129081_
                               _hd129027129084_
                               _tl129026129086_
                               _e129031129089_
                               _hd129030129092_
                               _tl129029129094_
                               _e129034129097_
                               _hd129033129100_
                               _tl129032129102_
                               _e129037129105_
                               _hd129036129108_
                               _tl129035129110_
                               _e129040129113_
                               _hd129039129116_
                               _tl129038129118_)
                        (let ((_L129121_ _hd129039129116_)
                              (_L129122_ _hd129036129108_)
                              (_L129123_ _hd129027129084_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129122_
                                      _self128810_))
                                   (let ((__tmp135254
                                          (let ((__tmp135255
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129123_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135255))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135254
                                      'gxc#!mutator::t)))
                              (___kont134403134404_
                               _L129121_
                               _L129122_
                               _L129123_)
                              (___kont134405134406_)))))
                     (___match134884134885_
                      (lambda (_e129019129057_
                               _hd129018129060_
                               _tl129017129062_
                               _e129022129065_
                               _hd129021129068_
                               _tl129020129070_
                               _e129025129073_
                               _hd129024129076_
                               _tl129023129078_
                               _e129028129081_
                               _hd129027129084_
                               _tl129026129086_
                               _e129031129089_
                               _hd129030129092_
                               _tl129029129094_
                               _e129034129097_
                               _hd129033129100_
                               _tl129032129102_
                               _e129037129105_
                               _hd129036129108_
                               _tl129035129110_
                               _e129040129113_
                               _hd129039129116_
                               _tl129038129118_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129038129118_))
                            (___match134886134887_
                             _e129019129057_
                             _hd129018129060_
                             _tl129017129062_
                             _e129022129065_
                             _hd129021129068_
                             _tl129020129070_
                             _e129025129073_
                             _hd129024129076_
                             _tl129023129078_
                             _e129028129081_
                             _hd129027129084_
                             _tl129026129086_
                             _e129031129089_
                             _hd129030129092_
                             _tl129029129094_
                             _e129034129097_
                             _hd129033129100_
                             _tl129032129102_
                             _e129037129105_
                             _hd129036129108_
                             _tl129035129110_
                             _e129040129113_
                             _hd129039129116_
                             _tl129038129118_)
                            (___kont134405134406_))))
                     (___match134878134879_
                      (lambda (_e129019129057_
                               _hd129018129060_
                               _tl129017129062_
                               _e129022129065_
                               _hd129021129068_
                               _tl129020129070_
                               _e129025129073_
                               _hd129024129076_
                               _tl129023129078_
                               _e129028129081_
                               _hd129027129084_
                               _tl129026129086_
                               _e129031129089_
                               _hd129030129092_
                               _tl129029129094_
                               _e129034129097_
                               _hd129033129100_
                               _tl129032129102_
                               _e129037129105_
                               _hd129036129108_
                               _tl129035129110_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129029129094_))
                            (let ((_e129040129113_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129029129094_))))
                              (let ((_tl129038129118_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129040129113_)))
                                    (_hd129039129116_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129040129113_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl129038129118_))
                                    (___match134886134887_
                                     _e129019129057_
                                     _hd129018129060_
                                     _tl129017129062_
                                     _e129022129065_
                                     _hd129021129068_
                                     _tl129020129070_
                                     _e129025129073_
                                     _hd129024129076_
                                     _tl129023129078_
                                     _e129028129081_
                                     _hd129027129084_
                                     _tl129026129086_
                                     _e129031129089_
                                     _hd129030129092_
                                     _tl129029129094_
                                     _e129034129097_
                                     _hd129033129100_
                                     _tl129032129102_
                                     _e129037129105_
                                     _hd129036129108_
                                     _tl129035129110_
                                     _e129040129113_
                                     _hd129039129116_
                                     _tl129038129118_)
                                    (___kont134405134406_))))
                            (___kont134405134406_))))
                     (___match134824134825_
                      (lambda (_e128995129171_
                               _hd128994129174_
                               _tl128993129176_
                               _e128998129179_
                               _hd128997129182_
                               _tl128996129184_
                               _e129001129187_
                               _hd129000129190_
                               _tl128999129192_
                               _e129004129195_
                               _hd129003129198_
                               _tl129002129200_
                               _e129007129203_
                               _hd129006129206_
                               _tl129005129208_
                               _e129010129211_
                               _hd129009129214_
                               _tl129008129216_
                               _e129013129219_
                               _hd129012129222_
                               _tl129011129224_)
                        (let ((_L129227_ _hd129012129222_)
                              (_L129228_ _hd129003129198_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129227_
                                      _self128810_))
                                   (let ((__tmp135256
                                          (let ((__tmp135257
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L129228_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135257))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135256
                                      'gxc#!accessor::t)))
                              (___kont134401134402_ _L129227_ _L129228_)
                              (___kont134405134406_)))))
                     (___match134822134823_
                      (lambda (_e128995129171_
                               _hd128994129174_
                               _tl128993129176_
                               _e128998129179_
                               _hd128997129182_
                               _tl128996129184_
                               _e129001129187_
                               _hd129000129190_
                               _tl128999129192_
                               _e129004129195_
                               _hd129003129198_
                               _tl129002129200_
                               _e129007129203_
                               _hd129006129206_
                               _tl129005129208_
                               _e129010129211_
                               _hd129009129214_
                               _tl129008129216_
                               _e129013129219_
                               _hd129012129222_
                               _tl129011129224_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129005129208_))
                            (___match134824134825_
                             _e128995129171_
                             _hd128994129174_
                             _tl128993129176_
                             _e128998129179_
                             _hd128997129182_
                             _tl128996129184_
                             _e129001129187_
                             _hd129000129190_
                             _tl128999129192_
                             _e129004129195_
                             _hd129003129198_
                             _tl129002129200_
                             _e129007129203_
                             _hd129006129206_
                             _tl129005129208_
                             _e129010129211_
                             _hd129009129214_
                             _tl129008129216_
                             _e129013129219_
                             _hd129012129222_
                             _tl129011129224_)
                            (___match134878134879_
                             _e128995129171_
                             _hd128994129174_
                             _tl128993129176_
                             _e128998129179_
                             _hd128997129182_
                             _tl128996129184_
                             _e129001129187_
                             _hd129000129190_
                             _tl128999129192_
                             _e129004129195_
                             _hd129003129198_
                             _tl129002129200_
                             _e129007129203_
                             _hd129006129206_
                             _tl129005129208_
                             _e129010129211_
                             _hd129009129214_
                             _tl129008129216_
                             _e129013129219_
                             _hd129012129222_
                             _tl129011129224_))))
                     (___match134768134769_
                      (lambda (_e128960129267_
                               _hd128959129270_
                               _tl128958129272_
                               _e128963129275_
                               _hd128962129278_
                               _tl128961129280_
                               _e128966129283_
                               _hd128965129286_
                               _tl128964129288_
                               _e128969129291_
                               _hd128968129294_
                               _tl128967129296_
                               _e128972129299_
                               _hd128971129302_
                               _tl128970129304_
                               _e128975129307_
                               _hd128974129310_
                               _tl128973129312_
                               _e128978129315_
                               _hd128977129318_
                               _tl128976129320_
                               _e128981129323_
                               _hd128980129326_
                               _tl128979129328_
                               _e128984129331_
                               _hd128983129334_
                               _tl128982129336_
                               _e128987129339_
                               _hd128986129342_
                               _tl128985129344_
                               _e128990129347_
                               _hd128989129350_
                               _tl128988129352_)
                        (let ((_L129355_ _hd128989129350_)
                              (_L129356_ _hd128986129342_)
                              (_L129357_ _hd128977129318_)
                              (_L129358_ _hd128968129294_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129358_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129358_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129357_
                                      _self128810_)))
                              (___kont134399134400_
                               _L129355_
                               _L129356_
                               _L129357_
                               _L129358_)
                              (___kont134405134406_)))))
                     (___match134760134761_
                      (lambda (_e128960129267_
                               _hd128959129270_
                               _tl128958129272_
                               _e128963129275_
                               _hd128962129278_
                               _tl128961129280_
                               _e128966129283_
                               _hd128965129286_
                               _tl128964129288_
                               _e128969129291_
                               _hd128968129294_
                               _tl128967129296_
                               _e128972129299_
                               _hd128971129302_
                               _tl128970129304_
                               _e128975129307_
                               _hd128974129310_
                               _tl128973129312_
                               _e128978129315_
                               _hd128977129318_
                               _tl128976129320_
                               _e128981129323_
                               _hd128980129326_
                               _tl128979129328_
                               _e128984129331_
                               _hd128983129334_
                               _tl128982129336_
                               _e128987129339_
                               _hd128986129342_
                               _tl128985129344_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128979129328_))
                            (let ((_e128990129347_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128979129328_))))
                              (let ((_tl128988129352_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128990129347_)))
                                    (_hd128989129350_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128990129347_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128988129352_))
                                    (___match134768134769_
                                     _e128960129267_
                                     _hd128959129270_
                                     _tl128958129272_
                                     _e128963129275_
                                     _hd128962129278_
                                     _tl128961129280_
                                     _e128966129283_
                                     _hd128965129286_
                                     _tl128964129288_
                                     _e128969129291_
                                     _hd128968129294_
                                     _tl128967129296_
                                     _e128972129299_
                                     _hd128971129302_
                                     _tl128970129304_
                                     _e128975129307_
                                     _hd128974129310_
                                     _tl128973129312_
                                     _e128978129315_
                                     _hd128977129318_
                                     _tl128976129320_
                                     _e128981129323_
                                     _hd128980129326_
                                     _tl128979129328_
                                     _e128984129331_
                                     _hd128983129334_
                                     _tl128982129336_
                                     _e128987129339_
                                     _hd128986129342_
                                     _tl128985129344_
                                     _e128990129347_
                                     _hd128989129350_
                                     _tl128988129352_)
                                    (___kont134405134406_))))
                            (___match134884134885_
                             _e128960129267_
                             _hd128959129270_
                             _tl128958129272_
                             _e128963129275_
                             _hd128962129278_
                             _tl128961129280_
                             _e128966129283_
                             _hd128965129286_
                             _tl128964129288_
                             _e128969129291_
                             _hd128968129294_
                             _tl128967129296_
                             _e128972129299_
                             _hd128971129302_
                             _tl128970129304_
                             _e128975129307_
                             _hd128974129310_
                             _tl128973129312_
                             _e128978129315_
                             _hd128977129318_
                             _tl128976129320_
                             _e128981129323_
                             _hd128980129326_
                             _tl128979129328_))))
                     (___match134682134683_
                      (lambda (_e128926129401_
                               _hd128925129404_
                               _tl128924129406_
                               _e128929129409_
                               _hd128928129412_
                               _tl128927129414_
                               _e128932129417_
                               _hd128931129420_
                               _tl128930129422_
                               _e128935129425_
                               _hd128934129428_
                               _tl128933129430_
                               _e128938129433_
                               _hd128937129436_
                               _tl128936129438_
                               _e128941129441_
                               _hd128940129444_
                               _tl128939129446_
                               _e128944129449_
                               _hd128943129452_
                               _tl128942129454_
                               _e128947129457_
                               _hd128946129460_
                               _tl128945129462_
                               _e128950129465_
                               _hd128949129468_
                               _tl128948129470_
                               _e128953129473_
                               _hd128952129476_
                               _tl128951129478_)
                        (let ((_L129481_ _hd128952129476_)
                              (_L129482_ _hd128943129452_)
                              (_L129483_ _hd128934129428_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129483_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129483_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129482_
                                      _self128810_)))
                              (___kont134397134398_
                               _L129481_
                               _L129482_
                               _L129483_)
                              (___match134886134887_
                               _e128926129401_
                               _hd128925129404_
                               _tl128924129406_
                               _e128929129409_
                               _hd128928129412_
                               _tl128927129414_
                               _e128932129417_
                               _hd128931129420_
                               _tl128930129422_
                               _e128935129425_
                               _hd128934129428_
                               _tl128933129430_
                               _e128938129433_
                               _hd128937129436_
                               _tl128936129438_
                               _e128941129441_
                               _hd128940129444_
                               _tl128939129446_
                               _e128944129449_
                               _hd128943129452_
                               _tl128942129454_
                               _e128947129457_
                               _hd128946129460_
                               _tl128945129462_)))))
                     (___match134680134681_
                      (lambda (_e128926129401_
                               _hd128925129404_
                               _tl128924129406_
                               _e128929129409_
                               _hd128928129412_
                               _tl128927129414_
                               _e128932129417_
                               _hd128931129420_
                               _tl128930129422_
                               _e128935129425_
                               _hd128934129428_
                               _tl128933129430_
                               _e128938129433_
                               _hd128937129436_
                               _tl128936129438_
                               _e128941129441_
                               _hd128940129444_
                               _tl128939129446_
                               _e128944129449_
                               _hd128943129452_
                               _tl128942129454_
                               _e128947129457_
                               _hd128946129460_
                               _tl128945129462_
                               _e128950129465_
                               _hd128949129468_
                               _tl128948129470_
                               _e128953129473_
                               _hd128952129476_
                               _tl128951129478_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128945129462_))
                            (___match134682134683_
                             _e128926129401_
                             _hd128925129404_
                             _tl128924129406_
                             _e128929129409_
                             _hd128928129412_
                             _tl128927129414_
                             _e128932129417_
                             _hd128931129420_
                             _tl128930129422_
                             _e128935129425_
                             _hd128934129428_
                             _tl128933129430_
                             _e128938129433_
                             _hd128937129436_
                             _tl128936129438_
                             _e128941129441_
                             _hd128940129444_
                             _tl128939129446_
                             _e128944129449_
                             _hd128943129452_
                             _tl128942129454_
                             _e128947129457_
                             _hd128946129460_
                             _tl128945129462_
                             _e128950129465_
                             _hd128949129468_
                             _tl128948129470_
                             _e128953129473_
                             _hd128952129476_
                             _tl128951129478_)
                            (___match134760134761_
                             _e128926129401_
                             _hd128925129404_
                             _tl128924129406_
                             _e128929129409_
                             _hd128928129412_
                             _tl128927129414_
                             _e128932129417_
                             _hd128931129420_
                             _tl128930129422_
                             _e128935129425_
                             _hd128934129428_
                             _tl128933129430_
                             _e128938129433_
                             _hd128937129436_
                             _tl128936129438_
                             _e128941129441_
                             _hd128940129444_
                             _tl128939129446_
                             _e128944129449_
                             _hd128943129452_
                             _tl128942129454_
                             _e128947129457_
                             _hd128946129460_
                             _tl128945129462_
                             _e128950129465_
                             _hd128949129468_
                             _tl128948129470_
                             _e128953129473_
                             _hd128952129476_
                             _tl128951129478_))))
                     (___match134670134671_
                      (lambda (_e128926129401_
                               _hd128925129404_
                               _tl128924129406_
                               _e128929129409_
                               _hd128928129412_
                               _tl128927129414_
                               _e128932129417_
                               _hd128931129420_
                               _tl128930129422_
                               _e128935129425_
                               _hd128934129428_
                               _tl128933129430_
                               _e128938129433_
                               _hd128937129436_
                               _tl128936129438_
                               _e128941129441_
                               _hd128940129444_
                               _tl128939129446_
                               _e128944129449_
                               _hd128943129452_
                               _tl128942129454_
                               _e128947129457_
                               _hd128946129460_
                               _tl128945129462_
                               _e128950129465_
                               _hd128949129468_
                               _tl128948129470_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128949129468_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128948129470_))
                                (let ((_e128953129473_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128948129470_))))
                                  (let ((_tl128951129478_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128953129473_)))
                                        (_hd128952129476_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128953129473_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128951129478_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128945129462_))
                                            (___match134682134683_
                                             _e128926129401_
                                             _hd128925129404_
                                             _tl128924129406_
                                             _e128929129409_
                                             _hd128928129412_
                                             _tl128927129414_
                                             _e128932129417_
                                             _hd128931129420_
                                             _tl128930129422_
                                             _e128935129425_
                                             _hd128934129428_
                                             _tl128933129430_
                                             _e128938129433_
                                             _hd128937129436_
                                             _tl128936129438_
                                             _e128941129441_
                                             _hd128940129444_
                                             _tl128939129446_
                                             _e128944129449_
                                             _hd128943129452_
                                             _tl128942129454_
                                             _e128947129457_
                                             _hd128946129460_
                                             _tl128945129462_
                                             _e128950129465_
                                             _hd128949129468_
                                             _tl128948129470_
                                             _e128953129473_
                                             _hd128952129476_
                                             _tl128951129478_)
                                            (___match134760134761_
                                             _e128926129401_
                                             _hd128925129404_
                                             _tl128924129406_
                                             _e128929129409_
                                             _hd128928129412_
                                             _tl128927129414_
                                             _e128932129417_
                                             _hd128931129420_
                                             _tl128930129422_
                                             _e128935129425_
                                             _hd128934129428_
                                             _tl128933129430_
                                             _e128938129433_
                                             _hd128937129436_
                                             _tl128936129438_
                                             _e128941129441_
                                             _hd128940129444_
                                             _tl128939129446_
                                             _e128944129449_
                                             _hd128943129452_
                                             _tl128942129454_
                                             _e128947129457_
                                             _hd128946129460_
                                             _tl128945129462_
                                             _e128950129465_
                                             _hd128949129468_
                                             _tl128948129470_
                                             _e128953129473_
                                             _hd128952129476_
                                             _tl128951129478_))
                                        (___match134884134885_
                                         _e128926129401_
                                         _hd128925129404_
                                         _tl128924129406_
                                         _e128929129409_
                                         _hd128928129412_
                                         _tl128927129414_
                                         _e128932129417_
                                         _hd128931129420_
                                         _tl128930129422_
                                         _e128935129425_
                                         _hd128934129428_
                                         _tl128933129430_
                                         _e128938129433_
                                         _hd128937129436_
                                         _tl128936129438_
                                         _e128941129441_
                                         _hd128940129444_
                                         _tl128939129446_
                                         _e128944129449_
                                         _hd128943129452_
                                         _tl128942129454_
                                         _e128947129457_
                                         _hd128946129460_
                                         _tl128945129462_))))
                                (___match134884134885_
                                 _e128926129401_
                                 _hd128925129404_
                                 _tl128924129406_
                                 _e128929129409_
                                 _hd128928129412_
                                 _tl128927129414_
                                 _e128932129417_
                                 _hd128931129420_
                                 _tl128930129422_
                                 _e128935129425_
                                 _hd128934129428_
                                 _tl128933129430_
                                 _e128938129433_
                                 _hd128937129436_
                                 _tl128936129438_
                                 _e128941129441_
                                 _hd128940129444_
                                 _tl128939129446_
                                 _e128944129449_
                                 _hd128943129452_
                                 _tl128942129454_
                                 _e128947129457_
                                 _hd128946129460_
                                 _tl128945129462_))
                            (___match134884134885_
                             _e128926129401_
                             _hd128925129404_
                             _tl128924129406_
                             _e128929129409_
                             _hd128928129412_
                             _tl128927129414_
                             _e128932129417_
                             _hd128931129420_
                             _tl128930129422_
                             _e128935129425_
                             _hd128934129428_
                             _tl128933129430_
                             _e128938129433_
                             _hd128937129436_
                             _tl128936129438_
                             _e128941129441_
                             _hd128940129444_
                             _tl128939129446_
                             _e128944129449_
                             _hd128943129452_
                             _tl128942129454_
                             _e128947129457_
                             _hd128946129460_
                             _tl128945129462_))))
                     (___match134602134603_
                      (lambda (_e128875129522_
                               _hd128874129525_
                               _tl128873129527_
                               _e128878129530_
                               _hd128877129533_
                               _tl128876129535_
                               _e128881129538_
                               _hd128880129541_
                               _tl128879129543_
                               _e128884129546_
                               _hd128883129549_
                               _tl128882129551_
                               _e128887129554_
                               _hd128886129557_
                               _tl128885129559_
                               _e128890129562_
                               _hd128889129565_
                               _tl128888129567_
                               _e128893129570_
                               _hd128892129573_
                               _tl128891129575_
                               _e128896129578_
                               _hd128895129581_
                               _tl128894129583_
                               _e128899129586_
                               _hd128898129589_
                               _tl128897129591_
                               _e128902129594_
                               _hd128901129597_
                               _tl128900129599_
                               _e128905129602_
                               _hd128904129605_
                               _tl128903129607_
                               _e128908129610_
                               _hd128907129613_
                               _tl128906129615_
                               _e128911129618_
                               _hd128910129621_
                               _tl128909129623_
                               ___splice134395134396_
                               _target128912129626_
                               _tl128914129628_)
                        (letrec ((_loop128915129631_
                                  (lambda (_hd128913129634_ _args128919129636_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128913129634_))
                                        (let ((_e128916129639_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128913129634_))))
                                          (let ((_lp-tl128918129644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128916129639_)))
                                                (_lp-hd128917129642_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128916129639_))))
                                            (let ((__tmp135258
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128917129642_
                                                           _args128919129636_))))
                                              (declare (not safe))
                                              (_loop128915129631_
                                               _lp-tl128918129644_
                                               __tmp135258))))
                                        (let ((_args128920129647_
                                               (reverse _args128919129636_)))
                                          (let ((_L129650_ _args128920129647_)
                                                (_L129651_ _hd128910129621_)
                                                (_L129652_ _hd128901129597_)
                                                (_L129653_ _hd128892129573_)
                                                (_L129654_ _hd128883129549_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129654_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129653_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129652_
                                                        _self128810_)))
                                                (___kont134393134394_
                                                 _L129650_
                                                 _L129651_
                                                 _L129652_
                                                 _L129653_
                                                 _L129654_)
                                                (___kont134405134406_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128915129631_ _target128912129626_ '())))))
                     (___match134560134561_
                      (lambda (_e128875129522_
                               _hd128874129525_
                               _tl128873129527_
                               _e128878129530_
                               _hd128877129533_
                               _tl128876129535_
                               _e128881129538_
                               _hd128880129541_
                               _tl128879129543_
                               _e128884129546_
                               _hd128883129549_
                               _tl128882129551_
                               _e128887129554_
                               _hd128886129557_
                               _tl128885129559_
                               _e128890129562_
                               _hd128889129565_
                               _tl128888129567_
                               _e128893129570_
                               _hd128892129573_
                               _tl128891129575_
                               _e128896129578_
                               _hd128895129581_
                               _tl128894129583_
                               _e128899129586_
                               _hd128898129589_
                               _tl128897129591_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128898129589_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128897129591_))
                                (let ((_e128902129594_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128897129591_))))
                                  (let ((_tl128900129599_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128902129594_)))
                                        (_hd128901129597_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128902129594_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128900129599_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128894129583_))
                                            (let ((_e128905129602_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128894129583_))))
                                              (let ((_tl128903129607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128905129602_)))
                                                    (_hd128904129605_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128905129602_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128904129605_))
                                                    (let ((_e128908129610_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128904129605_))))
                                                      (let ((_tl128906129615_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128908129610_)))
                    (_hd128907129613_
                     (let () (declare (not safe)) (##car _e128908129610_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128907129613_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128907129613_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128906129615_))
                            (let ((_e128911129618_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128906129615_))))
                              (let ((_tl128909129623_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128911129618_)))
                                    (_hd128910129621_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128911129618_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128909129623_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128903129607_))
                                        (let ((___splice134395134396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128903129607_
                                                  '0))))
                                          (let ((_tl128914129628_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134395134396_
                                                    '1)))
                                                (_target128912129626_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134395134396_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128914129628_))
                                                (___match134602134603_
                                                 _e128875129522_
                                                 _hd128874129525_
                                                 _tl128873129527_
                                                 _e128878129530_
                                                 _hd128877129533_
                                                 _tl128876129535_
                                                 _e128881129538_
                                                 _hd128880129541_
                                                 _tl128879129543_
                                                 _e128884129546_
                                                 _hd128883129549_
                                                 _tl128882129551_
                                                 _e128887129554_
                                                 _hd128886129557_
                                                 _tl128885129559_
                                                 _e128890129562_
                                                 _hd128889129565_
                                                 _tl128888129567_
                                                 _e128893129570_
                                                 _hd128892129573_
                                                 _tl128891129575_
                                                 _e128896129578_
                                                 _hd128895129581_
                                                 _tl128894129583_
                                                 _e128899129586_
                                                 _hd128898129589_
                                                 _tl128897129591_
                                                 _e128902129594_
                                                 _hd128901129597_
                                                 _tl128900129599_
                                                 _e128905129602_
                                                 _hd128904129605_
                                                 _tl128903129607_
                                                 _e128908129610_
                                                 _hd128907129613_
                                                 _tl128906129615_
                                                 _e128911129618_
                                                 _hd128910129621_
                                                 _tl128909129623_
                                                 ___splice134395134396_
                                                 _target128912129626_
                                                 _tl128914129628_)
                                                (___kont134405134406_))))
                                        (___kont134405134406_))
                                    (___kont134405134406_))))
                            (___kont134405134406_))
                        (___kont134405134406_))
                    (___kont134405134406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134405134406_))))
                                            (___match134884134885_
                                             _e128875129522_
                                             _hd128874129525_
                                             _tl128873129527_
                                             _e128878129530_
                                             _hd128877129533_
                                             _tl128876129535_
                                             _e128881129538_
                                             _hd128880129541_
                                             _tl128879129543_
                                             _e128884129546_
                                             _hd128883129549_
                                             _tl128882129551_
                                             _e128887129554_
                                             _hd128886129557_
                                             _tl128885129559_
                                             _e128890129562_
                                             _hd128889129565_
                                             _tl128888129567_
                                             _e128893129570_
                                             _hd128892129573_
                                             _tl128891129575_
                                             _e128896129578_
                                             _hd128895129581_
                                             _tl128894129583_))
                                        (___match134884134885_
                                         _e128875129522_
                                         _hd128874129525_
                                         _tl128873129527_
                                         _e128878129530_
                                         _hd128877129533_
                                         _tl128876129535_
                                         _e128881129538_
                                         _hd128880129541_
                                         _tl128879129543_
                                         _e128884129546_
                                         _hd128883129549_
                                         _tl128882129551_
                                         _e128887129554_
                                         _hd128886129557_
                                         _tl128885129559_
                                         _e128890129562_
                                         _hd128889129565_
                                         _tl128888129567_
                                         _e128893129570_
                                         _hd128892129573_
                                         _tl128891129575_
                                         _e128896129578_
                                         _hd128895129581_
                                         _tl128894129583_))))
                                (___match134884134885_
                                 _e128875129522_
                                 _hd128874129525_
                                 _tl128873129527_
                                 _e128878129530_
                                 _hd128877129533_
                                 _tl128876129535_
                                 _e128881129538_
                                 _hd128880129541_
                                 _tl128879129543_
                                 _e128884129546_
                                 _hd128883129549_
                                 _tl128882129551_
                                 _e128887129554_
                                 _hd128886129557_
                                 _tl128885129559_
                                 _e128890129562_
                                 _hd128889129565_
                                 _tl128888129567_
                                 _e128893129570_
                                 _hd128892129573_
                                 _tl128891129575_
                                 _e128896129578_
                                 _hd128895129581_
                                 _tl128894129583_))
                            (___match134670134671_
                             _e128875129522_
                             _hd128874129525_
                             _tl128873129527_
                             _e128878129530_
                             _hd128877129533_
                             _tl128876129535_
                             _e128881129538_
                             _hd128880129541_
                             _tl128879129543_
                             _e128884129546_
                             _hd128883129549_
                             _tl128882129551_
                             _e128887129554_
                             _hd128886129557_
                             _tl128885129559_
                             _e128890129562_
                             _hd128889129565_
                             _tl128888129567_
                             _e128893129570_
                             _hd128892129573_
                             _tl128891129575_
                             _e128896129578_
                             _hd128895129581_
                             _tl128894129583_
                             _e128899129586_
                             _hd128898129589_
                             _tl128897129591_))))
                     (___match134492134493_
                      (lambda (_e128831129714_
                               _hd128830129717_
                               _tl128829129719_
                               _e128834129722_
                               _hd128833129725_
                               _tl128832129727_
                               _e128837129730_
                               _hd128836129733_
                               _tl128835129735_
                               _e128840129738_
                               _hd128839129741_
                               _tl128838129743_
                               _e128843129746_
                               _hd128842129749_
                               _tl128841129751_
                               _e128846129754_
                               _hd128845129757_
                               _tl128844129759_
                               _e128849129762_
                               _hd128848129765_
                               _tl128847129767_
                               _e128852129770_
                               _hd128851129773_
                               _tl128850129775_
                               _e128855129778_
                               _hd128854129781_
                               _tl128853129783_
                               _e128858129786_
                               _hd128857129789_
                               _tl128856129791_
                               ___splice134391134392_
                               _target128859129794_
                               _tl128861129796_)
                        (letrec ((_loop128862129799_
                                  (lambda (_hd128860129802_ _args128866129804_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128860129802_))
                                        (let ((_e128863129807_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128860129802_))))
                                          (let ((_lp-tl128865129812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128863129807_)))
                                                (_lp-hd128864129810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128863129807_))))
                                            (let ((__tmp135259
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128864129810_
                                                           _args128866129804_))))
                                              (declare (not safe))
                                              (_loop128862129799_
                                               _lp-tl128865129812_
                                               __tmp135259))))
                                        (let ((_args128867129815_
                                               (reverse _args128866129804_)))
                                          (let ((_L129818_ _args128867129815_)
                                                (_L129819_ _hd128857129789_)
                                                (_L129820_ _hd128848129765_)
                                                (_L129821_ _hd128839129741_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129821_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129820_
                                                        _self128810_)))
                                                (___kont134389134390_
                                                 _L129818_
                                                 _L129819_
                                                 _L129820_
                                                 _L129821_)
                                                (___match134680134681_
                                                 _e128831129714_
                                                 _hd128830129717_
                                                 _tl128829129719_
                                                 _e128834129722_
                                                 _hd128833129725_
                                                 _tl128832129727_
                                                 _e128837129730_
                                                 _hd128836129733_
                                                 _tl128835129735_
                                                 _e128840129738_
                                                 _hd128839129741_
                                                 _tl128838129743_
                                                 _e128843129746_
                                                 _hd128842129749_
                                                 _tl128841129751_
                                                 _e128846129754_
                                                 _hd128845129757_
                                                 _tl128844129759_
                                                 _e128849129762_
                                                 _hd128848129765_
                                                 _tl128847129767_
                                                 _e128852129770_
                                                 _hd128851129773_
                                                 _tl128850129775_
                                                 _e128855129778_
                                                 _hd128854129781_
                                                 _tl128853129783_
                                                 _e128858129786_
                                                 _hd128857129789_
                                                 _tl128856129791_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128862129799_ _target128859129794_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134387134388_))
                    (let ((_e128831129714_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134387134388_))))
                      (let ((_tl128829129719_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128831129714_)))
                            (_hd128830129717_
                             (let ()
                               (declare (not safe))
                               (##car _e128831129714_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128829129719_))
                            (let ((_e128834129722_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128829129719_))))
                              (let ((_tl128832129727_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128834129722_)))
                                    (_hd128833129725_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128834129722_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128833129725_))
                                    (let ((_e128837129730_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128833129725_))))
                                      (let ((_tl128835129735_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128837129730_)))
                                            (_hd128836129733_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128837129730_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128836129733_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128836129733_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128835129735_))
                                                    (let ((_e128840129738_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128835129735_))))
                                                      (let ((_tl128838129743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128840129738_)))
                    (_hd128839129741_
                     (let () (declare (not safe)) (##car _e128840129738_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128838129743_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128832129727_))
                        (let ((_e128843129746_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128832129727_))))
                          (let ((_tl128841129751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128843129746_)))
                                (_hd128842129749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128843129746_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128842129749_))
                                (let ((_e128846129754_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128842129749_))))
                                  (let ((_tl128844129759_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128846129754_)))
                                        (_hd128845129757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128846129754_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128845129757_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128845129757_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128844129759_))
                                                (let ((_e128849129762_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128844129759_))))
                                                  (let ((_tl128847129767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128849129762_)))
                                                        (_hd128848129765_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128849129762_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128847129767_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128841129751_))
                                                            (let ((_e128852129770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128841129751_))))
                      (let ((_tl128850129775_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128852129770_)))
                            (_hd128851129773_
                             (let ()
                               (declare (not safe))
                               (##car _e128852129770_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128851129773_))
                            (let ((_e128855129778_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128851129773_))))
                              (let ((_tl128853129783_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128855129778_)))
                                    (_hd128854129781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128855129778_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128854129781_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128854129781_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128853129783_))
                                            (let ((_e128858129786_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128853129783_))))
                                              (let ((_tl128856129791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128858129786_)))
                                                    (_hd128857129789_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128858129786_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128856129791_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128850129775_))
                                                        (let ((___splice134391134392_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128850129775_ '0))))
                  (let ((_tl128861129796_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134391134392_ '1)))
                        (_target128859129794_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134391134392_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128861129796_))
                        (___match134492134493_
                         _e128831129714_
                         _hd128830129717_
                         _tl128829129719_
                         _e128834129722_
                         _hd128833129725_
                         _tl128832129727_
                         _e128837129730_
                         _hd128836129733_
                         _tl128835129735_
                         _e128840129738_
                         _hd128839129741_
                         _tl128838129743_
                         _e128843129746_
                         _hd128842129749_
                         _tl128841129751_
                         _e128846129754_
                         _hd128845129757_
                         _tl128844129759_
                         _e128849129762_
                         _hd128848129765_
                         _tl128847129767_
                         _e128852129770_
                         _hd128851129773_
                         _tl128850129775_
                         _e128855129778_
                         _hd128854129781_
                         _tl128853129783_
                         _e128858129786_
                         _hd128857129789_
                         _tl128856129791_
                         ___splice134391134392_
                         _target128859129794_
                         _tl128861129796_)
                        (___match134680134681_
                         _e128831129714_
                         _hd128830129717_
                         _tl128829129719_
                         _e128834129722_
                         _hd128833129725_
                         _tl128832129727_
                         _e128837129730_
                         _hd128836129733_
                         _tl128835129735_
                         _e128840129738_
                         _hd128839129741_
                         _tl128838129743_
                         _e128843129746_
                         _hd128842129749_
                         _tl128841129751_
                         _e128846129754_
                         _hd128845129757_
                         _tl128844129759_
                         _e128849129762_
                         _hd128848129765_
                         _tl128847129767_
                         _e128852129770_
                         _hd128851129773_
                         _tl128850129775_
                         _e128855129778_
                         _hd128854129781_
                         _tl128853129783_
                         _e128858129786_
                         _hd128857129789_
                         _tl128856129791_))))
                (___match134680134681_
                 _e128831129714_
                 _hd128830129717_
                 _tl128829129719_
                 _e128834129722_
                 _hd128833129725_
                 _tl128832129727_
                 _e128837129730_
                 _hd128836129733_
                 _tl128835129735_
                 _e128840129738_
                 _hd128839129741_
                 _tl128838129743_
                 _e128843129746_
                 _hd128842129749_
                 _tl128841129751_
                 _e128846129754_
                 _hd128845129757_
                 _tl128844129759_
                 _e128849129762_
                 _hd128848129765_
                 _tl128847129767_
                 _e128852129770_
                 _hd128851129773_
                 _tl128850129775_
                 _e128855129778_
                 _hd128854129781_
                 _tl128853129783_
                 _e128858129786_
                 _hd128857129789_
                 _tl128856129791_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134884134885_
                                                     _e128831129714_
                                                     _hd128830129717_
                                                     _tl128829129719_
                                                     _e128834129722_
                                                     _hd128833129725_
                                                     _tl128832129727_
                                                     _e128837129730_
                                                     _hd128836129733_
                                                     _tl128835129735_
                                                     _e128840129738_
                                                     _hd128839129741_
                                                     _tl128838129743_
                                                     _e128843129746_
                                                     _hd128842129749_
                                                     _tl128841129751_
                                                     _e128846129754_
                                                     _hd128845129757_
                                                     _tl128844129759_
                                                     _e128849129762_
                                                     _hd128848129765_
                                                     _tl128847129767_
                                                     _e128852129770_
                                                     _hd128851129773_
                                                     _tl128850129775_))))
                                            (___match134884134885_
                                             _e128831129714_
                                             _hd128830129717_
                                             _tl128829129719_
                                             _e128834129722_
                                             _hd128833129725_
                                             _tl128832129727_
                                             _e128837129730_
                                             _hd128836129733_
                                             _tl128835129735_
                                             _e128840129738_
                                             _hd128839129741_
                                             _tl128838129743_
                                             _e128843129746_
                                             _hd128842129749_
                                             _tl128841129751_
                                             _e128846129754_
                                             _hd128845129757_
                                             _tl128844129759_
                                             _e128849129762_
                                             _hd128848129765_
                                             _tl128847129767_
                                             _e128852129770_
                                             _hd128851129773_
                                             _tl128850129775_))
                                        (___match134560134561_
                                         _e128831129714_
                                         _hd128830129717_
                                         _tl128829129719_
                                         _e128834129722_
                                         _hd128833129725_
                                         _tl128832129727_
                                         _e128837129730_
                                         _hd128836129733_
                                         _tl128835129735_
                                         _e128840129738_
                                         _hd128839129741_
                                         _tl128838129743_
                                         _e128843129746_
                                         _hd128842129749_
                                         _tl128841129751_
                                         _e128846129754_
                                         _hd128845129757_
                                         _tl128844129759_
                                         _e128849129762_
                                         _hd128848129765_
                                         _tl128847129767_
                                         _e128852129770_
                                         _hd128851129773_
                                         _tl128850129775_
                                         _e128855129778_
                                         _hd128854129781_
                                         _tl128853129783_))
                                    (___match134884134885_
                                     _e128831129714_
                                     _hd128830129717_
                                     _tl128829129719_
                                     _e128834129722_
                                     _hd128833129725_
                                     _tl128832129727_
                                     _e128837129730_
                                     _hd128836129733_
                                     _tl128835129735_
                                     _e128840129738_
                                     _hd128839129741_
                                     _tl128838129743_
                                     _e128843129746_
                                     _hd128842129749_
                                     _tl128841129751_
                                     _e128846129754_
                                     _hd128845129757_
                                     _tl128844129759_
                                     _e128849129762_
                                     _hd128848129765_
                                     _tl128847129767_
                                     _e128852129770_
                                     _hd128851129773_
                                     _tl128850129775_))))
                            (___match134884134885_
                             _e128831129714_
                             _hd128830129717_
                             _tl128829129719_
                             _e128834129722_
                             _hd128833129725_
                             _tl128832129727_
                             _e128837129730_
                             _hd128836129733_
                             _tl128835129735_
                             _e128840129738_
                             _hd128839129741_
                             _tl128838129743_
                             _e128843129746_
                             _hd128842129749_
                             _tl128841129751_
                             _e128846129754_
                             _hd128845129757_
                             _tl128844129759_
                             _e128849129762_
                             _hd128848129765_
                             _tl128847129767_
                             _e128852129770_
                             _hd128851129773_
                             _tl128850129775_))))
                    (___match134822134823_
                     _e128831129714_
                     _hd128830129717_
                     _tl128829129719_
                     _e128834129722_
                     _hd128833129725_
                     _tl128832129727_
                     _e128837129730_
                     _hd128836129733_
                     _tl128835129735_
                     _e128840129738_
                     _hd128839129741_
                     _tl128838129743_
                     _e128843129746_
                     _hd128842129749_
                     _tl128841129751_
                     _e128846129754_
                     _hd128845129757_
                     _tl128844129759_
                     _e128849129762_
                     _hd128848129765_
                     _tl128847129767_))
                (___kont134405134406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134405134406_))
                                            (___kont134405134406_))
                                        (___kont134405134406_))))
                                (___kont134405134406_))))
                        (___kont134405134406_))
                    (___kont134405134406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134405134406_))
                                                (___kont134405134406_))
                                            (___kont134405134406_))))
                                    (___kont134405134406_))))
                            (___kont134405134406_))))
                    (___kont134405134406_))))))))))
