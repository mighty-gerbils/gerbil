(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708451998)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl130756_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp131884 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl130756_ __tmp131884))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130756_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130756_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130756_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130756_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl130756_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx130739_ . _args130741_)
        (let ((__tmp131886
               (lambda ()
                 (declare (not safe))
                 (if (null? _args130741_)
                     (gxc#compile-e__0 _stx130739_)
                     (let ((_arg1130746_ (car _args130741_))
                           (_rest130748_ (cdr _args130741_)))
                       (if (null? _rest130748_)
                           (gxc#compile-e__1 _stx130739_ _arg1130746_)
                           (let ((_arg2130751_ (car _rest130748_))
                                 (_rest130753_ (cdr _rest130748_)))
                             (if (null? _rest130753_)
                                 (gxc#compile-e__2
                                  _stx130739_
                                  _arg1130746_
                                  _arg2130751_)
                                 (apply gxc#compile-e
                                        _stx130739_
                                        _arg1130746_
                                        _arg2130751_
                                        _rest130753_))))))))
              (__tmp131885 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp131886
           gxc#current-compile-methods
           __tmp131885))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl130736_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp131887 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl130736_ __tmp131887))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130736_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl130736_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl130736_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx130719_ . _args130721_)
        (let ((__tmp131889
               (lambda ()
                 (declare (not safe))
                 (if (null? _args130721_)
                     (gxc#compile-e__0 _stx130719_)
                     (let ((_arg1130726_ (car _args130721_))
                           (_rest130728_ (cdr _args130721_)))
                       (if (null? _rest130728_)
                           (gxc#compile-e__1 _stx130719_ _arg1130726_)
                           (let ((_arg2130731_ (car _rest130728_))
                                 (_rest130733_ (cdr _rest130728_)))
                             (if (null? _rest130733_)
                                 (gxc#compile-e__2
                                  _stx130719_
                                  _arg1130726_
                                  _arg2130731_)
                                 (apply gxc#compile-e
                                        _stx130719_
                                        _arg1130726_
                                        _arg2130731_
                                        _rest130733_))))))))
              (__tmp131888 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp131889
           gxc#current-compile-methods
           __tmp131888))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl130716_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp131890 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl130716_ __tmp131890))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130716_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl130716_ '%#call gxc#subst-object-refs-call%))
           _tbl130716_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx130699_ . _args130701_)
        (let ((__tmp131892
               (lambda ()
                 (declare (not safe))
                 (if (null? _args130701_)
                     (gxc#compile-e__0 _stx130699_)
                     (let ((_arg1130706_ (car _args130701_))
                           (_rest130708_ (cdr _args130701_)))
                       (if (null? _rest130708_)
                           (gxc#compile-e__1 _stx130699_ _arg1130706_)
                           (let ((_arg2130711_ (car _rest130708_))
                                 (_rest130713_ (cdr _rest130708_)))
                             (if (null? _rest130713_)
                                 (gxc#compile-e__2
                                  _stx130699_
                                  _arg1130706_
                                  _arg2130711_)
                                 (apply gxc#compile-e
                                        _stx130699_
                                        _arg1130706_
                                        _arg2130711_
                                        _rest130713_))))))))
              (__tmp131891 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp131892
           gxc#current-compile-methods
           __tmp131891))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx127911_)
        (letrec ((_generate-method-bind127913_
                  (lambda (_$klass130692_
                           _$method-table130693_
                           _id130694_
                           _$id130695_)
                    (let ((_$tmp130697_
                           (let ((__tmp131893 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp131893))))
                      (let ((__tmp131941
                             (let ()
                               (declare (not safe))
                               (cons _$id130695_ '())))
                            (__tmp131894
                             (let ((__tmp131895
                                    (let ((__tmp131896
                                           (let ((__tmp131939
                                                  (let ((__tmp131940
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp131940)))
                                                 (__tmp131897
                                                  (let ((__tmp131898
                                                         (let ((__tmp131899
                                                                (let ((__tmp131900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp131901
                                      (let ((__tmp131902
                                             (let ((__tmp131922
                                                    (let ((__tmp131923
                                                           (let ((__tmp131938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp130697_ '())))
                         (__tmp131924
                          (let ((__tmp131925
                                 (let ((__tmp131926
                                        (let ((__tmp131936
                                               (let ((__tmp131937
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp131937)))
                                              (__tmp131927
                                               (let ((__tmp131934
                                                      (let ((__tmp131935
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table130693_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp131935)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp131928
                                                      (let ((__tmp131932
                                                             (let ((__tmp131933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id130694_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp131933)))
                    (__tmp131929
                     (let ((__tmp131930
                            (let ((__tmp131931
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp131931))))
                       (declare (not safe))
                       (cons __tmp131930 '()))))
                (declare (not safe))
                (cons __tmp131932 __tmp131929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp131934
                                                       __tmp131928))))
                                          (declare (not safe))
                                          (cons __tmp131936 __tmp131927))))
                                   (declare (not safe))
                                   (cons '%#call __tmp131926))))
                            (declare (not safe))
                            (cons __tmp131925 '()))))
                     (declare (not safe))
                     (cons __tmp131938 __tmp131924))))
              (declare (not safe))
              (cons __tmp131923 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131903
                                                    (let ((__tmp131904
                                                           (let ((__tmp131905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp131920
                                 (let ((__tmp131921
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp130697_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp131921)))
                                (__tmp131906
                                 (let ((__tmp131918
                                        (let ((__tmp131919
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp130697_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp131919)))
                                       (__tmp131907
                                        (let ((__tmp131908
                                               (let ((__tmp131909
                                                      (let ((__tmp131916
                                                             (let ((__tmp131917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp131917)))
                    (__tmp131910
                     (let ((__tmp131914
                            (let ((__tmp131915
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp131915)))
                           (__tmp131911
                            (let ((__tmp131912
                                   (let ((__tmp131913
                                          (let ()
                                            (declare (not safe))
                                            (cons _id130694_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp131913))))
                              (declare (not safe))
                              (cons __tmp131912 '()))))
                       (declare (not safe))
                       (cons __tmp131914 __tmp131911))))
                (declare (not safe))
                (cons __tmp131916 __tmp131910))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp131909))))
                                          (declare (not safe))
                                          (cons __tmp131908 '()))))
                                   (declare (not safe))
                                   (cons __tmp131918 __tmp131907))))
                            (declare (not safe))
                            (cons __tmp131920 __tmp131906))))
                     (declare (not safe))
                     (cons '%#if __tmp131905))))
              (declare (not safe))
              (cons __tmp131904 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp131922
                                                     __tmp131903))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp131902))))
                                 (declare (not safe))
                                 (cons __tmp131901 '()))))
                          (declare (not safe))
                          (cons '() __tmp131900))))
                   (declare (not safe))
                   (cons '%#lambda __tmp131899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131898 '()))))
                                             (declare (not safe))
                                             (cons __tmp131939 __tmp131897))))
                                      (declare (not safe))
                                      (cons '%#call __tmp131896))))
                               (declare (not safe))
                               (cons __tmp131895 '()))))
                        (declare (not safe))
                        (cons __tmp131941 __tmp131894)))))
                 (_generate-slot-bind127914_
                  (lambda (_$klass130686_ _id130687_ _$id130688_)
                    (let ((_$tmp130690_
                           (let ((__tmp131942 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp131942))))
                      (let ((__tmp131979
                             (let ()
                               (declare (not safe))
                               (cons _$id130688_ '())))
                            (__tmp131943
                             (let ((__tmp131944
                                    (let ((__tmp131945
                                           (let ((__tmp131965
                                                  (let ((__tmp131966
                                                         (let ((__tmp131978
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp130690_ '())))
                       (__tmp131967
                        (let ((__tmp131968
                               (let ((__tmp131969
                                      (let ((__tmp131976
                                             (let ((__tmp131977
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp131977)))
                                            (__tmp131970
                                             (let ((__tmp131974
                                                    (let ((__tmp131975
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass130686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp131975)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp131971
                                                    (let ((__tmp131972
                                                           (let ((__tmp131973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id130687_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp131973))))
              (declare (not safe))
              (cons __tmp131972 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp131974
                                                     __tmp131971))))
                                        (declare (not safe))
                                        (cons __tmp131976 __tmp131970))))
                                 (declare (not safe))
                                 (cons '%#call __tmp131969))))
                          (declare (not safe))
                          (cons __tmp131968 '()))))
                   (declare (not safe))
                   (cons __tmp131978 __tmp131967))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131966 '())))
                                                 (__tmp131946
                                                  (let ((__tmp131947
                                                         (let ((__tmp131948
                                                                (let ((__tmp131963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp131964
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp130690_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp131964)))
                              (__tmp131949
                               (let ((__tmp131961
                                      (let ((__tmp131962
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp130690_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp131962)))
                                     (__tmp131950
                                      (let ((__tmp131951
                                             (let ((__tmp131952
                                                    (let ((__tmp131959
                                                           (let ((__tmp131960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp131960)))
                  (__tmp131953
                   (let ((__tmp131957
                          (let ((__tmp131958
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp131958)))
                         (__tmp131954
                          (let ((__tmp131955
                                 (let ((__tmp131956
                                        (let ()
                                          (declare (not safe))
                                          (cons _id130687_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp131956))))
                            (declare (not safe))
                            (cons __tmp131955 '()))))
                     (declare (not safe))
                     (cons __tmp131957 __tmp131954))))
              (declare (not safe))
              (cons __tmp131959 __tmp131953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp131952))))
                                        (declare (not safe))
                                        (cons __tmp131951 '()))))
                                 (declare (not safe))
                                 (cons __tmp131961 __tmp131950))))
                          (declare (not safe))
                          (cons __tmp131963 __tmp131949))))
                   (declare (not safe))
                   (cons '%#if __tmp131948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp131947 '()))))
                                             (declare (not safe))
                                             (cons __tmp131965 __tmp131946))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp131945))))
                               (declare (not safe))
                               (cons __tmp131944 '()))))
                        (declare (not safe))
                        (cons __tmp131979 __tmp131943)))))
                 (_generate-specializer-impl127915_
                  (lambda (_$klass130680_
                           _$method-table130681_
                           _methods-bind130682_
                           _slots-bind130683_
                           _specializer-impl130684_)
                    (let ((__tmp131980
                           (let ((__tmp131981
                                  (let ((__tmp131987
                                         (let ((__tmp131988
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table130681_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass130680_ __tmp131988)))
                                        (__tmp131982
                                         (let ((__tmp131983
                                                (let ((__tmp131984
                                                       (let ((__tmp131986
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind130683_ _methods-bind130682_)))
                     (__tmp131985
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl130684_ '()))))
                 (declare (not safe))
                 (cons __tmp131986 __tmp131985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp131984))))
                                           (declare (not safe))
                                           (cons __tmp131983 '()))))
                                    (declare (not safe))
                                    (cons __tmp131987 __tmp131982))))
                             (declare (not safe))
                             (cons '%#lambda __tmp131981))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp131980 _stx127911_))))
                 (_generate-specializer-def127916_
                  (lambda (_id130676_
                           _specializer-id130677_
                           _specializer-impl130678_)
                    (let ((__tmp131989
                           (let ((__tmp131990
                                  (let ((__tmp131991
                                         (let ((__tmp132004
                                                (let ((__tmp132005
                                                       (let ((__tmp132006
                                                              (let ((__tmp132008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id130677_ '())))
                            (__tmp132007
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl130678_ '()))))
                        (declare (not safe))
                        (cons __tmp132008 __tmp132007))))
                 (declare (not safe))
                 (cons '%#define-values __tmp132006))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp132005
                                                   _stx127911_)))
                                               (__tmp131992
                                                (let ((__tmp131993
                                                       (let ((__tmp131994
                                                              (let ((__tmp131995
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp132002
                                    (let ((__tmp132003
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp132003)))
                                   (__tmp131996
                                    (let ((__tmp132000
                                           (let ((__tmp132001
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id130676_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp132001)))
                                          (__tmp131997
                                           (let ((__tmp131998
                                                  (let ((__tmp131999
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id130677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp131999))))
                                             (declare (not safe))
                                             (cons __tmp131998 '()))))
                                      (declare (not safe))
                                      (cons __tmp132000 __tmp131997))))
                               (declare (not safe))
                               (cons __tmp132002 __tmp131996))))
                        (declare (not safe))
                        (cons '%#call __tmp131995))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp131994 _stx127911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp131993 '()))))
                                           (declare (not safe))
                                           (cons __tmp132004 __tmp131992))))
                                    (declare (not safe))
                                    (cons _stx127911_ __tmp131991))))
                             (declare (not safe))
                             (cons '%#begin __tmp131990))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp131989 _stx127911_)))))
          (let* ((___stx130845130846_ _stx127911_)
                 (_g127919127939_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx130845130846_)))))
            (let ((___kont130847130848_
                   (lambda (_L127983_ _L127984_)
                     (let ((_method-calls128003_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs128004_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty128005_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?128007_
                                 (lambda ()
                                   (if (let ((__tmp132009
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls128003_))))
                                         (declare (not safe))
                                         (fxzero? __tmp132009))
                                       (let ((__tmp132010
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs128004_))))
                                         (declare (not safe))
                                         (fxzero? __tmp132010))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L127983_))
                             (let* ((___stx130759130760_ _L127983_)
                                    (_g128394128412_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx130759130760_)))))
                               (let ((___kont130761130762_
                                      (lambda (_L128448_ _L128449_ _L128450_)
                                        (for-each
                                         (lambda (_g128465128467_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g128465128467_
                                              _L128450_
                                              _method-calls128003_
                                              _slot-refs128004_)))
                                         _L128448_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?128007_))
                                            _stx127911_
                                            (let* ((_specializer-id128476_
                                                    (let* ((_id128470_
                                                            (let ((__tmp132011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L127984_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp132011 '"::specialize")))
                   (_specializer-id128473_
                    (let ((__tmp132012
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx127911_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id128470_ __tmp132012))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id128473_))
              _specializer-id128473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass128478_
                                                    (let ((__tmp132013
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp132013)))
                                                   (_$method-table128480_
                                                    (let ((__tmp132014
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp132014)))
                                                   (_methods128482_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls128003_)))
                                                   (_$methods128486_
                                                    (map (lambda (_id128484_)
                                                           (let ((__tmp132015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id128484_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp132015)))
                 _methods128482_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g132016_
                                                    (for-each
                                                     (lambda (_g128487128490_
                                                              _g128488128492_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls128003_
                                                          _g128487128490_
                                                          _g128488128492_)))
                                                     _methods128482_
                                                     _$methods128486_))
                                                   (_methods-bind128503_
                                                    (map (lambda (_g128495128498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g128496128500_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind127913_
                      _$klass128478_
                      _$method-table128480_
                      _g128495128498_
                      _g128496128500_)))
                 _methods128482_
                 _$methods128486_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots128505_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs128004_)))
                                                   (_$slots128509_
                                                    (map (lambda (_id128507_)
                                                           (let ((__tmp132017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id128507_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp132017)))
                 _slots128505_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g132018_
                                                    (for-each
                                                     (lambda (_g128510128513_
                                                              _g128511128515_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs128004_
                                                          _g128510128513_
                                                          _g128511128515_)))
                                                     _slots128505_
                                                     _$slots128509_))
                                                   (_slots-bind128526_
                                                    (map (lambda (_g128518128521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g128519128523_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind127914_
                      _$klass128478_
                      _g128518128521_
                      _g128519128523_)))
                 _slots128505_
                 _$slots128509_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body128532_
                                                    (map (lambda (_g128527128529_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g128527128529_
                                                              _L128450_
                                                              _$klass128478_
                                                              _method-calls128003_
                                                              _slot-refs128004_)))
                                                         _L128448_))
                                                   (_specializer-impl128534_
                                                    (let ((__tmp132019
                                                           (let ((__tmp132020
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132021
                                 (let ()
                                   (declare (not safe))
                                   (cons _L128450_ _L128449_))))
                            (declare (not safe))
                            (cons __tmp132021 _specializer-body128532_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp132020))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp132019 _stx127911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl128536_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl127915_
                                                       _$klass128478_
                                                       _$method-table128480_
                                                       _methods-bind128503_
                                                       _slots-bind128526_
                                                       _specializer-impl128534_))))
                                              (let ((__tmp132023
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L127984_)))
                                                    (__tmp132022
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id128476_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp132023
                                                 '" => "
                                                 __tmp132022))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def127916_
                                                 _L127984_
                                                 _specializer-id128476_
                                                 _specializer-impl128536_))))))
                                     (___kont130763130764_
                                      (lambda () _stx127911_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx130759130760_))
                                     (let ((_e128399128424_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx130759130760_))))
                                       (let ((_tl128401128429_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e128399128424_)))
                                             (_hd128400128427_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e128399128424_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl128401128429_))
                                             (let ((_e128402128432_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl128401128429_))))
                                               (let ((_tl128404128437_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e128402128432_)))
                                                     (_hd128403128435_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e128402128432_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd128403128435_))
                                                     (let ((_e128405128440_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd128403128435_))))
                                                       (let ((_tl128407128445_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e128405128440_)))
                     (_hd128406128443_
                      (let () (declare (not safe)) (##car _e128405128440_))))
                 (___kont130761130762_
                  _tl128404128437_
                  _tl128407128445_
                  _hd128406128443_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont130763130764_))))
                                             (___kont130763130764_))))
                                     (___kont130763130764_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L127983_))
                                 (let* ((_g128542128561_
                                         (lambda (_g128543128558_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g128543128558_))))
                                        (_g128541128844_
                                         (lambda (_g128543128564_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g128543128564_))
                                               (let ((_e128545128566_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g128543128564_))))
                                                 (let ((_hd128546128569_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e128545128566_)))
                                                       (_tl128547128571_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e128545128566_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl128547128571_))
                                                       (let ((_g132024_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl128547128571_ '0))))
                 (begin
                   (let ((_g132025_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g132024_)
                                (##vector-length _g132024_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g132025_ 2)))
                         (error "Context expects 2 values" _g132025_)))
                   (let ((_target128548128574_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g132024_ 0)))
                         (_tl128550128576_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g132024_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl128550128576_))
                         (letrec ((_loop128551128579_
                                   (lambda (_hd128549128582_
                                            _clause128555128584_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd128549128582_))
                                         (let ((_e128552128587_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd128549128582_))))
                                           (let ((_lp-hd128553128590_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128552128587_)))
                                                 (_lp-tl128554128592_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128552128587_))))
                                             (let ((__tmp132026
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd128553128590_
                                                            _clause128555128584_))))
                                               (declare (not safe))
                                               (_loop128551128579_
                                                _lp-tl128554128592_
                                                __tmp132026))))
                                         (let ((_clause128556128595_
                                                (reverse _clause128555128584_)))
                                           ((lambda (_L128598_)
                                              (for-each
                                               (lambda (_clause128611_)
                                                 (let* ((___stx130785130786_
                                                         _clause128611_)
                                                        (_g128614128629_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx130785130786_)))))
                                                   (let ((___kont130787130788_
                                                          (lambda (_L128657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L128658_
                           _L128659_)
                    (for-each
                     (lambda (_g128674128676_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g128674128676_
                          _L128659_
                          _method-calls128003_
                          _slot-refs128004_)))
                     _L128657_)))
                 (___kont130789130790_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx130785130786_))
                                                         (let ((_e128619128641_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx130785130786_))))
                   (let ((_tl128621128646_
                          (let ()
                            (declare (not safe))
                            (##cdr _e128619128641_)))
                         (_hd128620128644_
                          (let ()
                            (declare (not safe))
                            (##car _e128619128641_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd128620128644_))
                         (let ((_e128622128649_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd128620128644_))))
                           (let ((_tl128624128654_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e128622128649_)))
                                 (_hd128623128652_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e128622128649_))))
                             (___kont130787130788_
                              _tl128621128646_
                              _tl128624128654_
                              _hd128623128652_)))
                         (___kont130789130790_))))
                 (___kont130789130790_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp132027
                                                      (lambda (_g128681128684_
                                                               _g128682128686_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g128681128684_
                                                                _g128682128686_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp132027
                                                         '()
                                                         _L128598_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?128007_))
                                                  _stx127911_
                                                  (let* ((_specializer-id128695_
                                                          (let* ((_id128689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132028
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L127984_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp132028 '"::specialize")))
                         (_specializer-id128692_
                          (let ((__tmp132029
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx127911_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id128689_ __tmp132029))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id128692_))
                    _specializer-id128692_))
                 (_$klass128697_
                  (let ((__tmp132030 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132030)))
                 (_$method-table128699_
                  (let ((__tmp132031 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132031)))
                 (_methods128701_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls128003_)))
                 (_$methods128705_
                  (map (lambda (_id128703_)
                         (let ((__tmp132032 (gensym _id128703_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132032)))
                       _methods128701_))
                 (_g132033_
                  (for-each
                   (lambda (_g128706128709_ _g128707128711_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls128003_
                        _g128706128709_
                        _g128707128711_)))
                   _methods128701_
                   _$methods128705_))
                 (_methods-bind128722_
                  (map (lambda (_g128714128717_ _g128715128719_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind127913_
                            _$klass128697_
                            _$method-table128699_
                            _g128714128717_
                            _g128715128719_)))
                       _methods128701_
                       _$methods128705_))
                 (_slots128724_
                  (let () (declare (not safe)) (hash-keys _slot-refs128004_)))
                 (_$slots128728_
                  (map (lambda (_id128726_)
                         (let ((__tmp132034 (gensym _id128726_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132034)))
                       _slots128724_))
                 (_g132035_
                  (for-each
                   (lambda (_g128729128732_ _g128730128734_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs128004_
                        _g128729128732_
                        _g128730128734_)))
                   _slots128724_
                   _$slots128728_))
                 (_slots-bind128745_
                  (map (lambda (_g128737128740_ _g128738128742_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind127914_
                            _$klass128697_
                            _g128737128740_
                            _g128738128742_)))
                       _slots128724_
                       _$slots128728_))
                 (_specializer-clauses128837_
                  (map (lambda (_clause128747_)
                         (let* ((___stx130805130806_ _clause128747_)
                                (_g128750128765_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx130805130806_)))))
                           (let ((___kont130807130808_
                                  (lambda (_L128793_ _L128794_ _L128795_)
                                    (let* ((_body128825_
                                            (map (lambda (_g128820128822_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g128820128822_
                                                      _L128795_
                                                      _$klass128697_
                                                      _method-calls128003_
                                                      _slot-refs128004_)))
                                                 _L128793_))
                                           (__tmp132036
                                            (let ()
                                              (declare (not safe))
                                              (cons _L128795_ _L128794_))))
                                      (declare (not safe))
                                      (cons __tmp132036 _body128825_))))
                                 (___kont130809130810_
                                  (lambda () _clause128747_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx130805130806_))
                                 (let ((_e128755128777_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx130805130806_))))
                                   (let ((_tl128757128782_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e128755128777_)))
                                         (_hd128756128780_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e128755128777_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd128756128780_))
                                         (let ((_e128758128785_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd128756128780_))))
                                           (let ((_tl128760128790_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e128758128785_)))
                                                 (_hd128759128788_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e128758128785_))))
                                             (___kont130807130808_
                                              _tl128757128782_
                                              _tl128760128790_
                                              _hd128759128788_)))
                                         (___kont130809130810_))))
                                 (___kont130809130810_)))))
                       (let ((__tmp132037
                              (lambda (_g128829128832_ _g128830128834_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g128829128832_ _g128830128834_)))))
                         (declare (not safe))
                         (foldr1 __tmp132037 '() _L128598_))))
                 (_specializer-impl128839_
                  (let ((__tmp132038
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses128837_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp132038 _stx127911_)))
                 (_specializer-impl128841_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl127915_
                     _$klass128697_
                     _$method-table128699_
                     _methods-bind128722_
                     _slots-bind128745_
                     _specializer-impl128839_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp132040
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L127984_)))
                                                          (__tmp132039
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id128695_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp132040
                                                       '" => "
                                                       __tmp132039))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def127916_
                                                       _L127984_
                                                       _specializer-id128695_
                                                       _specializer-impl128841_)))))
                                            _clause128556128595_))))))
                           (let ()
                             (declare (not safe))
                             (_loop128551128579_ _target128548128574_ '())))
                         (let ()
                           (declare (not safe))
                           (_g128542128561_ _g128543128564_))))))
               (let ()
                 (declare (not safe))
                 (_g128542128561_ _g128543128564_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g128542128561_
                                                  _g128543128564_))))))
                                   (declare (not safe))
                                   (_g128541128844_ _L127983_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L127983_))
                                     (let* ((_g128847128877_
                                             (lambda (_g128848128874_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g128848128874_))))
                                            (_g128846129482_
                                             (lambda (_g128848128880_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g128848128880_))
                                                   (let ((_e128852128882_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g128848128880_))))
                                                     (let ((_hd128853128885_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e128852128882_)))
                                                           (_tl128854128887_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e128852128882_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl128854128887_))
                                                           (let ((_e128855128890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl128854128887_))))
                     (let ((_hd128856128893_
                            (let ()
                              (declare (not safe))
                              (##car _e128855128890_)))
                           (_tl128857128895_
                            (let ()
                              (declare (not safe))
                              (##cdr _e128855128890_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd128856128893_))
                           (let ((_e128858128898_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd128856128893_))))
                             (let ((_hd128859128901_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e128858128898_)))
                                   (_tl128860128903_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e128858128898_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd128859128901_))
                                   (let ((_e128861128906_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd128859128901_))))
                                     (let ((_hd128862128909_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e128861128906_)))
                                           (_tl128863128911_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e128861128906_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd128862128909_))
                                           (let ((_e128864128914_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd128862128909_))))
                                             (let ((_hd128865128917_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e128864128914_)))
                                                   (_tl128866128919_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e128864128914_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl128866128919_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl128863128911_))
                                                       (let ((_e128867128922_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl128863128911_))))
                 (let ((_hd128868128925_
                        (let () (declare (not safe)) (##car _e128867128922_)))
                       (_tl128869128927_
                        (let () (declare (not safe)) (##cdr _e128867128922_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl128869128927_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl128860128903_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl128857128895_))
                               (let ((_e128870128930_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl128857128895_))))
                                 (let ((_hd128871128933_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e128870128930_)))
                                       (_tl128872128935_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e128870128930_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl128872128935_))
                                       ((lambda (_L128938_ _L128939_ _L128940_)
                                          (let* ((_g128963128981_
                                                  (lambda (_g128964128978_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g128964128978_))))
                                                 (_g128962129032_
                                                  (lambda (_g128964128984_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g128964128984_))
                                                        (let ((_e128968128986_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g128964128984_))))
                  (let ((_hd128969128989_
                         (let () (declare (not safe)) (##car _e128968128986_)))
                        (_tl128970128991_
                         (let ()
                           (declare (not safe))
                           (##cdr _e128968128986_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128970128991_))
                        (let ((_e128971128994_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128970128991_))))
                          (let ((_hd128972128997_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128971128994_)))
                                (_tl128973128999_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128971128994_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128972128997_))
                                (let ((_e128974129002_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128972128997_))))
                                  (let ((_hd128975129005_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128974129002_)))
                                        (_tl128976129007_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128974129002_))))
                                    ((lambda (_L129010_ _L129011_ _L129012_)
                                       (for-each
                                        (lambda (_g129027129029_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g129027129029_
                                             _L129012_
                                             _method-calls128003_
                                             _slot-refs128004_)))
                                        _L129010_))
                                     _tl128973128999_
                                     _tl128976129007_
                                     _hd128975129005_)))
                                (let ()
                                  (declare (not safe))
                                  (_g128963128981_ _g128964128984_)))))
                        (let ()
                          (declare (not safe))
                          (_g128963128981_ _g128964128984_)))))
                (let ()
                  (declare (not safe))
                  (_g128963128981_ _g128964128984_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g128962129032_ _L128939_))
                                          (let* ((_g129035129054_
                                                  (lambda (_g129036129051_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g129036129051_))))
                                                 (_g129034129173_
                                                  (lambda (_g129036129057_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g129036129057_))
                                                        (let ((_e129038129059_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g129036129057_))))
                  (let ((_hd129039129062_
                         (let () (declare (not safe)) (##car _e129038129059_)))
                        (_tl129040129064_
                         (let ()
                           (declare (not safe))
                           (##cdr _e129038129059_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl129040129064_))
                        (let ((_g132041_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl129040129064_
                                  '0))))
                          (begin
                            (let ((_g132042_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g132041_)
                                         (##vector-length _g132041_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g132042_ 2)))
                                  (error "Context expects 2 values"
                                         _g132042_)))
                            (let ((_target129041129067_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132041_ 0)))
                                  (_tl129043129069_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g132041_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129043129069_))
                                  (letrec ((_loop129044129072_
                                            (lambda (_hd129042129075_
                                                     _clause129048129077_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129042129075_))
                                                  (let ((_e129045129080_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129042129075_))))
                                                    (let ((_lp-hd129046129083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129045129080_)))
                                                          (_lp-tl129047129085_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129045129080_))))
                                                      (let ((__tmp132043
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd129046129083_ _clause129048129077_))))
                (declare (not safe))
                (_loop129044129072_ _lp-tl129047129085_ __tmp132043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause129049129088_
                                                         (reverse _clause129048129077_)))
                                                    ((lambda (_L129091_)
                                                       (for-each
                                                        (lambda (_clause129104_)
                                                          (let* ((_g129106129121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g129107129118_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129107129118_))))
                         (_g129105129163_
                          (lambda (_g129107129124_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g129107129124_))
                                (let ((_e129111129126_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g129107129124_))))
                                  (let ((_hd129112129129_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129111129126_)))
                                        (_tl129113129131_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129111129126_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129112129129_))
                                        (let ((_e129114129134_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129112129129_))))
                                          (let ((_hd129115129137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129114129134_)))
                                                (_tl129116129139_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129114129134_))))
                                            ((lambda (_L129142_
                                                      _L129143_
                                                      _L129144_)
                                               (for-each
                                                (lambda (_g129158129160_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g129158129160_
                                                     _L129144_
                                                     _method-calls128003_
                                                     _slot-refs128004_)))
                                                _L129142_))
                                             _tl129113129131_
                                             _tl129116129139_
                                             _hd129115129137_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g129106129121_ _g129107129124_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g129106129121_ _g129107129124_))))))
                    (declare (not safe))
                    (_g129105129163_ _clause129104_)))
                (let ((__tmp132044
                       (lambda (_g129165129168_ _g129166129170_)
                         (let ()
                           (declare (not safe))
                           (cons _g129165129168_ _g129166129170_)))))
                  (declare (not safe))
                  (foldr1 __tmp132044 '() _L129091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause129049129088_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop129044129072_
                                       _target129041129067_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g129035129054_ _g129036129057_))))))
                        (let ()
                          (declare (not safe))
                          (_g129035129054_ _g129036129057_)))))
                (let ()
                  (declare (not safe))
                  (_g129035129054_ _g129036129057_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g129034129173_ _L128938_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?128007_))
                                              _stx127911_
                                              (let* ((_specializer-id129182_
                                                      (let* ((_id129176_
                                                              (let ((__tmp132045
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L127984_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp132045 '"::specialize")))
                     (_specializer-id129179_
                      (let ((__tmp132046
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx127911_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id129176_ __tmp132046))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id129179_))
                _specializer-id129179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass129184_
                                                      (let ((__tmp132047
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp132047)))
                                                     (_$method-table129186_
                                                      (let ((__tmp132048
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp132048)))
                                                     (_methods129188_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls128003_)))
                                                     (_$methods129192_
                                                      (map (lambda (_id129190_)
                                                             (let ((__tmp132049
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id129190_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp132049)))
                   _methods129188_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g132050_
                                                      (for-each
                                                       (lambda (_g129193129196_
                                                                _g129194129198_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls128003_
                                                            _g129193129196_
                                                            _g129194129198_)))
                                                       _methods129188_
                                                       _$methods129192_))
                                                     (_methods-bind129209_
                                                      (map (lambda (_g129201129204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g129202129206_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind127913_
                        _$klass129184_
                        _$method-table129186_
                        _g129201129204_
                        _g129202129206_)))
                   _methods129188_
                   _$methods129192_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots129211_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs128004_)))
                                                     (_$slots129215_
                                                      (map (lambda (_id129213_)
                                                             (let ((__tmp132051
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id129213_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp132051)))
                   _slots129211_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g132052_
                                                      (for-each
                                                       (lambda (_g129216129219_
                                                                _g129217129221_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs128004_
                                                            _g129216129219_
                                                            _g129217129221_)))
                                                       _slots129211_
                                                       _$slots129215_))
                                                     (_slots-bind129232_
                                                      (map (lambda (_g129224129227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g129225129229_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind127914_
                        _$klass129184_
                        _g129224129227_
                        _g129225129229_)))
                   _slots129211_
                   _$slots129215_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr129318_
                                                      (let* ((_g129234129252_
                                                              (lambda (_g129235129249_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129235129249_))))
                     (_g129233129315_
                      (lambda (_g129235129255_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g129235129255_))
                            (let ((_e129239129257_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g129235129255_))))
                              (let ((_hd129240129260_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129239129257_)))
                                    (_tl129241129262_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129239129257_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl129241129262_))
                                    (let ((_e129242129265_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl129241129262_))))
                                      (let ((_hd129243129268_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129242129265_)))
                                            (_tl129244129270_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129242129265_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd129243129268_))
                                            (let ((_e129245129273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd129243129268_))))
                                              (let ((_hd129246129276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129245129273_)))
                                                    (_tl129247129278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129245129273_))))
                                                ((lambda (_L129281_
                                                          _L129282_
                                                          _L129283_)
                                                   (let* ((_body129313_
                                                           (map (lambda (_g129308129310_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g129308129310_
                             _L129283_
                             _$klass129184_
                             _method-calls128003_
                             _slot-refs128004_)))
                        _L129281_))
                  (__tmp132053
                   (let ((__tmp132054
                          (let ((__tmp132055
                                 (let ()
                                   (declare (not safe))
                                   (cons _L129283_ _L129282_))))
                            (declare (not safe))
                            (cons __tmp132055 _body129313_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp132054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp132053
                                                      _L128939_)))
                                                 _tl129244129270_
                                                 _tl129247129278_
                                                 _hd129246129276_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g129234129252_
                                               _g129235129255_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g129234129252_ _g129235129255_)))))
                            (let ()
                              (declare (not safe))
                              (_g129234129252_ _g129235129255_))))))
                (declare (not safe))
                (_g129233129315_ _L128939_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr129475_
                                                      (let* ((_g129320129339_
                                                              (lambda (_g129321129336_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129321129336_))))
                     (_g129319129472_
                      (lambda (_g129321129342_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g129321129342_))
                            (let ((_e129323129344_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g129321129342_))))
                              (let ((_hd129324129347_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129323129344_)))
                                    (_tl129325129349_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129323129344_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl129325129349_))
                                    (let ((_g132056_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl129325129349_
                                              '0))))
                                      (begin
                                        (let ((_g132057_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g132056_)
                                                     (##vector-length
                                                      _g132056_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g132057_ 2)))
                                              (error "Context expects 2 values"
                                                     _g132057_)))
                                        (let ((_target129326129352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g132056_ 0)))
                                              (_tl129328129354_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g132056_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129328129354_))
                                              (letrec ((_loop129329129357_
                                                        (lambda (_hd129327129360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause129333129362_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd129327129360_))
                      (let ((_e129330129365_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd129327129360_))))
                        (let ((_lp-hd129331129368_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129330129365_)))
                              (_lp-tl129332129370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129330129365_))))
                          (let ((__tmp132058
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd129331129368_
                                         _clause129333129362_))))
                            (declare (not safe))
                            (_loop129329129357_
                             _lp-tl129332129370_
                             __tmp132058))))
                      (let ((_clause129334129373_
                             (reverse _clause129333129362_)))
                        ((lambda (_L129376_)
                           (let* ((_clauses129470_
                                   (map (lambda (_clause129390_)
                                          (let* ((___stx130825130826_
                                                  _clause129390_)
                                                 (_g129393129408_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx130825130826_)))))
                                            (let ((___kont130827130828_
                                                   (lambda (_L129436_
                                                            _L129437_
                                                            _L129438_)
                                                     (let* ((_body129458_
                                                             (map (lambda (_g129453129455_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g129453129455_
                               _L129438_
                               _$klass129184_
                               _method-calls128003_
                               _slot-refs128004_)))
                          _L129436_))
                    (__tmp132059
                     (let () (declare (not safe)) (cons _L129438_ _L129437_))))
               (declare (not safe))
               (cons __tmp132059 _body129458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont130829130830_
                                                   (lambda () _clause129390_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx130825130826_))
                                                  (let ((_e129398129420_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx130825130826_))))
                                                    (let ((_tl129400129425_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129398129420_)))
                                                          (_hd129399129423_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129398129420_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd129399129423_))
                                                          (let ((_e129401129428_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd129399129423_))))
                    (let ((_tl129403129433_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129401129428_)))
                          (_hd129402129431_
                           (let ()
                             (declare (not safe))
                             (##car _e129401129428_))))
                      (___kont130827130828_
                       _tl129400129425_
                       _tl129403129433_
                       _hd129402129431_)))
                  (___kont130829130830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont130829130830_)))))
                                        (let ((__tmp132060
                                               (lambda (_g129462129465_
                                                        _g129463129467_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g129462129465_
                                                         _g129463129467_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp132060 '() _L129376_))))
                                  (__tmp132061
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses129470_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp132061 _L128938_)))
                         _clause129334129373_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop129329129357_
                                                   _target129326129352_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g129320129339_
                                                 _g129321129342_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g129320129339_ _g129321129342_)))))
                            (let ()
                              (declare (not safe))
                              (_g129320129339_ _g129321129342_))))))
                (declare (not safe))
                (_g129319129472_ _L128938_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl129477_
                                                      (let ((__tmp132062
                                                             (let ((__tmp132063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp132065
                                   (let ((__tmp132066
                                          (let ((__tmp132068
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L128940_ '())))
                                                (__tmp132067
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr129318_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp132068 __tmp132067))))
                                     (declare (not safe))
                                     (cons __tmp132066 '())))
                                  (__tmp132064
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr129475_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp132065 __tmp132064))))
                       (declare (not safe))
                       (cons '%#let-values __tmp132063))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp132062 _stx127911_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl129479_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl127915_
                                                         _$klass129184_
                                                         _$method-table129186_
                                                         _methods-bind129209_
                                                         _slots-bind129232_
                                                         _specializer-impl129477_))))
                                                (let ((__tmp132070
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L127984_)))
                                                      (__tmp132069
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id129182_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp132070
                                                   '" => "
                                                   __tmp132069))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def127916_
                                                   _L127984_
                                                   _specializer-id129182_
                                                   _specializer-impl129479_)))))
                                        _hd128871128933_
                                        _hd128868128925_
                                        _hd128865128917_)
                                       (let ()
                                         (declare (not safe))
                                         (_g128847128877_ _g128848128880_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g128847128877_ _g128848128880_)))
                           (let ()
                             (declare (not safe))
                             (_g128847128877_ _g128848128880_)))
                       (let ()
                         (declare (not safe))
                         (_g128847128877_ _g128848128880_)))))
               (let () (declare (not safe)) (_g128847128877_ _g128848128880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g128847128877_
                                                      _g128848128880_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g128847128877_
                                              _g128848128880_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g128847128877_ _g128848128880_)))))
                           (let ()
                             (declare (not safe))
                             (_g128847128877_ _g128848128880_)))))
                   (let ()
                     (declare (not safe))
                     (_g128847128877_ _g128848128880_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g128847128877_
                                                      _g128848128880_))))))
                                       (declare (not safe))
                                       (_g128846129482_ _L127983_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L127983_))
                                         (let* ((_g129485129538_
                                                 (lambda (_g129486129535_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g129486129535_))))
                                                (_g129484130669_
                                                 (lambda (_g129486129541_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g129486129541_))
                                                       (let ((_e129492129543_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g129486129541_))))
                 (let ((_hd129493129546_
                        (let () (declare (not safe)) (##car _e129492129543_)))
                       (_tl129494129548_
                        (let () (declare (not safe)) (##cdr _e129492129543_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd129493129546_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd129493129546_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl129494129548_))
                               (let ((_e129495129551_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl129494129548_))))
                                 (let ((_hd129496129554_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e129495129551_)))
                                       (_tl129497129556_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e129495129551_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd129496129554_))
                                       (let ((_e129498129559_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd129496129554_))))
                                         (let ((_hd129499129562_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e129498129559_)))
                                               (_tl129500129564_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e129498129559_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd129499129562_))
                                               (let ((_e129501129567_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd129499129562_))))
                                                 (let ((_hd129502129570_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e129501129567_)))
                                                       (_tl129503129572_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e129501129567_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd129502129570_))
                                                       (let ((_e129504129575_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd129502129570_))))
                 (let ((_hd129505129578_
                        (let () (declare (not safe)) (##car _e129504129575_)))
                       (_tl129506129580_
                        (let () (declare (not safe)) (##cdr _e129504129575_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl129506129580_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl129503129572_))
                           (let ((_e129507129583_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl129503129572_))))
                             (let ((_hd129508129586_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e129507129583_)))
                                   (_tl129509129588_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e129507129583_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd129508129586_))
                                   (let ((_e129510129591_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd129508129586_))))
                                     (let ((_hd129511129594_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e129510129591_)))
                                           (_tl129512129596_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e129510129591_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd129511129594_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd129511129594_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl129512129596_))
                                                   (let ((_e129513129599_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl129512129596_))))
                                                     (let ((_hd129514129602_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e129513129599_)))
                                                           (_tl129515129604_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e129513129599_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd129514129602_))
                                                           (let ((_e129516129607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd129514129602_))))
                     (let ((_hd129517129610_
                            (let ()
                              (declare (not safe))
                              (##car _e129516129607_)))
                           (_tl129518129612_
                            (let ()
                              (declare (not safe))
                              (##cdr _e129516129607_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd129517129610_))
                           (let ((_e129519129615_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd129517129610_))))
                             (let ((_hd129520129618_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e129519129615_)))
                                   (_tl129521129620_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e129519129615_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd129520129618_))
                                   (let ((_e129522129623_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd129520129618_))))
                                     (let ((_hd129523129626_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e129522129623_)))
                                           (_tl129524129628_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e129522129623_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl129524129628_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl129521129620_))
                                               (let ((_e129525129631_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl129521129620_))))
                                                 (let ((_hd129526129634_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e129525129631_)))
                                                       (_tl129527129636_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e129525129631_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl129527129636_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl129518129612_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl129515129604_))
                       (let ((_e129528129639_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl129515129604_))))
                         (let ((_hd129529129642_
                                (let ()
                                  (declare (not safe))
                                  (##car _e129528129639_)))
                               (_tl129530129644_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e129528129639_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl129530129644_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl129509129588_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl129500129564_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl129497129556_))
                                           (let ((_e129531129647_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl129497129556_))))
                                             (let ((_hd129532129650_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e129531129647_)))
                                                   (_tl129533129652_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e129531129647_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl129533129652_))
                                                   ((lambda (_L129655_
                                                             _L129656_
                                                             _L129657_
                                                             _L129658_
                                                             _L129659_)
                                                      (let* ((_g129698129760_
                                                              (lambda (_g129699129757_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129699129757_))))
                     (_g129697130666_
                      (lambda (_g129699129763_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g129699129763_))
                            (let ((_e129705129765_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g129699129763_))))
                              (let ((_hd129706129768_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129705129765_)))
                                    (_tl129707129770_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129705129765_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd129706129768_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd129706129768_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl129707129770_))
                                            (let ((_e129708129773_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl129707129770_))))
                                              (let ((_hd129709129776_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129708129773_)))
                                                    (_tl129710129778_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129708129773_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129710129778_))
                                                    (let ((_e129711129781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129710129778_))))
                                                      (let ((_hd129712129784_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e129711129781_)))
                    (_tl129713129786_
                     (let () (declare (not safe)) (##cdr _e129711129781_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd129712129784_))
                    (let ((_e129714129789_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd129712129784_))))
                      (let ((_hd129715129792_
                             (let ()
                               (declare (not safe))
                               (##car _e129714129789_)))
                            (_tl129716129794_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129714129789_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd129715129792_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd129715129792_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl129716129794_))
                                    (let ((_e129717129797_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl129716129794_))))
                                      (let ((_hd129718129800_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129717129797_)))
                                            (_tl129719129802_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129717129797_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd129718129800_))
                                            (let ((_e129720129805_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd129718129800_))))
                                              (let ((_hd129721129808_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e129720129805_)))
                                                    (_tl129722129810_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e129720129805_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd129721129808_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd129721129808_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl129722129810_))
                                                            (let ((_e129723129813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl129722129810_))))
                      (let ((_hd129724129816_
                             (let ()
                               (declare (not safe))
                               (##car _e129723129813_)))
                            (_tl129725129818_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129723129813_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129725129818_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl129719129802_))
                                (let ((_e129726129821_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl129719129802_))))
                                  (let ((_hd129727129824_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129726129821_)))
                                        (_tl129728129826_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129726129821_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd129727129824_))
                                        (let ((_e129729129829_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd129727129824_))))
                                          (let ((_hd129730129832_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129729129829_)))
                                                (_tl129731129834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129729129829_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd129730129832_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd129730129832_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl129731129834_))
                                                        (let ((_e129732129837_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl129731129834_))))
                  (let ((_hd129733129840_
                         (let () (declare (not safe)) (##car _e129732129837_)))
                        (_tl129734129842_
                         (let ()
                           (declare (not safe))
                           (##cdr _e129732129837_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl129734129842_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl129728129826_))
                            (let ((_e129735129845_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl129728129826_))))
                              (let ((_hd129736129848_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e129735129845_)))
                                    (_tl129737129850_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e129735129845_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd129736129848_))
                                    (let ((_e129738129853_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd129736129848_))))
                                      (let ((_hd129739129856_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e129738129853_)))
                                            (_tl129740129858_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e129738129853_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd129739129856_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd129739129856_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl129740129858_))
                                                    (let ((_e129741129861_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl129740129858_))))
                                                      (let ((_hd129742129864_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e129741129861_)))
                    (_tl129743129866_
                     (let () (declare (not safe)) (##cdr _e129741129861_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl129743129866_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl129737129850_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl129737129850_))
                                  '1)
                            (let ((_g132071_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl129737129850_
                                      '1))))
                              (begin
                                (let ((_g132072_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g132071_)
                                             (##vector-length _g132071_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g132072_ 2)))
                                      (error "Context expects 2 values"
                                             _g132072_)))
                                (let ((_target129744129869_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132071_ 0)))
                                      (_tl129746129871_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132071_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl129746129871_))
                                      (let ((_e129753129874_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl129746129871_))))
                                        (let ((_hd129754129877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129753129874_)))
                                              (_tl129755129879_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129753129874_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129755129879_))
                                              (letrec ((_loop129747129882_
                                                        (lambda (_hd129745129885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref129751129887_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd129745129885_))
                      (let ((_e129748129890_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd129745129885_))))
                        (let ((_lp-hd129749129893_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129748129890_)))
                              (_lp-tl129750129895_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129748129890_))))
                          (let ((__tmp132073
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd129749129893_
                                         _kw-ref129751129887_))))
                            (declare (not safe))
                            (_loop129747129882_
                             _lp-tl129750129895_
                             __tmp132073))))
                      (let ((_kw-ref129752129898_
                             (reverse _kw-ref129751129887_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl129713129786_))
                            ((lambda (_L129901_
                                      _L129902_
                                      _L129903_
                                      _L129904_
                                      _L129905_)
                               (let* ((_kw-count129956_
                                       (length (let ((__tmp132074
                                                      (lambda (_g129948129951_
                                                               _g129949129953_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g129948129951_
                                                                _g129949129953_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp132074
                                                         '()
                                                         _L129902_))))
                                      (_self-index129958_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count129956_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L129657_))
                                     (let* ((_g129961129975_
                                             (lambda (_g129962129972_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g129962129972_))))
                                            (_g129960130088_
                                             (lambda (_g129962129978_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g129962129978_))
                                                   (let ((_e129965129980_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g129962129978_))))
                                                     (let ((_hd129966129983_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e129965129980_)))
                                                           (_tl129967129985_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e129965129980_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl129967129985_))
                                                           (let ((_e129968129988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl129967129985_))))
                     (let ((_hd129969129991_
                            (let ()
                              (declare (not safe))
                              (##car _e129968129988_)))
                           (_tl129970129993_
                            (let ()
                              (declare (not safe))
                              (##cdr _e129968129988_))))
                       ((lambda (_L129996_ _L129997_)
                          (let ((_self130013_
                                 (list-ref _L129997_ _self-index129958_)))
                            (for-each
                             (lambda (_g130014130016_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g130014130016_
                                  _self130013_
                                  _method-calls128003_
                                  _slot-refs128004_)))
                             _L129996_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?128007_))
                                _stx127911_
                                (let* ((_specializer-id130025_
                                        (let* ((_id130019_
                                                (let ((__tmp132075
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L127984_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp132075
                                                   '"::specialize")))
                                               (_specializer-id130022_
                                                (let ((__tmp132076
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx127911_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id130019_
                                                   __tmp132076))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id130022_))
                                          _specializer-id130022_))
                                       (_$klass130027_
                                        (let ((__tmp132077 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp132077)))
                                       (_$method-table130029_
                                        (let ((__tmp132078
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp132078)))
                                       (_methods130031_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls128003_)))
                                       (_$methods130035_
                                        (map (lambda (_id130033_)
                                               (let ((__tmp132079
                                                      (gensym _id130033_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp132079)))
                                             _methods130031_))
                                       (_g132080_
                                        (for-each
                                         (lambda (_g130036130039_
                                                  _g130037130041_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls128003_
                                              _g130036130039_
                                              _g130037130041_)))
                                         _methods130031_
                                         _$methods130035_))
                                       (_methods-bind130052_
                                        (map (lambda (_g130044130047_
                                                      _g130045130049_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind127913_
                                                  _$klass130027_
                                                  _$method-table130029_
                                                  _g130044130047_
                                                  _g130045130049_)))
                                             _methods130031_
                                             _$methods130035_))
                                       (_slots130054_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs128004_)))
                                       (_$slots130058_
                                        (map (lambda (_id130056_)
                                               (let ((__tmp132081
                                                      (gensym _id130056_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp132081)))
                                             _slots130054_))
                                       (_g132082_
                                        (for-each
                                         (lambda (_g130059130062_
                                                  _g130060130064_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs128004_
                                              _g130059130062_
                                              _g130060130064_)))
                                         _slots130054_
                                         _$slots130058_))
                                       (_slots-bind130075_
                                        (map (lambda (_g130067130070_
                                                      _g130068130072_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind127914_
                                                  _$klass130027_
                                                  _g130067130070_
                                                  _g130068130072_)))
                                             _slots130054_
                                             _$slots130058_))
                                       (_specializer-impl130083_
                                        (let* ((_specializer-body130081_
                                                (map (lambda (_g130076130078_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g130076130078_
                                                          _self130013_
                                                          _$klass130027_
                                                          _method-calls128003_
                                                          _slot-refs128004_)))
                                                     _L129996_))
                                               (__tmp132083
                                                (let ((__tmp132084
                                                       (let ((__tmp132086
                                                              (let ((__tmp132087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp132099
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129659_ '())))
                                   (__tmp132088
                                    (let ((__tmp132089
                                           (let ((__tmp132090
                                                  (let ((__tmp132092
                                                         (let ((__tmp132093
                                                                (let ((__tmp132098
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129658_ '())))
                              (__tmp132094
                               (let ((__tmp132095
                                      (let ((__tmp132096
                                             (let ((__tmp132097
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L129997_
                                                            _specializer-body130081_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp132097))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp132096
                                         _L129657_))))
                                 (declare (not safe))
                                 (cons __tmp132095 '()))))
                          (declare (not safe))
                          (cons __tmp132098 __tmp132094))))
                   (declare (not safe))
                   (cons __tmp132093 '())))
                (__tmp132091
                 (let () (declare (not safe)) (cons _L129656_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp132092
                                                          __tmp132091))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp132090))))
                                      (declare (not safe))
                                      (cons __tmp132089 '()))))
                               (declare (not safe))
                               (cons __tmp132099 __tmp132088))))
                        (declare (not safe))
                        (cons __tmp132087 '())))
                     (__tmp132085
                      (let () (declare (not safe)) (cons _L129655_ '()))))
                 (declare (not safe))
                 (cons __tmp132086 __tmp132085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp132084))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp132083
                                           _stx127911_)))
                                       (_specializer-impl130085_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl127915_
                                           _$klass130027_
                                           _$method-table130029_
                                           _methods-bind130052_
                                           _slots-bind130075_
                                           _specializer-impl130083_))))
                                  (let ((__tmp132101
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L127984_)))
                                        (__tmp132100
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id130025_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp132101
                                     '" => "
                                     __tmp132100))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def127916_
                                     _L127984_
                                     _specializer-id130025_
                                     _specializer-impl130085_))))))
                        _tl129970129993_
                        _hd129969129991_)))
                   (let ()
                     (declare (not safe))
                     (_g129961129975_ _g129962129978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g129961129975_
                                                      _g129962129978_))))))
                                       (declare (not safe))
                                       (_g129960130088_ _L129657_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L129657_))
                                         (let* ((_g130091130121_
                                                 (lambda (_g130092130118_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g130092130118_))))
                                                (_g130090130663_
                                                 (lambda (_g130092130124_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g130092130124_))
                                                       (let ((_e130096130126_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g130092130124_))))
                 (let ((_hd130097130129_
                        (let () (declare (not safe)) (##car _e130096130126_)))
                       (_tl130098130131_
                        (let () (declare (not safe)) (##cdr _e130096130126_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl130098130131_))
                       (let ((_e130099130134_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl130098130131_))))
                         (let ((_hd130100130137_
                                (let ()
                                  (declare (not safe))
                                  (##car _e130099130134_)))
                               (_tl130101130139_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e130099130134_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd130100130137_))
                               (let ((_e130102130142_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd130100130137_))))
                                 (let ((_hd130103130145_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e130102130142_)))
                                       (_tl130104130147_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e130102130142_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd130103130145_))
                                       (let ((_e130105130150_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd130103130145_))))
                                         (let ((_hd130106130153_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e130105130150_)))
                                               (_tl130107130155_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e130105130150_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd130106130153_))
                                               (let ((_e130108130158_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd130106130153_))))
                                                 (let ((_hd130109130161_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e130108130158_)))
                                                       (_tl130110130163_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e130108130158_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl130110130163_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl130107130155_))
                                                           (let ((_e130111130166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl130107130155_))))
                     (let ((_hd130112130169_
                            (let ()
                              (declare (not safe))
                              (##car _e130111130166_)))
                           (_tl130113130171_
                            (let ()
                              (declare (not safe))
                              (##cdr _e130111130166_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl130113130171_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl130104130147_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl130101130139_))
                                   (let ((_e130114130174_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl130101130139_))))
                                     (let ((_hd130115130177_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e130114130174_)))
                                           (_tl130116130179_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e130114130174_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl130116130179_))
                                           ((lambda (_L130182_
                                                     _L130183_
                                                     _L130184_)
                                              (let* ((_g130207130221_
                                                      (lambda (_g130208130218_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g130208130218_))))
                                                     (_g130206130262_
                                                      (lambda (_g130208130224_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g130208130224_))
                                                            (let ((_e130211130226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g130208130224_))))
                      (let ((_hd130212130229_
                             (let ()
                               (declare (not safe))
                               (##car _e130211130226_)))
                            (_tl130213130231_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130211130226_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130213130231_))
                            (let ((_e130214130234_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130213130231_))))
                              (let ((_hd130215130237_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130214130234_)))
                                    (_tl130216130239_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130214130234_))))
                                ((lambda (_L130242_ _L130243_)
                                   (let ((_self130256_
                                          (list-ref
                                           _L130243_
                                           _self-index129958_)))
                                     (for-each
                                      (lambda (_g130257130259_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g130257130259_
                                           _self130256_
                                           _method-calls128003_
                                           _slot-refs128004_)))
                                      _L130242_)))
                                 _tl130216130239_
                                 _hd130215130237_)))
                            (let ()
                              (declare (not safe))
                              (_g130207130221_ _g130208130224_)))))
                    (let ()
                      (declare (not safe))
                      (_g130207130221_ _g130208130224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g130206130262_ _L130183_))
                                              (let* ((_g130265130284_
                                                      (lambda (_g130266130281_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g130266130281_))))
                                                     (_g130264130389_
                                                      (lambda (_g130266130287_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g130266130287_))
                                                            (let ((_e130268130289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g130266130287_))))
                      (let ((_hd130269130292_
                             (let ()
                               (declare (not safe))
                               (##car _e130268130289_)))
                            (_tl130270130294_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130268130289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl130270130294_))
                            (let ((_g132102_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl130270130294_
                                      '0))))
                              (begin
                                (let ((_g132103_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g132102_)
                                             (##vector-length _g132102_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g132103_ 2)))
                                      (error "Context expects 2 values"
                                             _g132103_)))
                                (let ((_target130271130297_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132102_ 0)))
                                      (_tl130273130299_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g132102_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl130273130299_))
                                      (letrec ((_loop130274130302_
                                                (lambda (_hd130272130305_
                                                         _clause130278130307_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd130272130305_))
                                                      (let ((_e130275130310_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd130272130305_))))
                (let ((_lp-hd130276130313_
                       (let () (declare (not safe)) (##car _e130275130310_)))
                      (_lp-tl130277130315_
                       (let () (declare (not safe)) (##cdr _e130275130310_))))
                  (let ((__tmp132104
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd130276130313_ _clause130278130307_))))
                    (declare (not safe))
                    (_loop130274130302_ _lp-tl130277130315_ __tmp132104))))
              (let ((_clause130279130318_ (reverse _clause130278130307_)))
                ((lambda (_L130321_)
                   (for-each
                    (lambda (_clause130334_)
                      (let* ((_g130336130347_
                              (lambda (_g130337130344_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g130337130344_))))
                             (_g130335130379_
                              (lambda (_g130337130350_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g130337130350_))
                                    (let ((_e130340130352_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g130337130350_))))
                                      (let ((_hd130341130355_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130340130352_)))
                                            (_tl130342130357_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130340130352_))))
                                        ((lambda (_L130360_ _L130361_)
                                           (let ((_self130373_
                                                  (list-ref
                                                   _L130361_
                                                   _self-index129958_)))
                                             (for-each
                                              (lambda (_g130374130376_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g130374130376_
                                                   _self130373_
                                                   _method-calls128003_
                                                   _slot-refs128004_)))
                                              _L130360_)))
                                         _tl130342130357_
                                         _hd130341130355_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g130336130347_ _g130337130350_))))))
                        (declare (not safe))
                        (_g130335130379_ _clause130334_)))
                    (let ((__tmp132105
                           (lambda (_g130381130384_ _g130382130386_)
                             (let ()
                               (declare (not safe))
                               (cons _g130381130384_ _g130382130386_)))))
                      (declare (not safe))
                      (foldr1 __tmp132105 '() _L130321_))))
                 _clause130279130318_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop130274130302_
                                           _target130271130297_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g130265130284_ _g130266130287_))))))
                            (let ()
                              (declare (not safe))
                              (_g130265130284_ _g130266130287_)))))
                    (let ()
                      (declare (not safe))
                      (_g130265130284_ _g130266130287_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g130264130389_ _L130182_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?128007_))
                                                  _stx127911_
                                                  (let* ((_specializer-id130398_
                                                          (let* ((_id130392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp132106
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L127984_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp132106 '"::specialize")))
                         (_specializer-id130395_
                          (let ((__tmp132107
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx127911_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id130392_ __tmp132107))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id130395_))
                    _specializer-id130395_))
                 (_$klass130400_
                  (let ((__tmp132108 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132108)))
                 (_$method-table130402_
                  (let ((__tmp132109 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp132109)))
                 (_methods130404_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls128003_)))
                 (_$methods130408_
                  (map (lambda (_id130406_)
                         (let ((__tmp132110 (gensym _id130406_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132110)))
                       _methods130404_))
                 (_g132111_
                  (for-each
                   (lambda (_g130409130412_ _g130410130414_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls128003_
                        _g130409130412_
                        _g130410130414_)))
                   _methods130404_
                   _$methods130408_))
                 (_methods-bind130425_
                  (map (lambda (_g130417130420_ _g130418130422_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind127913_
                            _$klass130400_
                            _$method-table130402_
                            _g130417130420_
                            _g130418130422_)))
                       _methods130404_
                       _$methods130408_))
                 (_slots130427_
                  (let () (declare (not safe)) (hash-keys _slot-refs128004_)))
                 (_$slots130431_
                  (map (lambda (_id130429_)
                         (let ((__tmp132112 (gensym _id130429_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp132112)))
                       _slots130427_))
                 (_g132113_
                  (for-each
                   (lambda (_g130432130435_ _g130433130437_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs128004_
                        _g130432130435_
                        _g130433130437_)))
                   _slots130427_
                   _$slots130431_))
                 (_slots-bind130448_
                  (map (lambda (_g130440130443_ _g130441130445_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind127914_
                            _$klass130400_
                            _g130440130443_
                            _g130441130445_)))
                       _slots130427_
                       _$slots130431_))
                 (_specializer-lambda-expr130521_
                  (let* ((_g130450130464_
                          (lambda (_g130451130461_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130451130461_))))
                         (_g130449130518_
                          (lambda (_g130451130467_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g130451130467_))
                                (let ((_e130454130469_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g130451130467_))))
                                  (let ((_hd130455130472_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130454130469_)))
                                        (_tl130456130474_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130454130469_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl130456130474_))
                                        (let ((_e130457130477_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl130456130474_))))
                                          (let ((_hd130458130480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130457130477_)))
                                                (_tl130459130482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130457130477_))))
                                            ((lambda (_L130485_ _L130486_)
                                               (let* ((_self130509_
                                                       (list-ref
                                                        _L130486_
                                                        _self-index129958_))
                                                      (_body130515_
                                                       (map (lambda (_g130510130512_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g130510130512_
                         _self130509_
                         _$klass130400_
                         _method-calls128003_
                         _slot-refs128004_)))
                    _L130485_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp132114
                                                        (let ((__tmp132115
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L130486_ _body130515_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp132115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp132114
                                                    _L130183_))))
                                             _tl130459130482_
                                             _hd130458130480_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g130450130464_ _g130451130467_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g130450130464_ _g130451130467_))))))
                    (declare (not safe))
                    (_g130449130518_ _L130183_)))
                 (_specializer-case-lambda-expr130656_
                  (let* ((_g130523130542_
                          (lambda (_g130524130539_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130524130539_))))
                         (_g130522130653_
                          (lambda (_g130524130545_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g130524130545_))
                                (let ((_e130526130547_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g130524130545_))))
                                  (let ((_hd130527130550_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130526130547_)))
                                        (_tl130528130552_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130526130547_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl130528130552_))
                                        (let ((_g132116_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl130528130552_
                                                  '0))))
                                          (begin
                                            (let ((_g132117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g132116_)
                                                         (##vector-length
                                                          _g132116_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g132117_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g132117_)))
                                            (let ((_target130529130555_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g132116_
                                                      0)))
                                                  (_tl130531130557_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g132116_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl130531130557_))
                                                  (letrec ((_loop130532130560_
                                                            (lambda (_hd130530130563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause130536130565_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd130530130563_))
                          (let ((_e130533130568_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd130530130563_))))
                            (let ((_lp-hd130534130571_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e130533130568_)))
                                  (_lp-tl130535130573_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e130533130568_))))
                              (let ((__tmp132118
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd130534130571_
                                             _clause130536130565_))))
                                (declare (not safe))
                                (_loop130532130560_
                                 _lp-tl130535130573_
                                 __tmp132118))))
                          (let ((_clause130537130576_
                                 (reverse _clause130536130565_)))
                            ((lambda (_L130579_)
                               (let* ((_clauses130651_
                                       (map (lambda (_clause130593_)
                                              (let* ((_g130595130606_
                                                      (lambda (_g130596130603_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g130596130603_))))
                                                     (_g130594130641_
                                                      (lambda (_g130596130609_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g130596130609_))
                                                            (let ((_e130599130611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g130596130609_))))
                      (let ((_hd130600130614_
                             (let ()
                               (declare (not safe))
                               (##car _e130599130611_)))
                            (_tl130601130616_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130599130611_))))
                        ((lambda (_L130619_ _L130620_)
                           (let* ((_self130632_
                                   (list-ref _L130620_ _self-index129958_))
                                  (_body130638_
                                   (map (lambda (_g130633130635_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g130633130635_
                                             _self130632_
                                             _$klass130400_
                                             _method-calls128003_
                                             _slot-refs128004_)))
                                        _L130619_)))
                             (let ()
                               (declare (not safe))
                               (cons _L130620_ _body130638_))))
                         _tl130601130616_
                         _hd130600130614_)))
                    (let ()
                      (declare (not safe))
                      (_g130595130606_ _g130596130609_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g130594130641_
                                                 _clause130593_)))
                                            (let ((__tmp132119
                                                   (lambda (_g130643130646_
                                                            _g130644130648_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g130643130646_
                                                             _g130644130648_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp132119
                                                      '()
                                                      _L130579_))))
                                      (__tmp132120
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses130651_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp132120
                                  _L130182_)))
                             _clause130537130576_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop130532130560_
                                                       _target130529130555_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g130523130542_
                                                     _g130524130545_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g130523130542_ _g130524130545_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g130523130542_ _g130524130545_))))))
                    (declare (not safe))
                    (_g130522130653_ _L130182_)))
                 (_specializer-impl130658_
                  (let ((__tmp132121
                         (let ((__tmp132122
                                (let ((__tmp132124
                                       (let ((__tmp132125
                                              (let ((__tmp132142
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L129659_ '())))
                                                    (__tmp132126
                                                     (let ((__tmp132127
                                                            (let ((__tmp132128
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp132130
                                  (let ((__tmp132131
                                         (let ((__tmp132141
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129658_ '())))
                                               (__tmp132132
                                                (let ((__tmp132133
                                                       (let ((__tmp132134
                                                              (let ((__tmp132135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp132137
                                    (let ((__tmp132138
                                           (let ((__tmp132140
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130184_ '())))
                                                 (__tmp132139
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr130521_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp132140 __tmp132139))))
                                      (declare (not safe))
                                      (cons __tmp132138 '())))
                                   (__tmp132136
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr130656_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp132137 __tmp132136))))
                        (declare (not safe))
                        (cons '%#let-values __tmp132135))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp132134 _stx127911_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp132133 '()))))
                                           (declare (not safe))
                                           (cons __tmp132141 __tmp132132))))
                                    (declare (not safe))
                                    (cons __tmp132131 '())))
                                 (__tmp132129
                                  (let ()
                                    (declare (not safe))
                                    (cons _L129656_ '()))))
                             (declare (not safe))
                             (cons __tmp132130 __tmp132129))))
                      (declare (not safe))
                      (cons '%#let-values __tmp132128))))
               (declare (not safe))
               (cons __tmp132127 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp132142
                                                      __tmp132126))))
                                         (declare (not safe))
                                         (cons __tmp132125 '())))
                                      (__tmp132123
                                       (let ()
                                         (declare (not safe))
                                         (cons _L129655_ '()))))
                                  (declare (not safe))
                                  (cons __tmp132124 __tmp132123))))
                           (declare (not safe))
                           (cons '%#let-values __tmp132122))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp132121 _stx127911_)))
                 (_specializer-impl130660_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl127915_
                     _$klass130400_
                     _$method-table130402_
                     _methods-bind130425_
                     _slots-bind130448_
                     _specializer-impl130658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp132144
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L127984_)))
                                                          (__tmp132143
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id130398_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp132144
                                                       '" => "
                                                       __tmp132143))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def127916_
                                                       _L127984_
                                                       _specializer-id130398_
                                                       _specializer-impl130660_)))))
                                            _hd130115130177_
                                            _hd130112130169_
                                            _hd130109130161_)
                                           (let ()
                                             (declare (not safe))
                                             (_g130091130121_
                                              _g130092130124_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g130091130121_ _g130092130124_)))
                               (let ()
                                 (declare (not safe))
                                 (_g130091130121_ _g130092130124_)))
                           (let ()
                             (declare (not safe))
                             (_g130091130121_ _g130092130124_)))))
                   (let ()
                     (declare (not safe))
                     (_g130091130121_ _g130092130124_)))
               (let ()
                 (declare (not safe))
                 (_g130091130121_ _g130092130124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g130091130121_
                                                  _g130092130124_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g130091130121_ _g130092130124_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g130091130121_ _g130092130124_)))))
                       (let ()
                         (declare (not safe))
                         (_g130091130121_ _g130092130124_)))))
               (let ()
                 (declare (not safe))
                 (_g130091130121_ _g130092130124_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g130090130663_ _L129657_))
                                         _stx127911_))))
                             _hd129754129877_
                             _kw-ref129752129898_
                             _hd129742129864_
                             _hd129733129840_
                             _hd129724129816_)
                            (let ()
                              (declare (not safe))
                              (_g129698129760_ _g129699129763_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop129747129882_
                                                   _target129744129869_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g129698129760_
                                                 _g129699129763_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g129698129760_ _g129699129763_))))))
                            (let ()
                              (declare (not safe))
                              (_g129698129760_ _g129699129763_)))
                        (let ()
                          (declare (not safe))
                          (_g129698129760_ _g129699129763_)))
                    (let ()
                      (declare (not safe))
                      (_g129698129760_ _g129699129763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g129698129760_
                                                       _g129699129763_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g129698129760_
                                                   _g129699129763_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g129698129760_
                                               _g129699129763_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g129698129760_ _g129699129763_)))))
                            (let ()
                              (declare (not safe))
                              (_g129698129760_ _g129699129763_)))
                        (let ()
                          (declare (not safe))
                          (_g129698129760_ _g129699129763_)))))
                (let ()
                  (declare (not safe))
                  (_g129698129760_ _g129699129763_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g129698129760_
                                                       _g129699129763_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g129698129760_
                                                   _g129699129763_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g129698129760_ _g129699129763_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g129698129760_ _g129699129763_)))
                            (let ()
                              (declare (not safe))
                              (_g129698129760_ _g129699129763_)))))
                    (let ()
                      (declare (not safe))
                      (_g129698129760_ _g129699129763_)))
                (let ()
                  (declare (not safe))
                  (_g129698129760_ _g129699129763_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g129698129760_
                                                       _g129699129763_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g129698129760_
                                               _g129699129763_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g129698129760_ _g129699129763_)))
                                (let ()
                                  (declare (not safe))
                                  (_g129698129760_ _g129699129763_)))
                            (let ()
                              (declare (not safe))
                              (_g129698129760_ _g129699129763_)))))
                    (let ()
                      (declare (not safe))
                      (_g129698129760_ _g129699129763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g129698129760_
                                                       _g129699129763_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g129698129760_
                                               _g129699129763_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g129698129760_ _g129699129763_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g129698129760_ _g129699129763_)))))
                            (let ()
                              (declare (not safe))
                              (_g129698129760_ _g129699129763_))))))
                (declare (not safe))
                (_g129697130666_ _L129656_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd129532129650_
                                                    _hd129529129642_
                                                    _hd129526129634_
                                                    _hd129523129626_
                                                    _hd129505129578_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g129485129538_
                                                      _g129486129541_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g129485129538_
                                              _g129486129541_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g129485129538_ _g129486129541_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g129485129538_ _g129486129541_)))
                               (let ()
                                 (declare (not safe))
                                 (_g129485129538_ _g129486129541_)))))
                       (let ()
                         (declare (not safe))
                         (_g129485129538_ _g129486129541_)))
                   (let ()
                     (declare (not safe))
                     (_g129485129538_ _g129486129541_)))
               (let ()
                 (declare (not safe))
                 (_g129485129538_ _g129486129541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g129485129538_
                                                  _g129486129541_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g129485129538_
                                              _g129486129541_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g129485129538_ _g129486129541_)))))
                           (let ()
                             (declare (not safe))
                             (_g129485129538_ _g129486129541_)))))
                   (let ()
                     (declare (not safe))
                     (_g129485129538_ _g129486129541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g129485129538_
                                                      _g129486129541_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g129485129538_
                                                  _g129486129541_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g129485129538_
                                              _g129486129541_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g129485129538_ _g129486129541_)))))
                           (let ()
                             (declare (not safe))
                             (_g129485129538_ _g129486129541_)))
                       (let ()
                         (declare (not safe))
                         (_g129485129538_ _g129486129541_)))))
               (let ()
                 (declare (not safe))
                 (_g129485129538_ _g129486129541_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g129485129538_
                                                  _g129486129541_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g129485129538_ _g129486129541_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g129485129538_ _g129486129541_)))
                           (let ()
                             (declare (not safe))
                             (_g129485129538_ _g129486129541_)))
                       (let ()
                         (declare (not safe))
                         (_g129485129538_ _g129486129541_)))))
               (let ()
                 (declare (not safe))
                 (_g129485129538_ _g129486129541_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g129484130669_ _L127983_))
                                         _stx127911_))))))))
                  (___kont130849130850_ (lambda () _stx127911_)))
              (let ((___match130878130879_
                     (lambda (_e127923127951_
                              _hd127924127954_
                              _tl127925127956_
                              _e127926127959_
                              _hd127927127962_
                              _tl127928127964_
                              _e127929127967_
                              _hd127930127970_
                              _tl127931127972_
                              _e127932127975_
                              _hd127933127978_
                              _tl127934127980_)
                       (let ((_L127983_ _hd127933127978_)
                             (_L127984_ _hd127930127970_))
                         (if (let ((__tmp132145
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L127984_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp132145))
                             (___kont130847130848_ _L127983_ _L127984_)
                             (___kont130849130850_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx130845130846_))
                    (let ((_e127923127951_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx130845130846_))))
                      (let ((_tl127925127956_
                             (let ()
                               (declare (not safe))
                               (##cdr _e127923127951_)))
                            (_hd127924127954_
                             (let ()
                               (declare (not safe))
                               (##car _e127923127951_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl127925127956_))
                            (let ((_e127926127959_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl127925127956_))))
                              (let ((_tl127928127964_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e127926127959_)))
                                    (_hd127927127962_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e127926127959_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd127927127962_))
                                    (let ((_e127929127967_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd127927127962_))))
                                      (let ((_tl127931127972_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e127929127967_)))
                                            (_hd127930127970_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e127929127967_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl127931127972_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl127928127964_))
                                                (let ((_e127932127975_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl127928127964_))))
                                                  (let ((_tl127934127980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e127932127975_)))
                                                        (_hd127933127978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e127932127975_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl127934127980_))
                                                        (___match130878130879_
                                                         _e127923127951_
                                                         _hd127924127954_
                                                         _tl127925127956_
                                                         _e127926127959_
                                                         _hd127927127962_
                                                         _tl127928127964_
                                                         _e127929127967_
                                                         _hd127930127970_
                                                         _tl127931127972_
                                                         _e127932127975_
                                                         _hd127933127978_
                                                         _tl127934127980_)
                                                        (___kont130849130850_))))
                                                (___kont130849130850_))
                                            (___kont130849130850_))))
                                    (___kont130849130850_))))
                            (___kont130849130850_))))
                    (___kont130849130850_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx126870_ _self126871_ _methods126872_ _slots126873_)
        (let* ((___stx130881130882_ _stx126870_)
               (_g126881127103_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx130881130882_)))))
          (let ((___kont130883130884_
                 (lambda (_L127860_ _L127861_ _L127862_ _L127863_)
                   (let ((__tmp132146
                          (let () (declare (not safe)) (gx#stx-e _L127861_))))
                     (declare (not safe))
                     (hash-put! _methods126872_ __tmp132146 '#t))
                   (for-each
                    (lambda (_g127896127898_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g127896127898_
                         _self126871_
                         _methods126872_
                         _slots126873_)))
                    (let ((__tmp132147
                           (lambda (_g127900127903_ _g127901127905_)
                             (let ()
                               (declare (not safe))
                               (cons _g127900127903_ _g127901127905_)))))
                      (declare (not safe))
                      (foldr1 __tmp132147 '() _L127860_)))))
                (___kont130887130888_
                 (lambda (_L127695_ _L127696_ _L127697_ _L127698_ _L127699_)
                   (let ((__tmp132148
                          (let () (declare (not safe)) (gx#stx-e _L127696_))))
                     (declare (not safe))
                     (hash-put! _methods126872_ __tmp132148 '#t))
                   (for-each
                    (lambda (_g127739127741_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g127739127741_
                         _self126871_
                         _methods126872_
                         _slots126873_)))
                    (let ((__tmp132149
                           (lambda (_g127743127746_ _g127744127748_)
                             (let ()
                               (declare (not safe))
                               (cons _g127743127746_ _g127744127748_)))))
                      (declare (not safe))
                      (foldr1 __tmp132149 '() _L127695_)))))
                (___kont130891130892_
                 (lambda (_L127528_ _L127529_ _L127530_)
                   (let ((__tmp132150
                          (let () (declare (not safe)) (gx#stx-e _L127528_))))
                     (declare (not safe))
                     (hash-put! _slots126873_ __tmp132150 '#t))))
                (___kont130893130894_
                 (lambda (_L127405_ _L127406_ _L127407_ _L127408_)
                   (let ((__tmp132151
                          (let () (declare (not safe)) (gx#stx-e _L127406_))))
                     (declare (not safe))
                     (hash-put! _slots126873_ __tmp132151 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L127405_
                      _self126871_
                      _methods126872_
                      _slots126873_))))
                (___kont130895130896_
                 (lambda (_L127279_ _L127280_)
                   (let* ((_accessor127302_
                           (let ((__tmp132152
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L127280_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp132152)))
                          (_klass127304_
                           (let ((__tmp132153
                                  (##structure-ref
                                   _accessor127302_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx126870_
                              __tmp132153)))
                          (_slot127306_
                           (##structure-ref
                            _accessor127302_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp132154
                                     (##structure-ref
                                      _accessor127302_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp132154))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass127304_
                                     _slot127306_))
                                  (##structure-ref
                                   _klass127304_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp132155
                                (##structure-ref
                                 _accessor127302_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots126873_ __tmp132155 '#t))))))
                (___kont130897130898_
                 (lambda (_L127179_ _L127180_ _L127181_)
                   (let* ((_mutator127208_
                           (let ((__tmp132156
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L127181_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp132156)))
                          (_klass127210_
                           (let ((__tmp132157
                                  (##structure-ref
                                   _mutator127208_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx126870_
                              __tmp132157)))
                          (_slot127212_
                           (##structure-ref
                            _mutator127208_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp132158
                                     (##structure-ref
                                      _mutator127208_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp132158))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass127210_
                                     _slot127212_))
                                  (##structure-ref
                                   _klass127210_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots126873_ _slot127212_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L127179_
                        _self126871_
                        _methods126872_
                        _slots126873_)))))
                (___kont130899130900_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx126870_
                      _self126871_
                      _methods126872_
                      _slots126873_)))))
            (let* ((___match131380131381_
                    (lambda (_e127075127115_
                             _hd127076127118_
                             _tl127077127120_
                             _e127078127123_
                             _hd127079127126_
                             _tl127080127128_
                             _e127081127131_
                             _hd127082127134_
                             _tl127083127136_
                             _e127084127139_
                             _hd127085127142_
                             _tl127086127144_
                             _e127087127147_
                             _hd127088127150_
                             _tl127089127152_
                             _e127090127155_
                             _hd127091127158_
                             _tl127092127160_
                             _e127093127163_
                             _hd127094127166_
                             _tl127095127168_
                             _e127096127171_
                             _hd127097127174_
                             _tl127098127176_)
                      (let ((_L127179_ _hd127097127174_)
                            (_L127180_ _hd127094127166_)
                            (_L127181_ _hd127085127142_))
                        (if (and (let ((__tmp132159
                                        (let ((__tmp132160
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L127181_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp132160))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp132159
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127180_
                                    _self126871_)))
                            (___kont130897130898_
                             _L127179_
                             _L127180_
                             _L127181_)
                            (___kont130899130900_)))))
                   (___match131378131379_
                    (lambda (_e127075127115_
                             _hd127076127118_
                             _tl127077127120_
                             _e127078127123_
                             _hd127079127126_
                             _tl127080127128_
                             _e127081127131_
                             _hd127082127134_
                             _tl127083127136_
                             _e127084127139_
                             _hd127085127142_
                             _tl127086127144_
                             _e127087127147_
                             _hd127088127150_
                             _tl127089127152_
                             _e127090127155_
                             _hd127091127158_
                             _tl127092127160_
                             _e127093127163_
                             _hd127094127166_
                             _tl127095127168_
                             _e127096127171_
                             _hd127097127174_
                             _tl127098127176_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127098127176_))
                          (___match131380131381_
                           _e127075127115_
                           _hd127076127118_
                           _tl127077127120_
                           _e127078127123_
                           _hd127079127126_
                           _tl127080127128_
                           _e127081127131_
                           _hd127082127134_
                           _tl127083127136_
                           _e127084127139_
                           _hd127085127142_
                           _tl127086127144_
                           _e127087127147_
                           _hd127088127150_
                           _tl127089127152_
                           _e127090127155_
                           _hd127091127158_
                           _tl127092127160_
                           _e127093127163_
                           _hd127094127166_
                           _tl127095127168_
                           _e127096127171_
                           _hd127097127174_
                           _tl127098127176_)
                          (___kont130899130900_))))
                   (___match131372131373_
                    (lambda (_e127075127115_
                             _hd127076127118_
                             _tl127077127120_
                             _e127078127123_
                             _hd127079127126_
                             _tl127080127128_
                             _e127081127131_
                             _hd127082127134_
                             _tl127083127136_
                             _e127084127139_
                             _hd127085127142_
                             _tl127086127144_
                             _e127087127147_
                             _hd127088127150_
                             _tl127089127152_
                             _e127090127155_
                             _hd127091127158_
                             _tl127092127160_
                             _e127093127163_
                             _hd127094127166_
                             _tl127095127168_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127089127152_))
                          (let ((_e127096127171_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127089127152_))))
                            (let ((_tl127098127176_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127096127171_)))
                                  (_hd127097127174_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127096127171_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127098127176_))
                                  (___match131380131381_
                                   _e127075127115_
                                   _hd127076127118_
                                   _tl127077127120_
                                   _e127078127123_
                                   _hd127079127126_
                                   _tl127080127128_
                                   _e127081127131_
                                   _hd127082127134_
                                   _tl127083127136_
                                   _e127084127139_
                                   _hd127085127142_
                                   _tl127086127144_
                                   _e127087127147_
                                   _hd127088127150_
                                   _tl127089127152_
                                   _e127090127155_
                                   _hd127091127158_
                                   _tl127092127160_
                                   _e127093127163_
                                   _hd127094127166_
                                   _tl127095127168_
                                   _e127096127171_
                                   _hd127097127174_
                                   _tl127098127176_)
                                  (___kont130899130900_))))
                          (___kont130899130900_))))
                   (___match131318131319_
                    (lambda (_e127051127223_
                             _hd127052127226_
                             _tl127053127228_
                             _e127054127231_
                             _hd127055127234_
                             _tl127056127236_
                             _e127057127239_
                             _hd127058127242_
                             _tl127059127244_
                             _e127060127247_
                             _hd127061127250_
                             _tl127062127252_
                             _e127063127255_
                             _hd127064127258_
                             _tl127065127260_
                             _e127066127263_
                             _hd127067127266_
                             _tl127068127268_
                             _e127069127271_
                             _hd127070127274_
                             _tl127071127276_)
                      (let ((_L127279_ _hd127070127274_)
                            (_L127280_ _hd127061127250_))
                        (if (and (let ((__tmp132161
                                        (let ((__tmp132162
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L127280_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp132162))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp132161
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127279_
                                    _self126871_)))
                            (___kont130895130896_ _L127279_ _L127280_)
                            (___kont130899130900_)))))
                   (___match131316131317_
                    (lambda (_e127051127223_
                             _hd127052127226_
                             _tl127053127228_
                             _e127054127231_
                             _hd127055127234_
                             _tl127056127236_
                             _e127057127239_
                             _hd127058127242_
                             _tl127059127244_
                             _e127060127247_
                             _hd127061127250_
                             _tl127062127252_
                             _e127063127255_
                             _hd127064127258_
                             _tl127065127260_
                             _e127066127263_
                             _hd127067127266_
                             _tl127068127268_
                             _e127069127271_
                             _hd127070127274_
                             _tl127071127276_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127065127260_))
                          (___match131318131319_
                           _e127051127223_
                           _hd127052127226_
                           _tl127053127228_
                           _e127054127231_
                           _hd127055127234_
                           _tl127056127236_
                           _e127057127239_
                           _hd127058127242_
                           _tl127059127244_
                           _e127060127247_
                           _hd127061127250_
                           _tl127062127252_
                           _e127063127255_
                           _hd127064127258_
                           _tl127065127260_
                           _e127066127263_
                           _hd127067127266_
                           _tl127068127268_
                           _e127069127271_
                           _hd127070127274_
                           _tl127071127276_)
                          (___match131372131373_
                           _e127051127223_
                           _hd127052127226_
                           _tl127053127228_
                           _e127054127231_
                           _hd127055127234_
                           _tl127056127236_
                           _e127057127239_
                           _hd127058127242_
                           _tl127059127244_
                           _e127060127247_
                           _hd127061127250_
                           _tl127062127252_
                           _e127063127255_
                           _hd127064127258_
                           _tl127065127260_
                           _e127066127263_
                           _hd127067127266_
                           _tl127068127268_
                           _e127069127271_
                           _hd127070127274_
                           _tl127071127276_))))
                   (___match131262131263_
                    (lambda (_e127016127317_
                             _hd127017127320_
                             _tl127018127322_
                             _e127019127325_
                             _hd127020127328_
                             _tl127021127330_
                             _e127022127333_
                             _hd127023127336_
                             _tl127024127338_
                             _e127025127341_
                             _hd127026127344_
                             _tl127027127346_
                             _e127028127349_
                             _hd127029127352_
                             _tl127030127354_
                             _e127031127357_
                             _hd127032127360_
                             _tl127033127362_
                             _e127034127365_
                             _hd127035127368_
                             _tl127036127370_
                             _e127037127373_
                             _hd127038127376_
                             _tl127039127378_
                             _e127040127381_
                             _hd127041127384_
                             _tl127042127386_
                             _e127043127389_
                             _hd127044127392_
                             _tl127045127394_
                             _e127046127397_
                             _hd127047127400_
                             _tl127048127402_)
                      (let ((_L127405_ _hd127047127400_)
                            (_L127406_ _hd127044127392_)
                            (_L127407_ _hd127035127368_)
                            (_L127408_ _hd127026127344_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127408_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127408_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127407_
                                    _self126871_)))
                            (___kont130893130894_
                             _L127405_
                             _L127406_
                             _L127407_
                             _L127408_)
                            (___kont130899130900_)))))
                   (___match131254131255_
                    (lambda (_e127016127317_
                             _hd127017127320_
                             _tl127018127322_
                             _e127019127325_
                             _hd127020127328_
                             _tl127021127330_
                             _e127022127333_
                             _hd127023127336_
                             _tl127024127338_
                             _e127025127341_
                             _hd127026127344_
                             _tl127027127346_
                             _e127028127349_
                             _hd127029127352_
                             _tl127030127354_
                             _e127031127357_
                             _hd127032127360_
                             _tl127033127362_
                             _e127034127365_
                             _hd127035127368_
                             _tl127036127370_
                             _e127037127373_
                             _hd127038127376_
                             _tl127039127378_
                             _e127040127381_
                             _hd127041127384_
                             _tl127042127386_
                             _e127043127389_
                             _hd127044127392_
                             _tl127045127394_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl127039127378_))
                          (let ((_e127046127397_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl127039127378_))))
                            (let ((_tl127048127402_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e127046127397_)))
                                  (_hd127047127400_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e127046127397_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl127048127402_))
                                  (___match131262131263_
                                   _e127016127317_
                                   _hd127017127320_
                                   _tl127018127322_
                                   _e127019127325_
                                   _hd127020127328_
                                   _tl127021127330_
                                   _e127022127333_
                                   _hd127023127336_
                                   _tl127024127338_
                                   _e127025127341_
                                   _hd127026127344_
                                   _tl127027127346_
                                   _e127028127349_
                                   _hd127029127352_
                                   _tl127030127354_
                                   _e127031127357_
                                   _hd127032127360_
                                   _tl127033127362_
                                   _e127034127365_
                                   _hd127035127368_
                                   _tl127036127370_
                                   _e127037127373_
                                   _hd127038127376_
                                   _tl127039127378_
                                   _e127040127381_
                                   _hd127041127384_
                                   _tl127042127386_
                                   _e127043127389_
                                   _hd127044127392_
                                   _tl127045127394_
                                   _e127046127397_
                                   _hd127047127400_
                                   _tl127048127402_)
                                  (___kont130899130900_))))
                          (___match131378131379_
                           _e127016127317_
                           _hd127017127320_
                           _tl127018127322_
                           _e127019127325_
                           _hd127020127328_
                           _tl127021127330_
                           _e127022127333_
                           _hd127023127336_
                           _tl127024127338_
                           _e127025127341_
                           _hd127026127344_
                           _tl127027127346_
                           _e127028127349_
                           _hd127029127352_
                           _tl127030127354_
                           _e127031127357_
                           _hd127032127360_
                           _tl127033127362_
                           _e127034127365_
                           _hd127035127368_
                           _tl127036127370_
                           _e127037127373_
                           _hd127038127376_
                           _tl127039127378_))))
                   (___match131176131177_
                    (lambda (_e126982127448_
                             _hd126983127451_
                             _tl126984127453_
                             _e126985127456_
                             _hd126986127459_
                             _tl126987127461_
                             _e126988127464_
                             _hd126989127467_
                             _tl126990127469_
                             _e126991127472_
                             _hd126992127475_
                             _tl126993127477_
                             _e126994127480_
                             _hd126995127483_
                             _tl126996127485_
                             _e126997127488_
                             _hd126998127491_
                             _tl126999127493_
                             _e127000127496_
                             _hd127001127499_
                             _tl127002127501_
                             _e127003127504_
                             _hd127004127507_
                             _tl127005127509_
                             _e127006127512_
                             _hd127007127515_
                             _tl127008127517_
                             _e127009127520_
                             _hd127010127523_
                             _tl127011127525_)
                      (let ((_L127528_ _hd127010127523_)
                            (_L127529_ _hd127001127499_)
                            (_L127530_ _hd126992127475_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127530_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L127530_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L127529_
                                    _self126871_)))
                            (___kont130891130892_
                             _L127528_
                             _L127529_
                             _L127530_)
                            (___match131380131381_
                             _e126982127448_
                             _hd126983127451_
                             _tl126984127453_
                             _e126985127456_
                             _hd126986127459_
                             _tl126987127461_
                             _e126988127464_
                             _hd126989127467_
                             _tl126990127469_
                             _e126991127472_
                             _hd126992127475_
                             _tl126993127477_
                             _e126994127480_
                             _hd126995127483_
                             _tl126996127485_
                             _e126997127488_
                             _hd126998127491_
                             _tl126999127493_
                             _e127000127496_
                             _hd127001127499_
                             _tl127002127501_
                             _e127003127504_
                             _hd127004127507_
                             _tl127005127509_)))))
                   (___match131174131175_
                    (lambda (_e126982127448_
                             _hd126983127451_
                             _tl126984127453_
                             _e126985127456_
                             _hd126986127459_
                             _tl126987127461_
                             _e126988127464_
                             _hd126989127467_
                             _tl126990127469_
                             _e126991127472_
                             _hd126992127475_
                             _tl126993127477_
                             _e126994127480_
                             _hd126995127483_
                             _tl126996127485_
                             _e126997127488_
                             _hd126998127491_
                             _tl126999127493_
                             _e127000127496_
                             _hd127001127499_
                             _tl127002127501_
                             _e127003127504_
                             _hd127004127507_
                             _tl127005127509_
                             _e127006127512_
                             _hd127007127515_
                             _tl127008127517_
                             _e127009127520_
                             _hd127010127523_
                             _tl127011127525_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl127005127509_))
                          (___match131176131177_
                           _e126982127448_
                           _hd126983127451_
                           _tl126984127453_
                           _e126985127456_
                           _hd126986127459_
                           _tl126987127461_
                           _e126988127464_
                           _hd126989127467_
                           _tl126990127469_
                           _e126991127472_
                           _hd126992127475_
                           _tl126993127477_
                           _e126994127480_
                           _hd126995127483_
                           _tl126996127485_
                           _e126997127488_
                           _hd126998127491_
                           _tl126999127493_
                           _e127000127496_
                           _hd127001127499_
                           _tl127002127501_
                           _e127003127504_
                           _hd127004127507_
                           _tl127005127509_
                           _e127006127512_
                           _hd127007127515_
                           _tl127008127517_
                           _e127009127520_
                           _hd127010127523_
                           _tl127011127525_)
                          (___match131254131255_
                           _e126982127448_
                           _hd126983127451_
                           _tl126984127453_
                           _e126985127456_
                           _hd126986127459_
                           _tl126987127461_
                           _e126988127464_
                           _hd126989127467_
                           _tl126990127469_
                           _e126991127472_
                           _hd126992127475_
                           _tl126993127477_
                           _e126994127480_
                           _hd126995127483_
                           _tl126996127485_
                           _e126997127488_
                           _hd126998127491_
                           _tl126999127493_
                           _e127000127496_
                           _hd127001127499_
                           _tl127002127501_
                           _e127003127504_
                           _hd127004127507_
                           _tl127005127509_
                           _e127006127512_
                           _hd127007127515_
                           _tl127008127517_
                           _e127009127520_
                           _hd127010127523_
                           _tl127011127525_))))
                   (___match131164131165_
                    (lambda (_e126982127448_
                             _hd126983127451_
                             _tl126984127453_
                             _e126985127456_
                             _hd126986127459_
                             _tl126987127461_
                             _e126988127464_
                             _hd126989127467_
                             _tl126990127469_
                             _e126991127472_
                             _hd126992127475_
                             _tl126993127477_
                             _e126994127480_
                             _hd126995127483_
                             _tl126996127485_
                             _e126997127488_
                             _hd126998127491_
                             _tl126999127493_
                             _e127000127496_
                             _hd127001127499_
                             _tl127002127501_
                             _e127003127504_
                             _hd127004127507_
                             _tl127005127509_
                             _e127006127512_
                             _hd127007127515_
                             _tl127008127517_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd127007127515_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl127008127517_))
                              (let ((_e127009127520_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl127008127517_))))
                                (let ((_tl127011127525_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e127009127520_)))
                                      (_hd127010127523_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e127009127520_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl127011127525_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl127005127509_))
                                          (___match131176131177_
                                           _e126982127448_
                                           _hd126983127451_
                                           _tl126984127453_
                                           _e126985127456_
                                           _hd126986127459_
                                           _tl126987127461_
                                           _e126988127464_
                                           _hd126989127467_
                                           _tl126990127469_
                                           _e126991127472_
                                           _hd126992127475_
                                           _tl126993127477_
                                           _e126994127480_
                                           _hd126995127483_
                                           _tl126996127485_
                                           _e126997127488_
                                           _hd126998127491_
                                           _tl126999127493_
                                           _e127000127496_
                                           _hd127001127499_
                                           _tl127002127501_
                                           _e127003127504_
                                           _hd127004127507_
                                           _tl127005127509_
                                           _e127006127512_
                                           _hd127007127515_
                                           _tl127008127517_
                                           _e127009127520_
                                           _hd127010127523_
                                           _tl127011127525_)
                                          (___match131254131255_
                                           _e126982127448_
                                           _hd126983127451_
                                           _tl126984127453_
                                           _e126985127456_
                                           _hd126986127459_
                                           _tl126987127461_
                                           _e126988127464_
                                           _hd126989127467_
                                           _tl126990127469_
                                           _e126991127472_
                                           _hd126992127475_
                                           _tl126993127477_
                                           _e126994127480_
                                           _hd126995127483_
                                           _tl126996127485_
                                           _e126997127488_
                                           _hd126998127491_
                                           _tl126999127493_
                                           _e127000127496_
                                           _hd127001127499_
                                           _tl127002127501_
                                           _e127003127504_
                                           _hd127004127507_
                                           _tl127005127509_
                                           _e127006127512_
                                           _hd127007127515_
                                           _tl127008127517_
                                           _e127009127520_
                                           _hd127010127523_
                                           _tl127011127525_))
                                      (___match131378131379_
                                       _e126982127448_
                                       _hd126983127451_
                                       _tl126984127453_
                                       _e126985127456_
                                       _hd126986127459_
                                       _tl126987127461_
                                       _e126988127464_
                                       _hd126989127467_
                                       _tl126990127469_
                                       _e126991127472_
                                       _hd126992127475_
                                       _tl126993127477_
                                       _e126994127480_
                                       _hd126995127483_
                                       _tl126996127485_
                                       _e126997127488_
                                       _hd126998127491_
                                       _tl126999127493_
                                       _e127000127496_
                                       _hd127001127499_
                                       _tl127002127501_
                                       _e127003127504_
                                       _hd127004127507_
                                       _tl127005127509_))))
                              (___match131378131379_
                               _e126982127448_
                               _hd126983127451_
                               _tl126984127453_
                               _e126985127456_
                               _hd126986127459_
                               _tl126987127461_
                               _e126988127464_
                               _hd126989127467_
                               _tl126990127469_
                               _e126991127472_
                               _hd126992127475_
                               _tl126993127477_
                               _e126994127480_
                               _hd126995127483_
                               _tl126996127485_
                               _e126997127488_
                               _hd126998127491_
                               _tl126999127493_
                               _e127000127496_
                               _hd127001127499_
                               _tl127002127501_
                               _e127003127504_
                               _hd127004127507_
                               _tl127005127509_))
                          (___match131378131379_
                           _e126982127448_
                           _hd126983127451_
                           _tl126984127453_
                           _e126985127456_
                           _hd126986127459_
                           _tl126987127461_
                           _e126988127464_
                           _hd126989127467_
                           _tl126990127469_
                           _e126991127472_
                           _hd126992127475_
                           _tl126993127477_
                           _e126994127480_
                           _hd126995127483_
                           _tl126996127485_
                           _e126997127488_
                           _hd126998127491_
                           _tl126999127493_
                           _e127000127496_
                           _hd127001127499_
                           _tl127002127501_
                           _e127003127504_
                           _hd127004127507_
                           _tl127005127509_))))
                   (___match131096131097_
                    (lambda (_e126931127567_
                             _hd126932127570_
                             _tl126933127572_
                             _e126934127575_
                             _hd126935127578_
                             _tl126936127580_
                             _e126937127583_
                             _hd126938127586_
                             _tl126939127588_
                             _e126940127591_
                             _hd126941127594_
                             _tl126942127596_
                             _e126943127599_
                             _hd126944127602_
                             _tl126945127604_
                             _e126946127607_
                             _hd126947127610_
                             _tl126948127612_
                             _e126949127615_
                             _hd126950127618_
                             _tl126951127620_
                             _e126952127623_
                             _hd126953127626_
                             _tl126954127628_
                             _e126955127631_
                             _hd126956127634_
                             _tl126957127636_
                             _e126958127639_
                             _hd126959127642_
                             _tl126960127644_
                             _e126961127647_
                             _hd126962127650_
                             _tl126963127652_
                             _e126964127655_
                             _hd126965127658_
                             _tl126966127660_
                             _e126967127663_
                             _hd126968127666_
                             _tl126969127668_
                             ___splice130889130890_
                             _target126970127671_
                             _tl126972127673_)
                      (letrec ((_loop126973127676_
                                (lambda (_hd126971127679_ _args126977127681_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126971127679_))
                                      (let ((_e126974127684_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126971127679_))))
                                        (let ((_lp-tl126976127689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126974127684_)))
                                              (_lp-hd126975127687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126974127684_))))
                                          (let ((__tmp132163
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd126975127687_
                                                         _args126977127681_))))
                                            (declare (not safe))
                                            (_loop126973127676_
                                             _lp-tl126976127689_
                                             __tmp132163))))
                                      (let ((_args126978127692_
                                             (reverse _args126977127681_)))
                                        (let ((_L127695_ _args126978127692_)
                                              (_L127696_ _hd126968127666_)
                                              (_L127697_ _hd126959127642_)
                                              (_L127698_ _hd126950127618_)
                                              (_L127699_ _hd126941127594_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L127699_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L127698_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L127697_
                                                      _self126871_)))
                                              (___kont130887130888_
                                               _L127695_
                                               _L127696_
                                               _L127697_
                                               _L127698_
                                               _L127699_)
                                              (___kont130899130900_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop126973127676_ _target126970127671_ '())))))
                   (___match131054131055_
                    (lambda (_e126931127567_
                             _hd126932127570_
                             _tl126933127572_
                             _e126934127575_
                             _hd126935127578_
                             _tl126936127580_
                             _e126937127583_
                             _hd126938127586_
                             _tl126939127588_
                             _e126940127591_
                             _hd126941127594_
                             _tl126942127596_
                             _e126943127599_
                             _hd126944127602_
                             _tl126945127604_
                             _e126946127607_
                             _hd126947127610_
                             _tl126948127612_
                             _e126949127615_
                             _hd126950127618_
                             _tl126951127620_
                             _e126952127623_
                             _hd126953127626_
                             _tl126954127628_
                             _e126955127631_
                             _hd126956127634_
                             _tl126957127636_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd126956127634_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl126957127636_))
                              (let ((_e126958127639_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl126957127636_))))
                                (let ((_tl126960127644_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126958127639_)))
                                      (_hd126959127642_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126958127639_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl126960127644_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126954127628_))
                                          (let ((_e126961127647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126954127628_))))
                                            (let ((_tl126963127652_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126961127647_)))
                                                  (_hd126962127650_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126961127647_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd126962127650_))
                                                  (let ((_e126964127655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd126962127650_))))
                                                    (let ((_tl126966127660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126964127655_)))
                                                          (_hd126965127658_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126964127655_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd126965127658_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd126965127658_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126966127660_))
                          (let ((_e126967127663_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126966127660_))))
                            (let ((_tl126969127668_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126967127663_)))
                                  (_hd126968127666_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126967127663_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl126969127668_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl126963127652_))
                                      (let ((___splice130889130890_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl126963127652_
                                                '0))))
                                        (let ((_tl126972127673_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice130889130890_
                                                  '1)))
                                              (_target126970127671_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice130889130890_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl126972127673_))
                                              (___match131096131097_
                                               _e126931127567_
                                               _hd126932127570_
                                               _tl126933127572_
                                               _e126934127575_
                                               _hd126935127578_
                                               _tl126936127580_
                                               _e126937127583_
                                               _hd126938127586_
                                               _tl126939127588_
                                               _e126940127591_
                                               _hd126941127594_
                                               _tl126942127596_
                                               _e126943127599_
                                               _hd126944127602_
                                               _tl126945127604_
                                               _e126946127607_
                                               _hd126947127610_
                                               _tl126948127612_
                                               _e126949127615_
                                               _hd126950127618_
                                               _tl126951127620_
                                               _e126952127623_
                                               _hd126953127626_
                                               _tl126954127628_
                                               _e126955127631_
                                               _hd126956127634_
                                               _tl126957127636_
                                               _e126958127639_
                                               _hd126959127642_
                                               _tl126960127644_
                                               _e126961127647_
                                               _hd126962127650_
                                               _tl126963127652_
                                               _e126964127655_
                                               _hd126965127658_
                                               _tl126966127660_
                                               _e126967127663_
                                               _hd126968127666_
                                               _tl126969127668_
                                               ___splice130889130890_
                                               _target126970127671_
                                               _tl126972127673_)
                                              (___kont130899130900_))))
                                      (___kont130899130900_))
                                  (___kont130899130900_))))
                          (___kont130899130900_))
                      (___kont130899130900_))
                  (___kont130899130900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont130899130900_))))
                                          (___match131378131379_
                                           _e126931127567_
                                           _hd126932127570_
                                           _tl126933127572_
                                           _e126934127575_
                                           _hd126935127578_
                                           _tl126936127580_
                                           _e126937127583_
                                           _hd126938127586_
                                           _tl126939127588_
                                           _e126940127591_
                                           _hd126941127594_
                                           _tl126942127596_
                                           _e126943127599_
                                           _hd126944127602_
                                           _tl126945127604_
                                           _e126946127607_
                                           _hd126947127610_
                                           _tl126948127612_
                                           _e126949127615_
                                           _hd126950127618_
                                           _tl126951127620_
                                           _e126952127623_
                                           _hd126953127626_
                                           _tl126954127628_))
                                      (___match131378131379_
                                       _e126931127567_
                                       _hd126932127570_
                                       _tl126933127572_
                                       _e126934127575_
                                       _hd126935127578_
                                       _tl126936127580_
                                       _e126937127583_
                                       _hd126938127586_
                                       _tl126939127588_
                                       _e126940127591_
                                       _hd126941127594_
                                       _tl126942127596_
                                       _e126943127599_
                                       _hd126944127602_
                                       _tl126945127604_
                                       _e126946127607_
                                       _hd126947127610_
                                       _tl126948127612_
                                       _e126949127615_
                                       _hd126950127618_
                                       _tl126951127620_
                                       _e126952127623_
                                       _hd126953127626_
                                       _tl126954127628_))))
                              (___match131378131379_
                               _e126931127567_
                               _hd126932127570_
                               _tl126933127572_
                               _e126934127575_
                               _hd126935127578_
                               _tl126936127580_
                               _e126937127583_
                               _hd126938127586_
                               _tl126939127588_
                               _e126940127591_
                               _hd126941127594_
                               _tl126942127596_
                               _e126943127599_
                               _hd126944127602_
                               _tl126945127604_
                               _e126946127607_
                               _hd126947127610_
                               _tl126948127612_
                               _e126949127615_
                               _hd126950127618_
                               _tl126951127620_
                               _e126952127623_
                               _hd126953127626_
                               _tl126954127628_))
                          (___match131164131165_
                           _e126931127567_
                           _hd126932127570_
                           _tl126933127572_
                           _e126934127575_
                           _hd126935127578_
                           _tl126936127580_
                           _e126937127583_
                           _hd126938127586_
                           _tl126939127588_
                           _e126940127591_
                           _hd126941127594_
                           _tl126942127596_
                           _e126943127599_
                           _hd126944127602_
                           _tl126945127604_
                           _e126946127607_
                           _hd126947127610_
                           _tl126948127612_
                           _e126949127615_
                           _hd126950127618_
                           _tl126951127620_
                           _e126952127623_
                           _hd126953127626_
                           _tl126954127628_
                           _e126955127631_
                           _hd126956127634_
                           _tl126957127636_))))
                   (___match130986130987_
                    (lambda (_e126887127756_
                             _hd126888127759_
                             _tl126889127761_
                             _e126890127764_
                             _hd126891127767_
                             _tl126892127769_
                             _e126893127772_
                             _hd126894127775_
                             _tl126895127777_
                             _e126896127780_
                             _hd126897127783_
                             _tl126898127785_
                             _e126899127788_
                             _hd126900127791_
                             _tl126901127793_
                             _e126902127796_
                             _hd126903127799_
                             _tl126904127801_
                             _e126905127804_
                             _hd126906127807_
                             _tl126907127809_
                             _e126908127812_
                             _hd126909127815_
                             _tl126910127817_
                             _e126911127820_
                             _hd126912127823_
                             _tl126913127825_
                             _e126914127828_
                             _hd126915127831_
                             _tl126916127833_
                             ___splice130885130886_
                             _target126917127836_
                             _tl126919127838_)
                      (letrec ((_loop126920127841_
                                (lambda (_hd126918127844_ _args126924127846_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd126918127844_))
                                      (let ((_e126921127849_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd126918127844_))))
                                        (let ((_lp-tl126923127854_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e126921127849_)))
                                              (_lp-hd126922127852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e126921127849_))))
                                          (let ((__tmp132164
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd126922127852_
                                                         _args126924127846_))))
                                            (declare (not safe))
                                            (_loop126920127841_
                                             _lp-tl126923127854_
                                             __tmp132164))))
                                      (let ((_args126925127857_
                                             (reverse _args126924127846_)))
                                        (let ((_L127860_ _args126925127857_)
                                              (_L127861_ _hd126915127831_)
                                              (_L127862_ _hd126906127807_)
                                              (_L127863_ _hd126897127783_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L127863_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L127862_
                                                      _self126871_)))
                                              (___kont130883130884_
                                               _L127860_
                                               _L127861_
                                               _L127862_
                                               _L127863_)
                                              (___match131174131175_
                                               _e126887127756_
                                               _hd126888127759_
                                               _tl126889127761_
                                               _e126890127764_
                                               _hd126891127767_
                                               _tl126892127769_
                                               _e126893127772_
                                               _hd126894127775_
                                               _tl126895127777_
                                               _e126896127780_
                                               _hd126897127783_
                                               _tl126898127785_
                                               _e126899127788_
                                               _hd126900127791_
                                               _tl126901127793_
                                               _e126902127796_
                                               _hd126903127799_
                                               _tl126904127801_
                                               _e126905127804_
                                               _hd126906127807_
                                               _tl126907127809_
                                               _e126908127812_
                                               _hd126909127815_
                                               _tl126910127817_
                                               _e126911127820_
                                               _hd126912127823_
                                               _tl126913127825_
                                               _e126914127828_
                                               _hd126915127831_
                                               _tl126916127833_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop126920127841_ _target126917127836_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx130881130882_))
                  (let ((_e126887127756_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx130881130882_))))
                    (let ((_tl126889127761_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126887127756_)))
                          (_hd126888127759_
                           (let ()
                             (declare (not safe))
                             (##car _e126887127756_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl126889127761_))
                          (let ((_e126890127764_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl126889127761_))))
                            (let ((_tl126892127769_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126890127764_)))
                                  (_hd126891127767_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126890127764_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd126891127767_))
                                  (let ((_e126893127772_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd126891127767_))))
                                    (let ((_tl126895127777_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e126893127772_)))
                                          (_hd126894127775_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e126893127772_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd126894127775_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd126894127775_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl126895127777_))
                                                  (let ((_e126896127780_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl126895127777_))))
                                                    (let ((_tl126898127785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e126896127780_)))
                                                          (_hd126897127783_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e126896127780_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl126898127785_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl126892127769_))
                      (let ((_e126899127788_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl126892127769_))))
                        (let ((_tl126901127793_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e126899127788_)))
                              (_hd126900127791_
                               (let ()
                                 (declare (not safe))
                                 (##car _e126899127788_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd126900127791_))
                              (let ((_e126902127796_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd126900127791_))))
                                (let ((_tl126904127801_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e126902127796_)))
                                      (_hd126903127799_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e126902127796_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd126903127799_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd126903127799_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl126904127801_))
                                              (let ((_e126905127804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl126904127801_))))
                                                (let ((_tl126907127809_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e126905127804_)))
                                                      (_hd126906127807_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e126905127804_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl126907127809_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl126901127793_))
                                                          (let ((_e126908127812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl126901127793_))))
                    (let ((_tl126910127817_
                           (let ()
                             (declare (not safe))
                             (##cdr _e126908127812_)))
                          (_hd126909127815_
                           (let ()
                             (declare (not safe))
                             (##car _e126908127812_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd126909127815_))
                          (let ((_e126911127820_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd126909127815_))))
                            (let ((_tl126913127825_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e126911127820_)))
                                  (_hd126912127823_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e126911127820_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd126912127823_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd126912127823_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl126913127825_))
                                          (let ((_e126914127828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl126913127825_))))
                                            (let ((_tl126916127833_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e126914127828_)))
                                                  (_hd126915127831_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e126914127828_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl126916127833_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl126910127817_))
                                                      (let ((___splice130885130886_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl126910127817_ '0))))
                (let ((_tl126919127838_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice130885130886_ '1)))
                      (_target126917127836_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice130885130886_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl126919127838_))
                      (___match130986130987_
                       _e126887127756_
                       _hd126888127759_
                       _tl126889127761_
                       _e126890127764_
                       _hd126891127767_
                       _tl126892127769_
                       _e126893127772_
                       _hd126894127775_
                       _tl126895127777_
                       _e126896127780_
                       _hd126897127783_
                       _tl126898127785_
                       _e126899127788_
                       _hd126900127791_
                       _tl126901127793_
                       _e126902127796_
                       _hd126903127799_
                       _tl126904127801_
                       _e126905127804_
                       _hd126906127807_
                       _tl126907127809_
                       _e126908127812_
                       _hd126909127815_
                       _tl126910127817_
                       _e126911127820_
                       _hd126912127823_
                       _tl126913127825_
                       _e126914127828_
                       _hd126915127831_
                       _tl126916127833_
                       ___splice130885130886_
                       _target126917127836_
                       _tl126919127838_)
                      (___match131174131175_
                       _e126887127756_
                       _hd126888127759_
                       _tl126889127761_
                       _e126890127764_
                       _hd126891127767_
                       _tl126892127769_
                       _e126893127772_
                       _hd126894127775_
                       _tl126895127777_
                       _e126896127780_
                       _hd126897127783_
                       _tl126898127785_
                       _e126899127788_
                       _hd126900127791_
                       _tl126901127793_
                       _e126902127796_
                       _hd126903127799_
                       _tl126904127801_
                       _e126905127804_
                       _hd126906127807_
                       _tl126907127809_
                       _e126908127812_
                       _hd126909127815_
                       _tl126910127817_
                       _e126911127820_
                       _hd126912127823_
                       _tl126913127825_
                       _e126914127828_
                       _hd126915127831_
                       _tl126916127833_))))
              (___match131174131175_
               _e126887127756_
               _hd126888127759_
               _tl126889127761_
               _e126890127764_
               _hd126891127767_
               _tl126892127769_
               _e126893127772_
               _hd126894127775_
               _tl126895127777_
               _e126896127780_
               _hd126897127783_
               _tl126898127785_
               _e126899127788_
               _hd126900127791_
               _tl126901127793_
               _e126902127796_
               _hd126903127799_
               _tl126904127801_
               _e126905127804_
               _hd126906127807_
               _tl126907127809_
               _e126908127812_
               _hd126909127815_
               _tl126910127817_
               _e126911127820_
               _hd126912127823_
               _tl126913127825_
               _e126914127828_
               _hd126915127831_
               _tl126916127833_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match131378131379_
                                                   _e126887127756_
                                                   _hd126888127759_
                                                   _tl126889127761_
                                                   _e126890127764_
                                                   _hd126891127767_
                                                   _tl126892127769_
                                                   _e126893127772_
                                                   _hd126894127775_
                                                   _tl126895127777_
                                                   _e126896127780_
                                                   _hd126897127783_
                                                   _tl126898127785_
                                                   _e126899127788_
                                                   _hd126900127791_
                                                   _tl126901127793_
                                                   _e126902127796_
                                                   _hd126903127799_
                                                   _tl126904127801_
                                                   _e126905127804_
                                                   _hd126906127807_
                                                   _tl126907127809_
                                                   _e126908127812_
                                                   _hd126909127815_
                                                   _tl126910127817_))))
                                          (___match131378131379_
                                           _e126887127756_
                                           _hd126888127759_
                                           _tl126889127761_
                                           _e126890127764_
                                           _hd126891127767_
                                           _tl126892127769_
                                           _e126893127772_
                                           _hd126894127775_
                                           _tl126895127777_
                                           _e126896127780_
                                           _hd126897127783_
                                           _tl126898127785_
                                           _e126899127788_
                                           _hd126900127791_
                                           _tl126901127793_
                                           _e126902127796_
                                           _hd126903127799_
                                           _tl126904127801_
                                           _e126905127804_
                                           _hd126906127807_
                                           _tl126907127809_
                                           _e126908127812_
                                           _hd126909127815_
                                           _tl126910127817_))
                                      (___match131054131055_
                                       _e126887127756_
                                       _hd126888127759_
                                       _tl126889127761_
                                       _e126890127764_
                                       _hd126891127767_
                                       _tl126892127769_
                                       _e126893127772_
                                       _hd126894127775_
                                       _tl126895127777_
                                       _e126896127780_
                                       _hd126897127783_
                                       _tl126898127785_
                                       _e126899127788_
                                       _hd126900127791_
                                       _tl126901127793_
                                       _e126902127796_
                                       _hd126903127799_
                                       _tl126904127801_
                                       _e126905127804_
                                       _hd126906127807_
                                       _tl126907127809_
                                       _e126908127812_
                                       _hd126909127815_
                                       _tl126910127817_
                                       _e126911127820_
                                       _hd126912127823_
                                       _tl126913127825_))
                                  (___match131378131379_
                                   _e126887127756_
                                   _hd126888127759_
                                   _tl126889127761_
                                   _e126890127764_
                                   _hd126891127767_
                                   _tl126892127769_
                                   _e126893127772_
                                   _hd126894127775_
                                   _tl126895127777_
                                   _e126896127780_
                                   _hd126897127783_
                                   _tl126898127785_
                                   _e126899127788_
                                   _hd126900127791_
                                   _tl126901127793_
                                   _e126902127796_
                                   _hd126903127799_
                                   _tl126904127801_
                                   _e126905127804_
                                   _hd126906127807_
                                   _tl126907127809_
                                   _e126908127812_
                                   _hd126909127815_
                                   _tl126910127817_))))
                          (___match131378131379_
                           _e126887127756_
                           _hd126888127759_
                           _tl126889127761_
                           _e126890127764_
                           _hd126891127767_
                           _tl126892127769_
                           _e126893127772_
                           _hd126894127775_
                           _tl126895127777_
                           _e126896127780_
                           _hd126897127783_
                           _tl126898127785_
                           _e126899127788_
                           _hd126900127791_
                           _tl126901127793_
                           _e126902127796_
                           _hd126903127799_
                           _tl126904127801_
                           _e126905127804_
                           _hd126906127807_
                           _tl126907127809_
                           _e126908127812_
                           _hd126909127815_
                           _tl126910127817_))))
                  (___match131316131317_
                   _e126887127756_
                   _hd126888127759_
                   _tl126889127761_
                   _e126890127764_
                   _hd126891127767_
                   _tl126892127769_
                   _e126893127772_
                   _hd126894127775_
                   _tl126895127777_
                   _e126896127780_
                   _hd126897127783_
                   _tl126898127785_
                   _e126899127788_
                   _hd126900127791_
                   _tl126901127793_
                   _e126902127796_
                   _hd126903127799_
                   _tl126904127801_
                   _e126905127804_
                   _hd126906127807_
                   _tl126907127809_))
              (___kont130899130900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont130899130900_))
                                          (___kont130899130900_))
                                      (___kont130899130900_))))
                              (___kont130899130900_))))
                      (___kont130899130900_))
                  (___kont130899130900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont130899130900_))
                                              (___kont130899130900_))
                                          (___kont130899130900_))))
                                  (___kont130899130900_))))
                          (___kont130899130900_))))
                  (___kont130899130900_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx125805_
               _self125806_
               _$klass125807_
               _methods125808_
               _slots125809_)
        (letrec ((_force-e125811_
                  (lambda (_target126868_)
                    (let ((__tmp132165
                           (let ((__tmp132169
                                  (let ((__tmp132170
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp132170)))
                                 (__tmp132166
                                  (let ((__tmp132167
                                         (let ((__tmp132168
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target126868_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp132168))))
                                    (declare (not safe))
                                    (cons __tmp132167 '()))))
                             (declare (not safe))
                             (cons __tmp132169 __tmp132166))))
                      (declare (not safe))
                      (cons '%#call __tmp132165)))))
          (let* ((___stx131383131384_ _stx125805_)
                 (_g125819126041_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx131383131384_)))))
            (let ((___kont131385131386_
                   (lambda (_L126814_ _L126815_ _L126816_ _L126817_)
                     (let ((_$method126862_
                            (let ((__tmp132171
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L126815_))))
                              (declare (not safe))
                              (hash-ref__0 _methods125808_ __tmp132171)))
                           (_args126863_
                            (map (lambda (_g126850126852_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g126850126852_
                                      _self125806_
                                      _$klass125807_
                                      _methods125808_
                                      _slots125809_)))
                                 (let ((__tmp132172
                                        (lambda (_g126854126857_
                                                 _g126855126859_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g126854126857_
                                                  _g126855126859_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp132172 '() _L126814_)))))
                       (let ((__tmp132173
                              (let ((__tmp132174
                                     (let ((__tmp132178
                                            (let ()
                                              (declare (not safe))
                                              (_force-e125811_
                                               _$method126862_)))
                                           (__tmp132175
                                            (let ((__tmp132176
                                                   (let ((__tmp132177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self125806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp132177))))
                                              (declare (not safe))
                                              (cons __tmp132176
                                                    _args126863_))))
                                       (declare (not safe))
                                       (cons __tmp132178 __tmp132175))))
                                (declare (not safe))
                                (cons '%#call __tmp132174))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp132173 _stx125805_)))))
                  (___kont131389131390_
                   (lambda (_L126646_ _L126647_ _L126648_ _L126649_ _L126650_)
                     (let ((_$method126702_
                            (let ((__tmp132179
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L126647_))))
                              (declare (not safe))
                              (hash-ref__0 _methods125808_ __tmp132179)))
                           (_args126703_
                            (map (lambda (_g126690126692_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g126690126692_
                                      _self125806_
                                      _$klass125807_
                                      _methods125808_
                                      _slots125809_)))
                                 (let ((__tmp132180
                                        (lambda (_g126694126697_
                                                 _g126695126699_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g126694126697_
                                                  _g126695126699_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp132180 '() _L126646_)))))
                       (let ((__tmp132181
                              (let ((__tmp132182
                                     (let ((__tmp132188
                                            (let ((__tmp132189
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp132189)))
                                           (__tmp132183
                                            (let ((__tmp132187
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e125811_
                                                      _$method126702_)))
                                                  (__tmp132184
                                                   (let ((__tmp132185
                                                          (let ((__tmp132186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self125806_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp132186))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp132185
                                                           _args126703_))))
                                              (declare (not safe))
                                              (cons __tmp132187 __tmp132184))))
                                       (declare (not safe))
                                       (cons __tmp132188 __tmp132183))))
                                (declare (not safe))
                                (cons '%#call __tmp132182))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp132181 _stx125805_)))))
                  (___kont131393131394_
                   (lambda (_L126477_ _L126478_ _L126479_)
                     (let* ((_$field126511_
                             (let ((__tmp132190
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L126477_))))
                               (declare (not safe))
                               (hash-ref__0 _slots125809_ __tmp132190)))
                            (__tmp132191
                             (let ((__tmp132192
                                    (let ((__tmp132199
                                           (let ((__tmp132200
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass125807_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp132200)))
                                          (__tmp132193
                                           (let ((__tmp132197
                                                  (let ((__tmp132198
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field126511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp132198)))
                                                 (__tmp132194
                                                  (let ((__tmp132195
                                                         (let ((__tmp132196
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self125806_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp132196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp132195 '()))))
                                             (declare (not safe))
                                             (cons __tmp132197 __tmp132194))))
                                      (declare (not safe))
                                      (cons __tmp132199 __tmp132193))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp132192))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp132191 _stx125805_))))
                  (___kont131395131396_
                   (lambda (_L126351_ _L126352_ _L126353_ _L126354_)
                     (let ((_$field126389_
                            (let ((__tmp132201
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L126352_))))
                              (declare (not safe))
                              (hash-ref__0 _slots125809_ __tmp132201)))
                           (_expr126390_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L126351_
                               _self125806_
                               _$klass125807_
                               _methods125808_
                               _slots125809_))))
                       (let ((__tmp132202
                              (let ((__tmp132203
                                     (let ((__tmp132211
                                            (let ((__tmp132212
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass125807_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp132212)))
                                           (__tmp132204
                                            (let ((__tmp132209
                                                   (let ((__tmp132210
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field126389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp132210)))
                                                  (__tmp132205
                                                   (let ((__tmp132207
                                                          (let ((__tmp132208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self125806_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp132208)))
                 (__tmp132206
                  (let () (declare (not safe)) (cons _expr126390_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp132207
                                                           __tmp132206))))
                                              (declare (not safe))
                                              (cons __tmp132209 __tmp132205))))
                                       (declare (not safe))
                                       (cons __tmp132211 __tmp132204))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp132203))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp132202 _stx125805_)))))
                  (___kont131397131398_
                   (lambda (_L126223_ _L126224_)
                     (let* ((_accessor126246_
                             (let ((__tmp132213
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L126224_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp132213)))
                            (_klass126248_
                             (let ((__tmp132214
                                    (##structure-ref
                                     _accessor126246_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx125805_
                                __tmp132214)))
                            (_slot126250_
                             (##structure-ref
                              _accessor126246_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp132215
                                       (##structure-ref
                                        _accessor126246_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp132215))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass126248_
                                       _slot126250_))
                                    (##structure-ref
                                     _klass126248_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx125805_
                           (let* ((_$field126256_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots125809_ _slot126250_)))
                                  (__tmp132216
                                   (let ((__tmp132217
                                          (let ((__tmp132224
                                                 (let ((__tmp132225
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass125807_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp132225)))
                                                (__tmp132218
                                                 (let ((__tmp132222
                                                        (let ((__tmp132223
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field126256_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp132223)))
               (__tmp132219
                (let ((__tmp132220
                       (let ((__tmp132221
                              (let ()
                                (declare (not safe))
                                (cons _self125806_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp132221))))
                  (declare (not safe))
                  (cons __tmp132220 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp132222
                                                         __tmp132219))))
                                            (declare (not safe))
                                            (cons __tmp132224 __tmp132218))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp132217))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp132216
                              _stx125805_))))))
                  (___kont131399131400_
                   (lambda (_L126117_ _L126118_ _L126119_)
                     (let* ((_mutator126148_
                             (let ((__tmp132226
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L126119_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp132226)))
                            (_klass126150_
                             (let ((__tmp132227
                                    (##structure-ref
                                     _mutator126148_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx125805_
                                __tmp132227)))
                            (_slot126152_
                             (##structure-ref
                              _mutator126148_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr126154_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L126117_
                                _self125806_
                                _$klass125807_
                                _methods125808_
                                _slots125809_))))
                       (if (and (let ((__tmp132228
                                       (##structure-ref
                                        _mutator126148_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp132228))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass126150_
                                       _slot126152_))
                                    (##structure-ref
                                     _klass126150_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp132229
                                  (let ((__tmp132230
                                         (let ((__tmp132231
                                                (let ((__tmp132232
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _expr126154_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(%#ref -self)
                                                        __tmp132232))))
                                           (declare (not safe))
                                           (cons '(%#ref setf) __tmp132231))))
                                    (declare (not safe))
                                    (cons '%#call __tmp132230))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp132229 _stx125805_))
                           (let* ((_$field126160_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots125809_ _slot126152_)))
                                  (__tmp132233
                                   (let ((__tmp132234
                                          (let ((__tmp132242
                                                 (let ((__tmp132243
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass125807_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp132243)))
                                                (__tmp132235
                                                 (let ((__tmp132240
                                                        (let ((__tmp132241
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field126160_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp132241)))
               (__tmp132236
                (let ((__tmp132238
                       (let ((__tmp132239
                              (let ()
                                (declare (not safe))
                                (cons _self125806_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp132239)))
                      (__tmp132237
                       (let () (declare (not safe)) (cons _expr126154_ '()))))
                  (declare (not safe))
                  (cons __tmp132238 __tmp132237))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp132240
                                                         __tmp132236))))
                                            (declare (not safe))
                                            (cons __tmp132242 __tmp132235))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp132234))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp132233
                              _stx125805_))))))
                  (___kont131401131402_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx125805_
                        _self125806_
                        _$klass125807_
                        _methods125808_
                        _slots125809_)))))
              (let* ((___match131882131883_
                      (lambda (_e126013126053_
                               _hd126014126056_
                               _tl126015126058_
                               _e126016126061_
                               _hd126017126064_
                               _tl126018126066_
                               _e126019126069_
                               _hd126020126072_
                               _tl126021126074_
                               _e126022126077_
                               _hd126023126080_
                               _tl126024126082_
                               _e126025126085_
                               _hd126026126088_
                               _tl126027126090_
                               _e126028126093_
                               _hd126029126096_
                               _tl126030126098_
                               _e126031126101_
                               _hd126032126104_
                               _tl126033126106_
                               _e126034126109_
                               _hd126035126112_
                               _tl126036126114_)
                        (let ((_L126117_ _hd126035126112_)
                              (_L126118_ _hd126032126104_)
                              (_L126119_ _hd126023126080_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126118_
                                      _self125806_))
                                   (let ((__tmp132244
                                          (let ((__tmp132245
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L126119_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp132245))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp132244
                                      'gxc#!mutator::t)))
                              (___kont131399131400_
                               _L126117_
                               _L126118_
                               _L126119_)
                              (___kont131401131402_)))))
                     (___match131880131881_
                      (lambda (_e126013126053_
                               _hd126014126056_
                               _tl126015126058_
                               _e126016126061_
                               _hd126017126064_
                               _tl126018126066_
                               _e126019126069_
                               _hd126020126072_
                               _tl126021126074_
                               _e126022126077_
                               _hd126023126080_
                               _tl126024126082_
                               _e126025126085_
                               _hd126026126088_
                               _tl126027126090_
                               _e126028126093_
                               _hd126029126096_
                               _tl126030126098_
                               _e126031126101_
                               _hd126032126104_
                               _tl126033126106_
                               _e126034126109_
                               _hd126035126112_
                               _tl126036126114_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl126036126114_))
                            (___match131882131883_
                             _e126013126053_
                             _hd126014126056_
                             _tl126015126058_
                             _e126016126061_
                             _hd126017126064_
                             _tl126018126066_
                             _e126019126069_
                             _hd126020126072_
                             _tl126021126074_
                             _e126022126077_
                             _hd126023126080_
                             _tl126024126082_
                             _e126025126085_
                             _hd126026126088_
                             _tl126027126090_
                             _e126028126093_
                             _hd126029126096_
                             _tl126030126098_
                             _e126031126101_
                             _hd126032126104_
                             _tl126033126106_
                             _e126034126109_
                             _hd126035126112_
                             _tl126036126114_)
                            (___kont131401131402_))))
                     (___match131874131875_
                      (lambda (_e126013126053_
                               _hd126014126056_
                               _tl126015126058_
                               _e126016126061_
                               _hd126017126064_
                               _tl126018126066_
                               _e126019126069_
                               _hd126020126072_
                               _tl126021126074_
                               _e126022126077_
                               _hd126023126080_
                               _tl126024126082_
                               _e126025126085_
                               _hd126026126088_
                               _tl126027126090_
                               _e126028126093_
                               _hd126029126096_
                               _tl126030126098_
                               _e126031126101_
                               _hd126032126104_
                               _tl126033126106_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl126027126090_))
                            (let ((_e126034126109_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl126027126090_))))
                              (let ((_tl126036126114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e126034126109_)))
                                    (_hd126035126112_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e126034126109_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl126036126114_))
                                    (___match131882131883_
                                     _e126013126053_
                                     _hd126014126056_
                                     _tl126015126058_
                                     _e126016126061_
                                     _hd126017126064_
                                     _tl126018126066_
                                     _e126019126069_
                                     _hd126020126072_
                                     _tl126021126074_
                                     _e126022126077_
                                     _hd126023126080_
                                     _tl126024126082_
                                     _e126025126085_
                                     _hd126026126088_
                                     _tl126027126090_
                                     _e126028126093_
                                     _hd126029126096_
                                     _tl126030126098_
                                     _e126031126101_
                                     _hd126032126104_
                                     _tl126033126106_
                                     _e126034126109_
                                     _hd126035126112_
                                     _tl126036126114_)
                                    (___kont131401131402_))))
                            (___kont131401131402_))))
                     (___match131820131821_
                      (lambda (_e125989126167_
                               _hd125990126170_
                               _tl125991126172_
                               _e125992126175_
                               _hd125993126178_
                               _tl125994126180_
                               _e125995126183_
                               _hd125996126186_
                               _tl125997126188_
                               _e125998126191_
                               _hd125999126194_
                               _tl126000126196_
                               _e126001126199_
                               _hd126002126202_
                               _tl126003126204_
                               _e126004126207_
                               _hd126005126210_
                               _tl126006126212_
                               _e126007126215_
                               _hd126008126218_
                               _tl126009126220_)
                        (let ((_L126223_ _hd126008126218_)
                              (_L126224_ _hd125999126194_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126223_
                                      _self125806_))
                                   (let ((__tmp132246
                                          (let ((__tmp132247
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L126224_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp132247))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp132246
                                      'gxc#!accessor::t)))
                              (___kont131397131398_ _L126223_ _L126224_)
                              (___kont131401131402_)))))
                     (___match131818131819_
                      (lambda (_e125989126167_
                               _hd125990126170_
                               _tl125991126172_
                               _e125992126175_
                               _hd125993126178_
                               _tl125994126180_
                               _e125995126183_
                               _hd125996126186_
                               _tl125997126188_
                               _e125998126191_
                               _hd125999126194_
                               _tl126000126196_
                               _e126001126199_
                               _hd126002126202_
                               _tl126003126204_
                               _e126004126207_
                               _hd126005126210_
                               _tl126006126212_
                               _e126007126215_
                               _hd126008126218_
                               _tl126009126220_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl126003126204_))
                            (___match131820131821_
                             _e125989126167_
                             _hd125990126170_
                             _tl125991126172_
                             _e125992126175_
                             _hd125993126178_
                             _tl125994126180_
                             _e125995126183_
                             _hd125996126186_
                             _tl125997126188_
                             _e125998126191_
                             _hd125999126194_
                             _tl126000126196_
                             _e126001126199_
                             _hd126002126202_
                             _tl126003126204_
                             _e126004126207_
                             _hd126005126210_
                             _tl126006126212_
                             _e126007126215_
                             _hd126008126218_
                             _tl126009126220_)
                            (___match131874131875_
                             _e125989126167_
                             _hd125990126170_
                             _tl125991126172_
                             _e125992126175_
                             _hd125993126178_
                             _tl125994126180_
                             _e125995126183_
                             _hd125996126186_
                             _tl125997126188_
                             _e125998126191_
                             _hd125999126194_
                             _tl126000126196_
                             _e126001126199_
                             _hd126002126202_
                             _tl126003126204_
                             _e126004126207_
                             _hd126005126210_
                             _tl126006126212_
                             _e126007126215_
                             _hd126008126218_
                             _tl126009126220_))))
                     (___match131764131765_
                      (lambda (_e125954126263_
                               _hd125955126266_
                               _tl125956126268_
                               _e125957126271_
                               _hd125958126274_
                               _tl125959126276_
                               _e125960126279_
                               _hd125961126282_
                               _tl125962126284_
                               _e125963126287_
                               _hd125964126290_
                               _tl125965126292_
                               _e125966126295_
                               _hd125967126298_
                               _tl125968126300_
                               _e125969126303_
                               _hd125970126306_
                               _tl125971126308_
                               _e125972126311_
                               _hd125973126314_
                               _tl125974126316_
                               _e125975126319_
                               _hd125976126322_
                               _tl125977126324_
                               _e125978126327_
                               _hd125979126330_
                               _tl125980126332_
                               _e125981126335_
                               _hd125982126338_
                               _tl125983126340_
                               _e125984126343_
                               _hd125985126346_
                               _tl125986126348_)
                        (let ((_L126351_ _hd125985126346_)
                              (_L126352_ _hd125982126338_)
                              (_L126353_ _hd125973126314_)
                              (_L126354_ _hd125964126290_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126354_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126354_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126353_
                                      _self125806_)))
                              (___kont131395131396_
                               _L126351_
                               _L126352_
                               _L126353_
                               _L126354_)
                              (___kont131401131402_)))))
                     (___match131756131757_
                      (lambda (_e125954126263_
                               _hd125955126266_
                               _tl125956126268_
                               _e125957126271_
                               _hd125958126274_
                               _tl125959126276_
                               _e125960126279_
                               _hd125961126282_
                               _tl125962126284_
                               _e125963126287_
                               _hd125964126290_
                               _tl125965126292_
                               _e125966126295_
                               _hd125967126298_
                               _tl125968126300_
                               _e125969126303_
                               _hd125970126306_
                               _tl125971126308_
                               _e125972126311_
                               _hd125973126314_
                               _tl125974126316_
                               _e125975126319_
                               _hd125976126322_
                               _tl125977126324_
                               _e125978126327_
                               _hd125979126330_
                               _tl125980126332_
                               _e125981126335_
                               _hd125982126338_
                               _tl125983126340_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125977126324_))
                            (let ((_e125984126343_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125977126324_))))
                              (let ((_tl125986126348_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125984126343_)))
                                    (_hd125985126346_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125984126343_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl125986126348_))
                                    (___match131764131765_
                                     _e125954126263_
                                     _hd125955126266_
                                     _tl125956126268_
                                     _e125957126271_
                                     _hd125958126274_
                                     _tl125959126276_
                                     _e125960126279_
                                     _hd125961126282_
                                     _tl125962126284_
                                     _e125963126287_
                                     _hd125964126290_
                                     _tl125965126292_
                                     _e125966126295_
                                     _hd125967126298_
                                     _tl125968126300_
                                     _e125969126303_
                                     _hd125970126306_
                                     _tl125971126308_
                                     _e125972126311_
                                     _hd125973126314_
                                     _tl125974126316_
                                     _e125975126319_
                                     _hd125976126322_
                                     _tl125977126324_
                                     _e125978126327_
                                     _hd125979126330_
                                     _tl125980126332_
                                     _e125981126335_
                                     _hd125982126338_
                                     _tl125983126340_
                                     _e125984126343_
                                     _hd125985126346_
                                     _tl125986126348_)
                                    (___kont131401131402_))))
                            (___match131880131881_
                             _e125954126263_
                             _hd125955126266_
                             _tl125956126268_
                             _e125957126271_
                             _hd125958126274_
                             _tl125959126276_
                             _e125960126279_
                             _hd125961126282_
                             _tl125962126284_
                             _e125963126287_
                             _hd125964126290_
                             _tl125965126292_
                             _e125966126295_
                             _hd125967126298_
                             _tl125968126300_
                             _e125969126303_
                             _hd125970126306_
                             _tl125971126308_
                             _e125972126311_
                             _hd125973126314_
                             _tl125974126316_
                             _e125975126319_
                             _hd125976126322_
                             _tl125977126324_))))
                     (___match131678131679_
                      (lambda (_e125920126397_
                               _hd125921126400_
                               _tl125922126402_
                               _e125923126405_
                               _hd125924126408_
                               _tl125925126410_
                               _e125926126413_
                               _hd125927126416_
                               _tl125928126418_
                               _e125929126421_
                               _hd125930126424_
                               _tl125931126426_
                               _e125932126429_
                               _hd125933126432_
                               _tl125934126434_
                               _e125935126437_
                               _hd125936126440_
                               _tl125937126442_
                               _e125938126445_
                               _hd125939126448_
                               _tl125940126450_
                               _e125941126453_
                               _hd125942126456_
                               _tl125943126458_
                               _e125944126461_
                               _hd125945126464_
                               _tl125946126466_
                               _e125947126469_
                               _hd125948126472_
                               _tl125949126474_)
                        (let ((_L126477_ _hd125948126472_)
                              (_L126478_ _hd125939126448_)
                              (_L126479_ _hd125930126424_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126479_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L126479_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L126478_
                                      _self125806_)))
                              (___kont131393131394_
                               _L126477_
                               _L126478_
                               _L126479_)
                              (___match131882131883_
                               _e125920126397_
                               _hd125921126400_
                               _tl125922126402_
                               _e125923126405_
                               _hd125924126408_
                               _tl125925126410_
                               _e125926126413_
                               _hd125927126416_
                               _tl125928126418_
                               _e125929126421_
                               _hd125930126424_
                               _tl125931126426_
                               _e125932126429_
                               _hd125933126432_
                               _tl125934126434_
                               _e125935126437_
                               _hd125936126440_
                               _tl125937126442_
                               _e125938126445_
                               _hd125939126448_
                               _tl125940126450_
                               _e125941126453_
                               _hd125942126456_
                               _tl125943126458_)))))
                     (___match131676131677_
                      (lambda (_e125920126397_
                               _hd125921126400_
                               _tl125922126402_
                               _e125923126405_
                               _hd125924126408_
                               _tl125925126410_
                               _e125926126413_
                               _hd125927126416_
                               _tl125928126418_
                               _e125929126421_
                               _hd125930126424_
                               _tl125931126426_
                               _e125932126429_
                               _hd125933126432_
                               _tl125934126434_
                               _e125935126437_
                               _hd125936126440_
                               _tl125937126442_
                               _e125938126445_
                               _hd125939126448_
                               _tl125940126450_
                               _e125941126453_
                               _hd125942126456_
                               _tl125943126458_
                               _e125944126461_
                               _hd125945126464_
                               _tl125946126466_
                               _e125947126469_
                               _hd125948126472_
                               _tl125949126474_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl125943126458_))
                            (___match131678131679_
                             _e125920126397_
                             _hd125921126400_
                             _tl125922126402_
                             _e125923126405_
                             _hd125924126408_
                             _tl125925126410_
                             _e125926126413_
                             _hd125927126416_
                             _tl125928126418_
                             _e125929126421_
                             _hd125930126424_
                             _tl125931126426_
                             _e125932126429_
                             _hd125933126432_
                             _tl125934126434_
                             _e125935126437_
                             _hd125936126440_
                             _tl125937126442_
                             _e125938126445_
                             _hd125939126448_
                             _tl125940126450_
                             _e125941126453_
                             _hd125942126456_
                             _tl125943126458_
                             _e125944126461_
                             _hd125945126464_
                             _tl125946126466_
                             _e125947126469_
                             _hd125948126472_
                             _tl125949126474_)
                            (___match131756131757_
                             _e125920126397_
                             _hd125921126400_
                             _tl125922126402_
                             _e125923126405_
                             _hd125924126408_
                             _tl125925126410_
                             _e125926126413_
                             _hd125927126416_
                             _tl125928126418_
                             _e125929126421_
                             _hd125930126424_
                             _tl125931126426_
                             _e125932126429_
                             _hd125933126432_
                             _tl125934126434_
                             _e125935126437_
                             _hd125936126440_
                             _tl125937126442_
                             _e125938126445_
                             _hd125939126448_
                             _tl125940126450_
                             _e125941126453_
                             _hd125942126456_
                             _tl125943126458_
                             _e125944126461_
                             _hd125945126464_
                             _tl125946126466_
                             _e125947126469_
                             _hd125948126472_
                             _tl125949126474_))))
                     (___match131666131667_
                      (lambda (_e125920126397_
                               _hd125921126400_
                               _tl125922126402_
                               _e125923126405_
                               _hd125924126408_
                               _tl125925126410_
                               _e125926126413_
                               _hd125927126416_
                               _tl125928126418_
                               _e125929126421_
                               _hd125930126424_
                               _tl125931126426_
                               _e125932126429_
                               _hd125933126432_
                               _tl125934126434_
                               _e125935126437_
                               _hd125936126440_
                               _tl125937126442_
                               _e125938126445_
                               _hd125939126448_
                               _tl125940126450_
                               _e125941126453_
                               _hd125942126456_
                               _tl125943126458_
                               _e125944126461_
                               _hd125945126464_
                               _tl125946126466_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd125945126464_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125946126466_))
                                (let ((_e125947126469_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125946126466_))))
                                  (let ((_tl125949126474_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125947126469_)))
                                        (_hd125948126472_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125947126469_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125949126474_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl125943126458_))
                                            (___match131678131679_
                                             _e125920126397_
                                             _hd125921126400_
                                             _tl125922126402_
                                             _e125923126405_
                                             _hd125924126408_
                                             _tl125925126410_
                                             _e125926126413_
                                             _hd125927126416_
                                             _tl125928126418_
                                             _e125929126421_
                                             _hd125930126424_
                                             _tl125931126426_
                                             _e125932126429_
                                             _hd125933126432_
                                             _tl125934126434_
                                             _e125935126437_
                                             _hd125936126440_
                                             _tl125937126442_
                                             _e125938126445_
                                             _hd125939126448_
                                             _tl125940126450_
                                             _e125941126453_
                                             _hd125942126456_
                                             _tl125943126458_
                                             _e125944126461_
                                             _hd125945126464_
                                             _tl125946126466_
                                             _e125947126469_
                                             _hd125948126472_
                                             _tl125949126474_)
                                            (___match131756131757_
                                             _e125920126397_
                                             _hd125921126400_
                                             _tl125922126402_
                                             _e125923126405_
                                             _hd125924126408_
                                             _tl125925126410_
                                             _e125926126413_
                                             _hd125927126416_
                                             _tl125928126418_
                                             _e125929126421_
                                             _hd125930126424_
                                             _tl125931126426_
                                             _e125932126429_
                                             _hd125933126432_
                                             _tl125934126434_
                                             _e125935126437_
                                             _hd125936126440_
                                             _tl125937126442_
                                             _e125938126445_
                                             _hd125939126448_
                                             _tl125940126450_
                                             _e125941126453_
                                             _hd125942126456_
                                             _tl125943126458_
                                             _e125944126461_
                                             _hd125945126464_
                                             _tl125946126466_
                                             _e125947126469_
                                             _hd125948126472_
                                             _tl125949126474_))
                                        (___match131880131881_
                                         _e125920126397_
                                         _hd125921126400_
                                         _tl125922126402_
                                         _e125923126405_
                                         _hd125924126408_
                                         _tl125925126410_
                                         _e125926126413_
                                         _hd125927126416_
                                         _tl125928126418_
                                         _e125929126421_
                                         _hd125930126424_
                                         _tl125931126426_
                                         _e125932126429_
                                         _hd125933126432_
                                         _tl125934126434_
                                         _e125935126437_
                                         _hd125936126440_
                                         _tl125937126442_
                                         _e125938126445_
                                         _hd125939126448_
                                         _tl125940126450_
                                         _e125941126453_
                                         _hd125942126456_
                                         _tl125943126458_))))
                                (___match131880131881_
                                 _e125920126397_
                                 _hd125921126400_
                                 _tl125922126402_
                                 _e125923126405_
                                 _hd125924126408_
                                 _tl125925126410_
                                 _e125926126413_
                                 _hd125927126416_
                                 _tl125928126418_
                                 _e125929126421_
                                 _hd125930126424_
                                 _tl125931126426_
                                 _e125932126429_
                                 _hd125933126432_
                                 _tl125934126434_
                                 _e125935126437_
                                 _hd125936126440_
                                 _tl125937126442_
                                 _e125938126445_
                                 _hd125939126448_
                                 _tl125940126450_
                                 _e125941126453_
                                 _hd125942126456_
                                 _tl125943126458_))
                            (___match131880131881_
                             _e125920126397_
                             _hd125921126400_
                             _tl125922126402_
                             _e125923126405_
                             _hd125924126408_
                             _tl125925126410_
                             _e125926126413_
                             _hd125927126416_
                             _tl125928126418_
                             _e125929126421_
                             _hd125930126424_
                             _tl125931126426_
                             _e125932126429_
                             _hd125933126432_
                             _tl125934126434_
                             _e125935126437_
                             _hd125936126440_
                             _tl125937126442_
                             _e125938126445_
                             _hd125939126448_
                             _tl125940126450_
                             _e125941126453_
                             _hd125942126456_
                             _tl125943126458_))))
                     (___match131598131599_
                      (lambda (_e125869126518_
                               _hd125870126521_
                               _tl125871126523_
                               _e125872126526_
                               _hd125873126529_
                               _tl125874126531_
                               _e125875126534_
                               _hd125876126537_
                               _tl125877126539_
                               _e125878126542_
                               _hd125879126545_
                               _tl125880126547_
                               _e125881126550_
                               _hd125882126553_
                               _tl125883126555_
                               _e125884126558_
                               _hd125885126561_
                               _tl125886126563_
                               _e125887126566_
                               _hd125888126569_
                               _tl125889126571_
                               _e125890126574_
                               _hd125891126577_
                               _tl125892126579_
                               _e125893126582_
                               _hd125894126585_
                               _tl125895126587_
                               _e125896126590_
                               _hd125897126593_
                               _tl125898126595_
                               _e125899126598_
                               _hd125900126601_
                               _tl125901126603_
                               _e125902126606_
                               _hd125903126609_
                               _tl125904126611_
                               _e125905126614_
                               _hd125906126617_
                               _tl125907126619_
                               ___splice131391131392_
                               _target125908126622_
                               _tl125910126624_)
                        (letrec ((_loop125911126627_
                                  (lambda (_hd125909126630_ _args125915126632_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd125909126630_))
                                        (let ((_e125912126635_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd125909126630_))))
                                          (let ((_lp-tl125914126640_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125912126635_)))
                                                (_lp-hd125913126638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125912126635_))))
                                            (let ((__tmp132248
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd125913126638_
                                                           _args125915126632_))))
                                              (declare (not safe))
                                              (_loop125911126627_
                                               _lp-tl125914126640_
                                               __tmp132248))))
                                        (let ((_args125916126643_
                                               (reverse _args125915126632_)))
                                          (let ((_L126646_ _args125916126643_)
                                                (_L126647_ _hd125906126617_)
                                                (_L126648_ _hd125897126593_)
                                                (_L126649_ _hd125888126569_)
                                                (_L126650_ _hd125879126545_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L126650_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L126649_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L126648_
                                                        _self125806_)))
                                                (___kont131389131390_
                                                 _L126646_
                                                 _L126647_
                                                 _L126648_
                                                 _L126649_
                                                 _L126650_)
                                                (___kont131401131402_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop125911126627_ _target125908126622_ '())))))
                     (___match131556131557_
                      (lambda (_e125869126518_
                               _hd125870126521_
                               _tl125871126523_
                               _e125872126526_
                               _hd125873126529_
                               _tl125874126531_
                               _e125875126534_
                               _hd125876126537_
                               _tl125877126539_
                               _e125878126542_
                               _hd125879126545_
                               _tl125880126547_
                               _e125881126550_
                               _hd125882126553_
                               _tl125883126555_
                               _e125884126558_
                               _hd125885126561_
                               _tl125886126563_
                               _e125887126566_
                               _hd125888126569_
                               _tl125889126571_
                               _e125890126574_
                               _hd125891126577_
                               _tl125892126579_
                               _e125893126582_
                               _hd125894126585_
                               _tl125895126587_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd125894126585_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl125895126587_))
                                (let ((_e125896126590_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl125895126587_))))
                                  (let ((_tl125898126595_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125896126590_)))
                                        (_hd125897126593_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125896126590_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl125898126595_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl125892126579_))
                                            (let ((_e125899126598_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl125892126579_))))
                                              (let ((_tl125901126603_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e125899126598_)))
                                                    (_hd125900126601_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e125899126598_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd125900126601_))
                                                    (let ((_e125902126606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd125900126601_))))
                                                      (let ((_tl125904126611_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125902126606_)))
                    (_hd125903126609_
                     (let () (declare (not safe)) (##car _e125902126606_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd125903126609_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd125903126609_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125904126611_))
                            (let ((_e125905126614_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125904126611_))))
                              (let ((_tl125907126619_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125905126614_)))
                                    (_hd125906126617_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125905126614_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl125907126619_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl125901126603_))
                                        (let ((___splice131391131392_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl125901126603_
                                                  '0))))
                                          (let ((_tl125910126624_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice131391131392_
                                                    '1)))
                                                (_target125908126622_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice131391131392_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl125910126624_))
                                                (___match131598131599_
                                                 _e125869126518_
                                                 _hd125870126521_
                                                 _tl125871126523_
                                                 _e125872126526_
                                                 _hd125873126529_
                                                 _tl125874126531_
                                                 _e125875126534_
                                                 _hd125876126537_
                                                 _tl125877126539_
                                                 _e125878126542_
                                                 _hd125879126545_
                                                 _tl125880126547_
                                                 _e125881126550_
                                                 _hd125882126553_
                                                 _tl125883126555_
                                                 _e125884126558_
                                                 _hd125885126561_
                                                 _tl125886126563_
                                                 _e125887126566_
                                                 _hd125888126569_
                                                 _tl125889126571_
                                                 _e125890126574_
                                                 _hd125891126577_
                                                 _tl125892126579_
                                                 _e125893126582_
                                                 _hd125894126585_
                                                 _tl125895126587_
                                                 _e125896126590_
                                                 _hd125897126593_
                                                 _tl125898126595_
                                                 _e125899126598_
                                                 _hd125900126601_
                                                 _tl125901126603_
                                                 _e125902126606_
                                                 _hd125903126609_
                                                 _tl125904126611_
                                                 _e125905126614_
                                                 _hd125906126617_
                                                 _tl125907126619_
                                                 ___splice131391131392_
                                                 _target125908126622_
                                                 _tl125910126624_)
                                                (___kont131401131402_))))
                                        (___kont131401131402_))
                                    (___kont131401131402_))))
                            (___kont131401131402_))
                        (___kont131401131402_))
                    (___kont131401131402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont131401131402_))))
                                            (___match131880131881_
                                             _e125869126518_
                                             _hd125870126521_
                                             _tl125871126523_
                                             _e125872126526_
                                             _hd125873126529_
                                             _tl125874126531_
                                             _e125875126534_
                                             _hd125876126537_
                                             _tl125877126539_
                                             _e125878126542_
                                             _hd125879126545_
                                             _tl125880126547_
                                             _e125881126550_
                                             _hd125882126553_
                                             _tl125883126555_
                                             _e125884126558_
                                             _hd125885126561_
                                             _tl125886126563_
                                             _e125887126566_
                                             _hd125888126569_
                                             _tl125889126571_
                                             _e125890126574_
                                             _hd125891126577_
                                             _tl125892126579_))
                                        (___match131880131881_
                                         _e125869126518_
                                         _hd125870126521_
                                         _tl125871126523_
                                         _e125872126526_
                                         _hd125873126529_
                                         _tl125874126531_
                                         _e125875126534_
                                         _hd125876126537_
                                         _tl125877126539_
                                         _e125878126542_
                                         _hd125879126545_
                                         _tl125880126547_
                                         _e125881126550_
                                         _hd125882126553_
                                         _tl125883126555_
                                         _e125884126558_
                                         _hd125885126561_
                                         _tl125886126563_
                                         _e125887126566_
                                         _hd125888126569_
                                         _tl125889126571_
                                         _e125890126574_
                                         _hd125891126577_
                                         _tl125892126579_))))
                                (___match131880131881_
                                 _e125869126518_
                                 _hd125870126521_
                                 _tl125871126523_
                                 _e125872126526_
                                 _hd125873126529_
                                 _tl125874126531_
                                 _e125875126534_
                                 _hd125876126537_
                                 _tl125877126539_
                                 _e125878126542_
                                 _hd125879126545_
                                 _tl125880126547_
                                 _e125881126550_
                                 _hd125882126553_
                                 _tl125883126555_
                                 _e125884126558_
                                 _hd125885126561_
                                 _tl125886126563_
                                 _e125887126566_
                                 _hd125888126569_
                                 _tl125889126571_
                                 _e125890126574_
                                 _hd125891126577_
                                 _tl125892126579_))
                            (___match131666131667_
                             _e125869126518_
                             _hd125870126521_
                             _tl125871126523_
                             _e125872126526_
                             _hd125873126529_
                             _tl125874126531_
                             _e125875126534_
                             _hd125876126537_
                             _tl125877126539_
                             _e125878126542_
                             _hd125879126545_
                             _tl125880126547_
                             _e125881126550_
                             _hd125882126553_
                             _tl125883126555_
                             _e125884126558_
                             _hd125885126561_
                             _tl125886126563_
                             _e125887126566_
                             _hd125888126569_
                             _tl125889126571_
                             _e125890126574_
                             _hd125891126577_
                             _tl125892126579_
                             _e125893126582_
                             _hd125894126585_
                             _tl125895126587_))))
                     (___match131488131489_
                      (lambda (_e125825126710_
                               _hd125826126713_
                               _tl125827126715_
                               _e125828126718_
                               _hd125829126721_
                               _tl125830126723_
                               _e125831126726_
                               _hd125832126729_
                               _tl125833126731_
                               _e125834126734_
                               _hd125835126737_
                               _tl125836126739_
                               _e125837126742_
                               _hd125838126745_
                               _tl125839126747_
                               _e125840126750_
                               _hd125841126753_
                               _tl125842126755_
                               _e125843126758_
                               _hd125844126761_
                               _tl125845126763_
                               _e125846126766_
                               _hd125847126769_
                               _tl125848126771_
                               _e125849126774_
                               _hd125850126777_
                               _tl125851126779_
                               _e125852126782_
                               _hd125853126785_
                               _tl125854126787_
                               ___splice131387131388_
                               _target125855126790_
                               _tl125857126792_)
                        (letrec ((_loop125858126795_
                                  (lambda (_hd125856126798_ _args125862126800_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd125856126798_))
                                        (let ((_e125859126803_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd125856126798_))))
                                          (let ((_lp-tl125861126808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e125859126803_)))
                                                (_lp-hd125860126806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e125859126803_))))
                                            (let ((__tmp132249
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd125860126806_
                                                           _args125862126800_))))
                                              (declare (not safe))
                                              (_loop125858126795_
                                               _lp-tl125861126808_
                                               __tmp132249))))
                                        (let ((_args125863126811_
                                               (reverse _args125862126800_)))
                                          (let ((_L126814_ _args125863126811_)
                                                (_L126815_ _hd125853126785_)
                                                (_L126816_ _hd125844126761_)
                                                (_L126817_ _hd125835126737_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L126817_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L126816_
                                                        _self125806_)))
                                                (___kont131385131386_
                                                 _L126814_
                                                 _L126815_
                                                 _L126816_
                                                 _L126817_)
                                                (___match131676131677_
                                                 _e125825126710_
                                                 _hd125826126713_
                                                 _tl125827126715_
                                                 _e125828126718_
                                                 _hd125829126721_
                                                 _tl125830126723_
                                                 _e125831126726_
                                                 _hd125832126729_
                                                 _tl125833126731_
                                                 _e125834126734_
                                                 _hd125835126737_
                                                 _tl125836126739_
                                                 _e125837126742_
                                                 _hd125838126745_
                                                 _tl125839126747_
                                                 _e125840126750_
                                                 _hd125841126753_
                                                 _tl125842126755_
                                                 _e125843126758_
                                                 _hd125844126761_
                                                 _tl125845126763_
                                                 _e125846126766_
                                                 _hd125847126769_
                                                 _tl125848126771_
                                                 _e125849126774_
                                                 _hd125850126777_
                                                 _tl125851126779_
                                                 _e125852126782_
                                                 _hd125853126785_
                                                 _tl125854126787_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop125858126795_ _target125855126790_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx131383131384_))
                    (let ((_e125825126710_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx131383131384_))))
                      (let ((_tl125827126715_
                             (let ()
                               (declare (not safe))
                               (##cdr _e125825126710_)))
                            (_hd125826126713_
                             (let ()
                               (declare (not safe))
                               (##car _e125825126710_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl125827126715_))
                            (let ((_e125828126718_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl125827126715_))))
                              (let ((_tl125830126723_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125828126718_)))
                                    (_hd125829126721_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125828126718_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd125829126721_))
                                    (let ((_e125831126726_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd125829126721_))))
                                      (let ((_tl125833126731_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e125831126726_)))
                                            (_hd125832126729_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e125831126726_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd125832126729_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd125832126729_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl125833126731_))
                                                    (let ((_e125834126734_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl125833126731_))))
                                                      (let ((_tl125836126739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e125834126734_)))
                    (_hd125835126737_
                     (let () (declare (not safe)) (##car _e125834126734_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl125836126739_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl125830126723_))
                        (let ((_e125837126742_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl125830126723_))))
                          (let ((_tl125839126747_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e125837126742_)))
                                (_hd125838126745_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e125837126742_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd125838126745_))
                                (let ((_e125840126750_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd125838126745_))))
                                  (let ((_tl125842126755_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e125840126750_)))
                                        (_hd125841126753_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e125840126750_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd125841126753_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd125841126753_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl125842126755_))
                                                (let ((_e125843126758_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl125842126755_))))
                                                  (let ((_tl125845126763_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e125843126758_)))
                                                        (_hd125844126761_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e125843126758_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl125845126763_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl125839126747_))
                                                            (let ((_e125846126766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl125839126747_))))
                      (let ((_tl125848126771_
                             (let ()
                               (declare (not safe))
                               (##cdr _e125846126766_)))
                            (_hd125847126769_
                             (let ()
                               (declare (not safe))
                               (##car _e125846126766_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd125847126769_))
                            (let ((_e125849126774_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd125847126769_))))
                              (let ((_tl125851126779_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e125849126774_)))
                                    (_hd125850126777_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e125849126774_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd125850126777_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd125850126777_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl125851126779_))
                                            (let ((_e125852126782_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl125851126779_))))
                                              (let ((_tl125854126787_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e125852126782_)))
                                                    (_hd125853126785_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e125852126782_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl125854126787_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl125848126771_))
                                                        (let ((___splice131387131388_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl125848126771_ '0))))
                  (let ((_tl125857126792_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice131387131388_ '1)))
                        (_target125855126790_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice131387131388_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl125857126792_))
                        (___match131488131489_
                         _e125825126710_
                         _hd125826126713_
                         _tl125827126715_
                         _e125828126718_
                         _hd125829126721_
                         _tl125830126723_
                         _e125831126726_
                         _hd125832126729_
                         _tl125833126731_
                         _e125834126734_
                         _hd125835126737_
                         _tl125836126739_
                         _e125837126742_
                         _hd125838126745_
                         _tl125839126747_
                         _e125840126750_
                         _hd125841126753_
                         _tl125842126755_
                         _e125843126758_
                         _hd125844126761_
                         _tl125845126763_
                         _e125846126766_
                         _hd125847126769_
                         _tl125848126771_
                         _e125849126774_
                         _hd125850126777_
                         _tl125851126779_
                         _e125852126782_
                         _hd125853126785_
                         _tl125854126787_
                         ___splice131387131388_
                         _target125855126790_
                         _tl125857126792_)
                        (___match131676131677_
                         _e125825126710_
                         _hd125826126713_
                         _tl125827126715_
                         _e125828126718_
                         _hd125829126721_
                         _tl125830126723_
                         _e125831126726_
                         _hd125832126729_
                         _tl125833126731_
                         _e125834126734_
                         _hd125835126737_
                         _tl125836126739_
                         _e125837126742_
                         _hd125838126745_
                         _tl125839126747_
                         _e125840126750_
                         _hd125841126753_
                         _tl125842126755_
                         _e125843126758_
                         _hd125844126761_
                         _tl125845126763_
                         _e125846126766_
                         _hd125847126769_
                         _tl125848126771_
                         _e125849126774_
                         _hd125850126777_
                         _tl125851126779_
                         _e125852126782_
                         _hd125853126785_
                         _tl125854126787_))))
                (___match131676131677_
                 _e125825126710_
                 _hd125826126713_
                 _tl125827126715_
                 _e125828126718_
                 _hd125829126721_
                 _tl125830126723_
                 _e125831126726_
                 _hd125832126729_
                 _tl125833126731_
                 _e125834126734_
                 _hd125835126737_
                 _tl125836126739_
                 _e125837126742_
                 _hd125838126745_
                 _tl125839126747_
                 _e125840126750_
                 _hd125841126753_
                 _tl125842126755_
                 _e125843126758_
                 _hd125844126761_
                 _tl125845126763_
                 _e125846126766_
                 _hd125847126769_
                 _tl125848126771_
                 _e125849126774_
                 _hd125850126777_
                 _tl125851126779_
                 _e125852126782_
                 _hd125853126785_
                 _tl125854126787_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match131880131881_
                                                     _e125825126710_
                                                     _hd125826126713_
                                                     _tl125827126715_
                                                     _e125828126718_
                                                     _hd125829126721_
                                                     _tl125830126723_
                                                     _e125831126726_
                                                     _hd125832126729_
                                                     _tl125833126731_
                                                     _e125834126734_
                                                     _hd125835126737_
                                                     _tl125836126739_
                                                     _e125837126742_
                                                     _hd125838126745_
                                                     _tl125839126747_
                                                     _e125840126750_
                                                     _hd125841126753_
                                                     _tl125842126755_
                                                     _e125843126758_
                                                     _hd125844126761_
                                                     _tl125845126763_
                                                     _e125846126766_
                                                     _hd125847126769_
                                                     _tl125848126771_))))
                                            (___match131880131881_
                                             _e125825126710_
                                             _hd125826126713_
                                             _tl125827126715_
                                             _e125828126718_
                                             _hd125829126721_
                                             _tl125830126723_
                                             _e125831126726_
                                             _hd125832126729_
                                             _tl125833126731_
                                             _e125834126734_
                                             _hd125835126737_
                                             _tl125836126739_
                                             _e125837126742_
                                             _hd125838126745_
                                             _tl125839126747_
                                             _e125840126750_
                                             _hd125841126753_
                                             _tl125842126755_
                                             _e125843126758_
                                             _hd125844126761_
                                             _tl125845126763_
                                             _e125846126766_
                                             _hd125847126769_
                                             _tl125848126771_))
                                        (___match131556131557_
                                         _e125825126710_
                                         _hd125826126713_
                                         _tl125827126715_
                                         _e125828126718_
                                         _hd125829126721_
                                         _tl125830126723_
                                         _e125831126726_
                                         _hd125832126729_
                                         _tl125833126731_
                                         _e125834126734_
                                         _hd125835126737_
                                         _tl125836126739_
                                         _e125837126742_
                                         _hd125838126745_
                                         _tl125839126747_
                                         _e125840126750_
                                         _hd125841126753_
                                         _tl125842126755_
                                         _e125843126758_
                                         _hd125844126761_
                                         _tl125845126763_
                                         _e125846126766_
                                         _hd125847126769_
                                         _tl125848126771_
                                         _e125849126774_
                                         _hd125850126777_
                                         _tl125851126779_))
                                    (___match131880131881_
                                     _e125825126710_
                                     _hd125826126713_
                                     _tl125827126715_
                                     _e125828126718_
                                     _hd125829126721_
                                     _tl125830126723_
                                     _e125831126726_
                                     _hd125832126729_
                                     _tl125833126731_
                                     _e125834126734_
                                     _hd125835126737_
                                     _tl125836126739_
                                     _e125837126742_
                                     _hd125838126745_
                                     _tl125839126747_
                                     _e125840126750_
                                     _hd125841126753_
                                     _tl125842126755_
                                     _e125843126758_
                                     _hd125844126761_
                                     _tl125845126763_
                                     _e125846126766_
                                     _hd125847126769_
                                     _tl125848126771_))))
                            (___match131880131881_
                             _e125825126710_
                             _hd125826126713_
                             _tl125827126715_
                             _e125828126718_
                             _hd125829126721_
                             _tl125830126723_
                             _e125831126726_
                             _hd125832126729_
                             _tl125833126731_
                             _e125834126734_
                             _hd125835126737_
                             _tl125836126739_
                             _e125837126742_
                             _hd125838126745_
                             _tl125839126747_
                             _e125840126750_
                             _hd125841126753_
                             _tl125842126755_
                             _e125843126758_
                             _hd125844126761_
                             _tl125845126763_
                             _e125846126766_
                             _hd125847126769_
                             _tl125848126771_))))
                    (___match131818131819_
                     _e125825126710_
                     _hd125826126713_
                     _tl125827126715_
                     _e125828126718_
                     _hd125829126721_
                     _tl125830126723_
                     _e125831126726_
                     _hd125832126729_
                     _tl125833126731_
                     _e125834126734_
                     _hd125835126737_
                     _tl125836126739_
                     _e125837126742_
                     _hd125838126745_
                     _tl125839126747_
                     _e125840126750_
                     _hd125841126753_
                     _tl125842126755_
                     _e125843126758_
                     _hd125844126761_
                     _tl125845126763_))
                (___kont131401131402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont131401131402_))
                                            (___kont131401131402_))
                                        (___kont131401131402_))))
                                (___kont131401131402_))))
                        (___kont131401131402_))
                    (___kont131401131402_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont131401131402_))
                                                (___kont131401131402_))
                                            (___kont131401131402_))))
                                    (___kont131401131402_))))
                            (___kont131401131402_))))
                    (___kont131401131402_))))))))))
