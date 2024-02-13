(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707830023)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl250290_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255986 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl250290_ __tmp255986))
           (let ()
             (declare (not safe))
             (table-set! _tbl250290_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250290_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250290_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250290_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl250290_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx250273_ . _args250275_)
        (let ((__tmp255988
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250275_)
                     (gxc#compile-e__0 _stx250273_)
                     (let ((_arg1250280_ (car _args250275_))
                           (_rest250282_ (cdr _args250275_)))
                       (if (null? _rest250282_)
                           (gxc#compile-e__1 _stx250273_ _arg1250280_)
                           (let ((_arg2250285_ (car _rest250282_))
                                 (_rest250287_ (cdr _rest250282_)))
                             (if (null? _rest250287_)
                                 (gxc#compile-e__2
                                  _stx250273_
                                  _arg1250280_
                                  _arg2250285_)
                                 (apply gxc#compile-e
                                        _stx250273_
                                        _arg1250280_
                                        _arg2250285_
                                        _rest250287_))))))))
              (__tmp255987 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp255988
           gxc#current-compile-methods
           __tmp255987))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250270_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255989 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl250270_ __tmp255989))
           (let ()
             (declare (not safe))
             (table-set! _tbl250270_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250270_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250270_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250270_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250270_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250270_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl250270_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl250270_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl250270_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx250253_ . _args250255_)
        (let ((__tmp255991
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250255_)
                     (gxc#compile-e__0 _stx250253_)
                     (let ((_arg1250260_ (car _args250255_))
                           (_rest250262_ (cdr _args250255_)))
                       (if (null? _rest250262_)
                           (gxc#compile-e__1 _stx250253_ _arg1250260_)
                           (let ((_arg2250265_ (car _rest250262_))
                                 (_rest250267_ (cdr _rest250262_)))
                             (if (null? _rest250267_)
                                 (gxc#compile-e__2
                                  _stx250253_
                                  _arg1250260_
                                  _arg2250265_)
                                 (apply gxc#compile-e
                                        _stx250253_
                                        _arg1250260_
                                        _arg2250265_
                                        _rest250267_))))))))
              (__tmp255990 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255991
           gxc#current-compile-methods
           __tmp255990))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl250250_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp255992 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl250250_ __tmp255992))
           (let ()
             (declare (not safe))
             (table-set! _tbl250250_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl250250_ '%#call gxc#subst-object-refs-call%))
           _tbl250250_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx250233_ . _args250235_)
        (let ((__tmp255994
               (lambda ()
                 (declare (not safe))
                 (if (null? _args250235_)
                     (gxc#compile-e__0 _stx250233_)
                     (let ((_arg1250240_ (car _args250235_))
                           (_rest250242_ (cdr _args250235_)))
                       (if (null? _rest250242_)
                           (gxc#compile-e__1 _stx250233_ _arg1250240_)
                           (let ((_arg2250245_ (car _rest250242_))
                                 (_rest250247_ (cdr _rest250242_)))
                             (if (null? _rest250247_)
                                 (gxc#compile-e__2
                                  _stx250233_
                                  _arg1250240_
                                  _arg2250245_)
                                 (apply gxc#compile-e
                                        _stx250233_
                                        _arg1250240_
                                        _arg2250245_
                                        _rest250247_))))))))
              (__tmp255993 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp255994
           gxc#current-compile-methods
           __tmp255993))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx246903_)
        (letrec ((_generate-method-bind246905_
                  (lambda (_$t250227_ _id250228_ _$id250229_)
                    (let ((_$tmp250231_
                           (let ((__tmp255995 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp255995))))
                      (let ((__tmp256043
                             (let ()
                               (declare (not safe))
                               (cons _$id250229_ '())))
                            (__tmp255996
                             (let ((__tmp255997
                                    (let ((__tmp255998
                                           (let ((__tmp256041
                                                  (let ((__tmp256042
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256042)))
                                                 (__tmp255999
                                                  (let ((__tmp256000
                                                         (let ((__tmp256001
                                                                (let ((__tmp256002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256003
                                      (let ((__tmp256004
                                             (let ((__tmp256024
                                                    (let ((__tmp256025
                                                           (let ((__tmp256040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp250231_ '())))
                         (__tmp256026
                          (let ((__tmp256027
                                 (let ((__tmp256028
                                        (let ((__tmp256038
                                               (let ((__tmp256039
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp256039)))
                                              (__tmp256029
                                               (let ((__tmp256036
                                                      (let ((__tmp256037
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t250227_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp256037)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256030
                                                      (let ((__tmp256034
                                                             (let ((__tmp256035
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp256035)))
                    (__tmp256031
                     (let ((__tmp256032
                            (let ((__tmp256033
                                   (let ()
                                     (declare (not safe))
                                     (cons _id250228_ '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256033))))
                       (declare (not safe))
                       (cons __tmp256032 '()))))
                (declare (not safe))
                (cons __tmp256034 __tmp256031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp256036
                                                       __tmp256030))))
                                          (declare (not safe))
                                          (cons __tmp256038 __tmp256029))))
                                   (declare (not safe))
                                   (cons '%#call __tmp256028))))
                            (declare (not safe))
                            (cons __tmp256027 '()))))
                     (declare (not safe))
                     (cons __tmp256040 __tmp256026))))
              (declare (not safe))
              (cons __tmp256025 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256005
                                                    (let ((__tmp256006
                                                           (let ((__tmp256007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256022
                                 (let ((__tmp256023
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp250231_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp256023)))
                                (__tmp256008
                                 (let ((__tmp256020
                                        (let ((__tmp256021
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp250231_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp256021)))
                                       (__tmp256009
                                        (let ((__tmp256010
                                               (let ((__tmp256011
                                                      (let ((__tmp256018
                                                             (let ((__tmp256019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp256019)))
                    (__tmp256012
                     (let ((__tmp256016
                            (let ((__tmp256017
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp256017)))
                           (__tmp256013
                            (let ((__tmp256014
                                   (let ((__tmp256015
                                          (let ()
                                            (declare (not safe))
                                            (cons _id250228_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp256015))))
                              (declare (not safe))
                              (cons __tmp256014 '()))))
                       (declare (not safe))
                       (cons __tmp256016 __tmp256013))))
                (declare (not safe))
                (cons __tmp256018 __tmp256012))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp256011))))
                                          (declare (not safe))
                                          (cons __tmp256010 '()))))
                                   (declare (not safe))
                                   (cons __tmp256020 __tmp256009))))
                            (declare (not safe))
                            (cons __tmp256022 __tmp256008))))
                     (declare (not safe))
                     (cons '%#if __tmp256007))))
              (declare (not safe))
              (cons __tmp256006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256024
                                                     __tmp256005))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp256004))))
                                 (declare (not safe))
                                 (cons __tmp256003 '()))))
                          (declare (not safe))
                          (cons '() __tmp256002))))
                   (declare (not safe))
                   (cons '%#lambda __tmp256001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256000 '()))))
                                             (declare (not safe))
                                             (cons __tmp256041 __tmp255999))))
                                      (declare (not safe))
                                      (cons '%#call __tmp255998))))
                               (declare (not safe))
                               (cons __tmp255997 '()))))
                        (declare (not safe))
                        (cons __tmp256043 __tmp255996)))))
                 (_generate-slot-bind246906_
                  (lambda (_$t250221_ _id250222_ _$id250223_)
                    (let ((_$tmp250225_
                           (let ((__tmp256044 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp256044))))
                      (let ((__tmp256081
                             (let ()
                               (declare (not safe))
                               (cons _$id250223_ '())))
                            (__tmp256045
                             (let ((__tmp256046
                                    (let ((__tmp256047
                                           (let ((__tmp256067
                                                  (let ((__tmp256068
                                                         (let ((__tmp256080
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp250225_ '())))
                       (__tmp256069
                        (let ((__tmp256070
                               (let ((__tmp256071
                                      (let ((__tmp256078
                                             (let ((__tmp256079
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp256079)))
                                            (__tmp256072
                                             (let ((__tmp256076
                                                    (let ((__tmp256077
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t250221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp256077)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp256073
                                                    (let ((__tmp256074
                                                           (let ((__tmp256075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id250222_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp256075))))
              (declare (not safe))
              (cons __tmp256074 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp256076
                                                     __tmp256073))))
                                        (declare (not safe))
                                        (cons __tmp256078 __tmp256072))))
                                 (declare (not safe))
                                 (cons '%#call __tmp256071))))
                          (declare (not safe))
                          (cons __tmp256070 '()))))
                   (declare (not safe))
                   (cons __tmp256080 __tmp256069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256068 '())))
                                                 (__tmp256048
                                                  (let ((__tmp256049
                                                         (let ((__tmp256050
                                                                (let ((__tmp256065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256066
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp250225_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256066)))
                              (__tmp256051
                               (let ((__tmp256063
                                      (let ((__tmp256064
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp250225_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp256064)))
                                     (__tmp256052
                                      (let ((__tmp256053
                                             (let ((__tmp256054
                                                    (let ((__tmp256061
                                                           (let ((__tmp256062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp256062)))
                  (__tmp256055
                   (let ((__tmp256059
                          (let ((__tmp256060
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp256060)))
                         (__tmp256056
                          (let ((__tmp256057
                                 (let ((__tmp256058
                                        (let ()
                                          (declare (not safe))
                                          (cons _id250222_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp256058))))
                            (declare (not safe))
                            (cons __tmp256057 '()))))
                     (declare (not safe))
                     (cons __tmp256059 __tmp256056))))
              (declare (not safe))
              (cons __tmp256061 __tmp256055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp256054))))
                                        (declare (not safe))
                                        (cons __tmp256053 '()))))
                                 (declare (not safe))
                                 (cons __tmp256063 __tmp256052))))
                          (declare (not safe))
                          (cons __tmp256065 __tmp256051))))
                   (declare (not safe))
                   (cons '%#if __tmp256050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256049 '()))))
                                             (declare (not safe))
                                             (cons __tmp256067 __tmp256048))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp256047))))
                               (declare (not safe))
                               (cons __tmp256046 '()))))
                        (declare (not safe))
                        (cons __tmp256081 __tmp256045)))))
                 (_generate-class-check-bind246907_
                  (lambda (_$t250217_ _class-type250218_ _$class-type250219_)
                    (let ((__tmp256093
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250219_ '())))
                          (__tmp256082
                           (let ((__tmp256083
                                  (let ((__tmp256084
                                         (let ((__tmp256091
                                                (let ((__tmp256092
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256092)))
                                               (__tmp256085
                                                (let ((__tmp256089
                                                       (let ((__tmp256090
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250217_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256090)))
              (__tmp256086
               (let ((__tmp256087
                      (let ((__tmp256088
                             (let ()
                               (declare (not safe))
                               (cons _class-type250218_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256088))))
                 (declare (not safe))
                 (cons __tmp256087 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256089
                                                        __tmp256086))))
                                           (declare (not safe))
                                           (cons __tmp256091 __tmp256085))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256084))))
                             (declare (not safe))
                             (cons __tmp256083 '()))))
                      (declare (not safe))
                      (cons __tmp256093 __tmp256082))))
                 (_generate-struct-check-bind246908_
                  (lambda (_$t250213_ _class-type250214_ _$class-type250215_)
                    (let ((__tmp256105
                           (let ()
                             (declare (not safe))
                             (cons _$class-type250215_ '())))
                          (__tmp256094
                           (let ((__tmp256095
                                  (let ((__tmp256096
                                         (let ((__tmp256103
                                                (let ((__tmp256104
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp256104)))
                                               (__tmp256097
                                                (let ((__tmp256101
                                                       (let ((__tmp256102
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t250213_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256102)))
              (__tmp256098
               (let ((__tmp256099
                      (let ((__tmp256100
                             (let ()
                               (declare (not safe))
                               (cons _class-type250214_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp256100))))
                 (declare (not safe))
                 (cons __tmp256099 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256101
                                                        __tmp256098))))
                                           (declare (not safe))
                                           (cons __tmp256103 __tmp256097))))
                                    (declare (not safe))
                                    (cons '%#call __tmp256096))))
                             (declare (not safe))
                             (cons __tmp256095 '()))))
                      (declare (not safe))
                      (cons __tmp256105 __tmp256094))))
                 (_generate-specializer-impl246909_
                  (lambda (_$t250162_
                           _methods-bind250163_
                           _slots-bind250164_
                           _class-check-bind250165_
                           _struct-check-bind250166_
                           _specializer-impl250167_
                           _lifted-specializer-id250168_
                           _unchecked-specializer-impl250169_)
                    (let ((__tmp256106
                           (let ((__tmp256107
                                  (let ((__tmp256133
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t250162_ '())))
                                        (__tmp256108
                                         (let ((__tmp256109
                                                (let ((__tmp256110
                                                       (let ((__tmp256130
                                                              (let ((__tmp256131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256132
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind250166_
                                              _class-check-bind250165_))))
                               (declare (not safe))
                               (foldr1 cons __tmp256132 _slots-bind250164_))))
                        (declare (not safe))
                        (foldr1 cons __tmp256131 _methods-bind250163_)))
                     (__tmp256111
                      (let ((__tmp256112
                             (if (or _lifted-specializer-id250168_
                                     _unchecked-specializer-impl250169_)
                                 (let* ((_$specializer250174_
                                         (let ((__tmp256113
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp256113)))
                                        (__tmp256114
                                         (let ((__tmp256126
                                                (let ((__tmp256127
                                                       (let ((__tmp256129
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250174_ '())))
                     (__tmp256128
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl250167_ '()))))
                 (declare (not safe))
                 (cons __tmp256129 __tmp256128))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256127 '())))
                                               (__tmp256115
                                                (let ((__tmp256116
                                                       (let _recur250176_ ((_rest250178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind250166_)))
                 (let* ((_rest250179250187_ _rest250178_)
                        (_else250181250195_
                         (lambda ()
                           (if _lifted-specializer-id250168_
                               (let ((__tmp256117
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id250168_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp256117))
                               _unchecked-specializer-impl250169_)))
                        (_K250183250201_
                         (lambda (_rest250198_ _checkq250199_)
                           (let ((__tmp256118
                                  (let ((__tmp256124
                                         (let ((__tmp256125
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq250199_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp256125)))
                                        (__tmp256119
                                         (let ((__tmp256123
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur250176_
                                                   _rest250198_)))
                                               (__tmp256120
                                                (let ((__tmp256121
                                                       (let ((__tmp256122
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer250174_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp256122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256121 '()))))
                                           (declare (not safe))
                                           (cons __tmp256123 __tmp256120))))
                                    (declare (not safe))
                                    (cons __tmp256124 __tmp256119))))
                             (declare (not safe))
                             (cons '%#if __tmp256118)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest250179250187_))
                       (let ((_hd250184250204_
                              (let ()
                                (declare (not safe))
                                (##car _rest250179250187_)))
                             (_tl250185250206_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest250179250187_))))
                         (let* ((_checkq250209_ _hd250184250204_)
                                (_rest250211_ _tl250185250206_))
                           (declare (not safe))
                           (_K250183250201_ _rest250211_ _checkq250209_)))
                       (let () (declare (not safe)) (_else250181250195_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256116 '()))))
                                           (declare (not safe))
                                           (cons __tmp256126 __tmp256115))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp256114))
                                 _specializer-impl250167_)))
                        (declare (not safe))
                        (cons __tmp256112 '()))))
                 (declare (not safe))
                 (cons __tmp256130 __tmp256111))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp256110))))
                                           (declare (not safe))
                                           (cons __tmp256109 '()))))
                                    (declare (not safe))
                                    (cons __tmp256133 __tmp256108))))
                             (declare (not safe))
                             (cons '%#lambda __tmp256107))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256106 _stx246903_))))
                 (_generate-specializer-def246910_
                  (lambda (_id250156_
                           _specializer-id250157_
                           _specializer-impl250158_
                           _lifted-specializer-id250159_
                           _unchecked-specializer-impl250160_)
                    (let ((__tmp256134
                           (let ((__tmp256135
                                  (let ((__tmp256136
                                         (let ((__tmp256156
                                                (let ((__tmp256157
                                                       (let ((__tmp256158
                                                              (let ((__tmp256160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id250157_ '())))
                            (__tmp256159
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl250158_ '()))))
                        (declare (not safe))
                        (cons __tmp256160 __tmp256159))))
                 (declare (not safe))
                 (cons '%#define-values __tmp256158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp256157
                                                   _stx246903_)))
                                               (__tmp256137
                                                (let ((__tmp256144
                                                       (let ((__tmp256145
                                                              (let ((__tmp256146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256147
                                    (let ((__tmp256154
                                           (let ((__tmp256155
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp256155)))
                                          (__tmp256148
                                           (let ((__tmp256152
                                                  (let ((__tmp256153
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id250156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256153)))
                                                 (__tmp256149
                                                  (let ((__tmp256150
                                                         (let ((__tmp256151
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id250157_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp256151))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256150 '()))))
                                             (declare (not safe))
                                             (cons __tmp256152 __tmp256149))))
                                      (declare (not safe))
                                      (cons __tmp256154 __tmp256148))))
                               (declare (not safe))
                               (cons '%#call __tmp256147))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp256146 _stx246903_))))
                 (declare (not safe))
                 (cons __tmp256145 '())))
              (__tmp256138
               (if _lifted-specializer-id250159_
                   (let ((__tmp256139
                          (let ((__tmp256140
                                 (let ((__tmp256141
                                        (let ((__tmp256143
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id250159_
                                                       '())))
                                              (__tmp256142
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl250160_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp256143 __tmp256142))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp256141))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp256140 _stx246903_))))
                     (declare (not safe))
                     (cons __tmp256139 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp256144
                                                          __tmp256138))))
                                           (declare (not safe))
                                           (cons __tmp256156 __tmp256137))))
                                    (declare (not safe))
                                    (cons _stx246903_ __tmp256136))))
                             (declare (not safe))
                             (cons '%#begin __tmp256135))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256134 _stx246903_)))))
          (let* ((___stx254947254948_ _stx246903_)
                 (_g246913246933_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx254947254948_)))))
            (let ((___kont254949254950_
                   (lambda (_L246977_ _L246978_)
                     (let ((_method-calls246997_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs246998_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check246999_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check247000_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert247001_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty247002_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?247004_
                                 (lambda ()
                                   (if (let ((__tmp256161
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246997_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256161))
                                       (if (let ((__tmp256162
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246998_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256162))
                                           (if (let ((__tmp256163
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check246999_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp256163))
                                               (if (let ((__tmp256164
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check247000_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256164))
                                                   (let ((__tmp256165
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert247001_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp256165))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?247005_
                                 (lambda ()
                                   (let ((_$e250149_
                                          (let ((__tmp256166
                                                 (let ((__tmp256167
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check247000_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp256167))))
                                            (declare (not safe))
                                            (not __tmp256166))))
                                     (if _$e250149_
                                         _$e250149_
                                         (let ((__tmp256168
                                                (let ((__tmp256169
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert247001_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp256169))))
                                           (declare (not safe))
                                           (not __tmp256168))))))
                                (_lift-unchecked-specializer?247006_
                                 (lambda ()
                                   (if (let ((__tmp256170
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls246997_))))
                                         (declare (not safe))
                                         (fxzero? __tmp256170))
                                       (if (let ((__tmp256171
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs246998_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256171))
                                           (let ((__tmp256172
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check246999_))))
                                             (declare (not safe))
                                             (fxzero? __tmp256172))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L246977_))
                             (let* ((___stx254861254862_ _L246977_)
                                    (_g247519247537_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx254861254862_)))))
                               (let ((___kont254863254864_
                                      (lambda (_L247573_ _L247574_ _L247575_)
                                        (for-each
                                         (lambda (_g247590247592_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g247590247592_
                                              _L247575_
                                              _method-calls246997_
                                              _slot-refs246998_
                                              _class-type-check246999_
                                              _struct-type-check247000_
                                              _struct-type-assert247001_)))
                                         _L247573_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?247004_))
                                            _stx246903_
                                            (let* ((_specializer-id247601_
                                                    (let* ((_id247595_
                                                            (let ((__tmp256173
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L246978_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp256173 '"::specialize")))
                   (_specializer-id247598_
                    (let ((__tmp256174
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx246903_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id247595_ __tmp256174))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id247598_))
              _specializer-id247598_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id247608_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?247006_))
                                                        (let* ((_id247603_
                                                                (let ((__tmp256175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L246978_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp256175
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id247605_
                        (let ((__tmp256176
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx246903_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id247603_ __tmp256176))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id247605_))
                  _lifted-specializer-id247605_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t247610_
                                                    (let ((__tmp256177
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp256177)))
                                                   (_methods247612_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls246997_)))
                                                   (_$methods247616_
                                                    (map (lambda (_id247614_)
                                                           (let ((__tmp256178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id247614_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256178)))
                 _methods247612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256179_
                                                    (for-each
                                                     (lambda (_g247617247620_
                                                              _g247618247622_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls246997_
                                                          _g247617247620_
                                                          _g247618247622_)))
                                                     _methods247612_
                                                     _$methods247616_))
                                                   (_methods-bind247633_
                                                    (map (lambda (_g247625247628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247626247630_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind246905_
                      _$t247610_
                      _g247625247628_
                      _g247626247630_)))
                 _methods247612_
                 _$methods247616_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots247635_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs246998_)))
                                                   (_$slots247639_
                                                    (map (lambda (_id247637_)
                                                           (let ((__tmp256180
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id247637_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp256180)))
                 _slots247635_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256181_
                                                    (for-each
                                                     (lambda (_g247640247643_
                                                              _g247641247645_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs246998_
                                                          _g247640247643_
                                                          _g247641247645_)))
                                                     _slots247635_
                                                     _$slots247639_))
                                                   (_slots-bind247656_
                                                    (map (lambda (_g247648247651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247649247653_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind246906_
                      _$t247610_
                      _g247648247651_
                      _g247649247653_)))
                 _slots247635_
                 _$slots247639_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check247658_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check246999_)))
                                                   (_$class-check247661_
                                                    (map (lambda (_g256182_)
                                                           (let ((__tmp256183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256183)))
                 _class-check247658_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256184_
                                                    (for-each
                                                     (lambda (_g247662247665_
                                                              _g247663247667_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check246999_
                                                          _g247662247665_
                                                          _g247663247667_)))
                                                     _class-check247658_
                                                     _$class-check247661_))
                                                   (_class-check-bind247678_
                                                    (map (lambda (_g247670247673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247671247675_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind246907_
                      _$t247610_
                      _g247670247673_
                      _g247671247675_)))
                 _class-check247658_
                 _$class-check247661_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all247680_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check247000_
                                                       _struct-type-assert247001_)))
                                                   (_struct-check247682_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all247680_)))
                                                   (_$struct-check247685_
                                                    (map (lambda (_g256185_)
                                                           (let ((__tmp256186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp256186)))
                 _struct-check247682_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g256187_
                                                    (for-each
                                                     (lambda (_g247686247689_
                                                              _g247687247691_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all247680_
                                                          _g247686247689_
                                                          _g247687247691_)))
                                                     _struct-check247682_
                                                     _$struct-check247685_))
                                                   (_struct-check-bind247702_
                                                    (map (lambda (_g247694247697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g247695247699_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind246908_
                      _$t247610_
                      _g247694247697_
                      _g247695247699_)))
                 _struct-check247682_
                 _$struct-check247685_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl247713_
                                                    (lambda (_struct-type-check1247704_
                                                             _struct-type-check2247705_)
                                                      (let* ((_specializer-body247711_
                                                              (map (lambda (_g247706247708_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g247706247708_
                                _L247575_
                                _$t247610_
                                _method-calls246997_
                                _slot-refs246998_
                                _class-type-check246999_
                                _struct-type-check1247704_
                                _struct-type-check2247705_)))
                           _L247573_))
                     (__tmp256188
                      (let ((__tmp256189
                             (let ((__tmp256190
                                    (let ()
                                      (declare (not safe))
                                      (cons _L247575_ _L247574_))))
                               (declare (not safe))
                               (cons __tmp256190 _specializer-body247711_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp256189))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp256188 _stx246903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl247715_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl247713_
                                                       _struct-check-all247680_
                                                       _empty247002_)))
                                                   (_unchecked-specializer-impl247717_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?247005_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl247713_
                                                           _empty247002_
                                                           _struct-check-all247680_))
                                                        '#f))
                                                   (_specializer-impl247719_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl246909_
                                                       _$t247610_
                                                       _methods-bind247633_
                                                       _slots-bind247656_
                                                       _class-check-bind247678_
                                                       _struct-check-bind247702_
                                                       _specializer-impl247715_
                                                       _lifted-specializer-id247608_
                                                       _unchecked-specializer-impl247717_))))
                                              (let ((__tmp256192
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L246978_)))
                                                    (__tmp256191
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id247601_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp256192
                                                 '" => "
                                                 __tmp256191))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def246910_
                                                 _L246978_
                                                 _specializer-id247601_
                                                 _specializer-impl247719_
                                                 _lifted-specializer-id247608_
                                                 _unchecked-specializer-impl247717_))))))
                                     (___kont254865254866_
                                      (lambda () _stx246903_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx254861254862_))
                                     (let ((_e247524247549_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx254861254862_))))
                                       (let ((_tl247526247554_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e247524247549_)))
                                             (_hd247525247552_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e247524247549_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl247526247554_))
                                             (let ((_e247527247557_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl247526247554_))))
                                               (let ((_tl247529247562_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e247527247557_)))
                                                     (_hd247528247560_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e247527247557_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd247528247560_))
                                                     (let ((_e247530247565_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd247528247560_))))
                                                       (let ((_tl247532247570_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e247530247565_)))
                     (_hd247531247568_
                      (let () (declare (not safe)) (##car _e247530247565_))))
                 (___kont254863254864_
                  _tl247529247562_
                  _tl247532247570_
                  _hd247531247568_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont254865254866_))))
                                             (___kont254865254866_))))
                                     (___kont254865254866_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L246977_))
                                 (let* ((_g247725247744_
                                         (lambda (_g247726247741_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g247726247741_))))
                                        (_g247724248095_
                                         (lambda (_g247726247747_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g247726247747_))
                                               (let ((_e247728247749_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g247726247747_))))
                                                 (let ((_hd247729247752_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e247728247749_)))
                                                       (_tl247730247754_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e247728247749_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl247730247754_))
                                                       (let ((_g256193_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl247730247754_ '0))))
                 (begin
                   (let ((_g256194_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g256193_)
                                (##vector-length _g256193_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g256194_ 2)))
                         (error "Context expects 2 values" _g256194_)))
                   (let ((_target247731247757_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256193_ 0)))
                         (_tl247733247759_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g256193_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl247733247759_))
                         (letrec ((_loop247734247762_
                                   (lambda (_hd247732247765_
                                            _clause247738247767_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd247732247765_))
                                         (let ((_e247735247770_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd247732247765_))))
                                           (let ((_lp-hd247736247773_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e247735247770_)))
                                                 (_lp-tl247737247775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e247735247770_))))
                                             (let ((__tmp256195
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd247736247773_
                                                            _clause247738247767_))))
                                               (declare (not safe))
                                               (_loop247734247762_
                                                _lp-tl247737247775_
                                                __tmp256195))))
                                         (let ((_clause247739247778_
                                                (reverse _clause247738247767_)))
                                           ((lambda (_L247781_)
                                              (for-each
                                               (lambda (_clause247794_)
                                                 (let* ((___stx254887254888_
                                                         _clause247794_)
                                                        (_g247797247812_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx254887254888_)))))
                                                   (let ((___kont254889254890_
                                                          (lambda (_L247840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L247841_
                           _L247842_)
                    (for-each
                     (lambda (_g247857247859_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g247857247859_
                          _L247842_
                          _method-calls246997_
                          _slot-refs246998_
                          _class-type-check246999_
                          _struct-type-check247000_
                          _struct-type-assert247001_)))
                     _L247840_)))
                 (___kont254891254892_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx254887254888_))
                                                         (let ((_e247802247824_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx254887254888_))))
                   (let ((_tl247804247829_
                          (let ()
                            (declare (not safe))
                            (##cdr _e247802247824_)))
                         (_hd247803247827_
                          (let ()
                            (declare (not safe))
                            (##car _e247802247824_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd247803247827_))
                         (let ((_e247805247832_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd247803247827_))))
                           (let ((_tl247807247837_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e247805247832_)))
                                 (_hd247806247835_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e247805247832_))))
                             (___kont254889254890_
                              _tl247804247829_
                              _tl247807247837_
                              _hd247806247835_)))
                         (___kont254891254892_))))
                 (___kont254891254892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp256196
                                                      (lambda (_g247864247867_
                                                               _g247865247869_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g247864247867_
                                                                _g247865247869_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256196
                                                         '()
                                                         _L247781_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247004_))
                                                  _stx246903_
                                                  (let* ((_specializer-id247878_
                                                          (let* ((_id247872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256197
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246978_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256197 '"::specialize")))
                         (_specializer-id247875_
                          (let ((__tmp256198
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246903_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id247872_ __tmp256198))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id247875_))
                    _specializer-id247875_))
                 (_lifted-specializer-id247885_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247006_))
                      (let* ((_id247880_
                              (let ((__tmp256199
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246978_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256199
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id247882_
                              (let ((__tmp256200
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246903_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id247880_
                                 __tmp256200))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id247882_))
                        _lifted-specializer-id247882_)
                      '#f))
                 (_$t247887_
                  (let ((__tmp256201 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256201)))
                 (_methods247889_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246997_)))
                 (_$methods247893_
                  (map (lambda (_id247891_)
                         (let ((__tmp256202 (gensym _id247891_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256202)))
                       _methods247889_))
                 (_g256203_
                  (for-each
                   (lambda (_g247894247897_ _g247895247899_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246997_
                        _g247894247897_
                        _g247895247899_)))
                   _methods247889_
                   _$methods247893_))
                 (_methods-bind247910_
                  (map (lambda (_g247902247905_ _g247903247907_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246905_
                            _$t247887_
                            _g247902247905_
                            _g247903247907_)))
                       _methods247889_
                       _$methods247893_))
                 (_slots247912_
                  (let () (declare (not safe)) (hash-keys _slot-refs246998_)))
                 (_$slots247916_
                  (map (lambda (_id247914_)
                         (let ((__tmp256204 (gensym _id247914_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256204)))
                       _slots247912_))
                 (_g256205_
                  (for-each
                   (lambda (_g247917247920_ _g247918247922_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246998_
                        _g247917247920_
                        _g247918247922_)))
                   _slots247912_
                   _$slots247916_))
                 (_slots-bind247933_
                  (map (lambda (_g247925247928_ _g247926247930_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246906_
                            _$t247887_
                            _g247925247928_
                            _g247926247930_)))
                       _slots247912_
                       _$slots247916_))
                 (_class-check247935_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246999_)))
                 (_$class-check247938_
                  (map (lambda (_g256206_)
                         (let ((__tmp256207 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256207)))
                       _class-check247935_))
                 (_g256208_
                  (for-each
                   (lambda (_g247939247942_ _g247940247944_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246999_
                        _g247939247942_
                        _g247940247944_)))
                   _class-check247935_
                   _$class-check247938_))
                 (_class-check-bind247955_
                  (map (lambda (_g247947247950_ _g247948247952_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246907_
                            _$t247887_
                            _g247947247950_
                            _g247948247952_)))
                       _class-check247935_
                       _$class-check247938_))
                 (_struct-check-all247957_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247000_
                     _struct-type-assert247001_)))
                 (_struct-check247959_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all247957_)))
                 (_$struct-check247962_
                  (map (lambda (_g256209_)
                         (let ((__tmp256210 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256210)))
                       _struct-check247959_))
                 (_g256211_
                  (for-each
                   (lambda (_g247963247966_ _g247964247968_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all247957_
                        _g247963247966_
                        _g247964247968_)))
                   _struct-check247959_
                   _$struct-check247962_))
                 (_struct-check-bind247979_
                  (map (lambda (_g247971247974_ _g247972247976_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246908_
                            _$t247887_
                            _g247971247974_
                            _g247972247976_)))
                       _struct-check247959_
                       _$struct-check247962_))
                 (_make-specializer-impl248086_
                  (lambda (_struct-type-check1247981_
                           _struct-type-check2247982_)
                    (let* ((_specializer-clauses248084_
                            (map (lambda (_clause247984_)
                                   (let* ((___stx254907254908_ _clause247984_)
                                          (_g247987248002_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx254907254908_)))))
                                     (let ((___kont254909254910_
                                            (lambda (_L248030_
                                                     _L248031_
                                                     _L248032_)
                                              (let* ((_body248072_
                                                      (map (lambda (_g248067248069_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g248067248069_
                        _L248032_
                        _$t247887_
                        _method-calls246997_
                        _slot-refs246998_
                        _class-type-check246999_
                        _struct-type-check1247981_
                        _struct-type-check2247982_)))
                   _L248030_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp256212
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L248032_
                                                              _L248031_))))
                                                (declare (not safe))
                                                (cons __tmp256212
                                                      _body248072_))))
                                           (___kont254911254912_
                                            (lambda () _clause247984_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx254907254908_))
                                           (let ((_e247992248014_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx254907254908_))))
                                             (let ((_tl247994248019_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e247992248014_)))
                                                   (_hd247993248017_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e247992248014_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd247993248017_))
                                                   (let ((_e247995248022_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd247993248017_))))
                                                     (let ((_tl247997248027_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e247995248022_)))
                                                           (_hd247996248025_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e247995248022_))))
                                                       (___kont254909254910_
                                                        _tl247994248019_
                                                        _tl247997248027_
                                                        _hd247996248025_)))
                                                   (___kont254911254912_))))
                                           (___kont254911254912_)))))
                                 (let ((__tmp256213
                                        (lambda (_g248076248079_
                                                 _g248077248081_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g248076248079_
                                                  _g248077248081_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp256213 '() _L247781_))))
                           (__tmp256214
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses248084_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256214 _stx246903_))))
                 (_specializer-impl248088_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl248086_
                     _struct-check-all247957_
                     _empty247002_)))
                 (_unchecked-specializer-impl248090_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247005_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl248086_
                         _empty247002_
                         _struct-check-all247957_))
                      '#f))
                 (_specializer-impl248092_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246909_
                     _$t247887_
                     _methods-bind247910_
                     _slots-bind247933_
                     _class-check-bind247955_
                     _struct-check-bind247979_
                     _specializer-impl248088_
                     _lifted-specializer-id247885_
                     _unchecked-specializer-impl248090_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256216
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246978_)))
                                                          (__tmp256215
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id247878_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256216
                                                       '" => "
                                                       __tmp256215))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246910_
                                                       _L246978_
                                                       _specializer-id247878_
                                                       _specializer-impl248092_
                                                       _lifted-specializer-id247885_
                                                       _unchecked-specializer-impl248090_)))))
                                            _clause247739247778_))))))
                           (let ()
                             (declare (not safe))
                             (_loop247734247762_ _target247731247757_ '())))
                         (let ()
                           (declare (not safe))
                           (_g247725247744_ _g247726247747_))))))
               (let ()
                 (declare (not safe))
                 (_g247725247744_ _g247726247747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g247725247744_
                                                  _g247726247747_))))))
                                   (declare (not safe))
                                   (_g247724248095_ _L246977_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L246977_))
                                     (let* ((_g248098248128_
                                             (lambda (_g248099248125_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g248099248125_))))
                                            (_g248097248816_
                                             (lambda (_g248099248131_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g248099248131_))
                                                   (let ((_e248103248133_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g248099248131_))))
                                                     (let ((_hd248104248136_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248103248133_)))
                                                           (_tl248105248138_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248103248133_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl248105248138_))
                                                           (let ((_e248106248141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl248105248138_))))
                     (let ((_hd248107248144_
                            (let ()
                              (declare (not safe))
                              (##car _e248106248141_)))
                           (_tl248108248146_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248106248141_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248107248144_))
                           (let ((_e248109248149_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248107248144_))))
                             (let ((_hd248110248152_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248109248149_)))
                                   (_tl248111248154_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248109248149_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248110248152_))
                                   (let ((_e248112248157_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248110248152_))))
                                     (let ((_hd248113248160_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248112248157_)))
                                           (_tl248114248162_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248112248157_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd248113248160_))
                                           (let ((_e248115248165_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd248113248160_))))
                                             (let ((_hd248116248168_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248115248165_)))
                                                   (_tl248117248170_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248115248165_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248117248170_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl248114248162_))
                                                       (let ((_e248118248173_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl248114248162_))))
                 (let ((_hd248119248176_
                        (let () (declare (not safe)) (##car _e248118248173_)))
                       (_tl248120248178_
                        (let () (declare (not safe)) (##cdr _e248118248173_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248120248178_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl248111248154_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248108248146_))
                               (let ((_e248121248181_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248108248146_))))
                                 (let ((_hd248122248184_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248121248181_)))
                                       (_tl248123248186_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248121248181_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248123248186_))
                                       ((lambda (_L248189_ _L248190_ _L248191_)
                                          (let* ((_g248214248232_
                                                  (lambda (_g248215248229_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248215248229_))))
                                                 (_g248213248283_
                                                  (lambda (_g248215248235_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248215248235_))
                                                        (let ((_e248219248237_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248215248235_))))
                  (let ((_hd248220248240_
                         (let () (declare (not safe)) (##car _e248219248237_)))
                        (_tl248221248242_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248219248237_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl248221248242_))
                        (let ((_e248222248245_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl248221248242_))))
                          (let ((_hd248223248248_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e248222248245_)))
                                (_tl248224248250_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e248222248245_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd248223248248_))
                                (let ((_e248225248253_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd248223248248_))))
                                  (let ((_hd248226248256_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248225248253_)))
                                        (_tl248227248258_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248225248253_))))
                                    ((lambda (_L248261_ _L248262_ _L248263_)
                                       (for-each
                                        (lambda (_g248278248280_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g248278248280_
                                             _L248263_
                                             _method-calls246997_
                                             _slot-refs246998_
                                             _class-type-check246999_
                                             _struct-type-check247000_
                                             _struct-type-assert247001_)))
                                        _L248261_))
                                     _tl248224248250_
                                     _tl248227248258_
                                     _hd248226248256_)))
                                (let ()
                                  (declare (not safe))
                                  (_g248214248232_ _g248215248235_)))))
                        (let ()
                          (declare (not safe))
                          (_g248214248232_ _g248215248235_)))))
                (let ()
                  (declare (not safe))
                  (_g248214248232_ _g248215248235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248213248283_ _L248190_))
                                          (let* ((_g248286248305_
                                                  (lambda (_g248287248302_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g248287248302_))))
                                                 (_g248285248424_
                                                  (lambda (_g248287248308_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g248287248308_))
                                                        (let ((_e248289248310_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g248287248308_))))
                  (let ((_hd248290248313_
                         (let () (declare (not safe)) (##car _e248289248310_)))
                        (_tl248291248315_
                         (let ()
                           (declare (not safe))
                           (##cdr _e248289248310_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl248291248315_))
                        (let ((_g256217_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl248291248315_
                                  '0))))
                          (begin
                            (let ((_g256218_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g256217_)
                                         (##vector-length _g256217_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g256218_ 2)))
                                  (error "Context expects 2 values"
                                         _g256218_)))
                            (let ((_target248292248318_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256217_ 0)))
                                  (_tl248294248320_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g256217_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl248294248320_))
                                  (letrec ((_loop248295248323_
                                            (lambda (_hd248293248326_
                                                     _clause248299248328_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd248293248326_))
                                                  (let ((_e248296248331_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd248293248326_))))
                                                    (let ((_lp-hd248297248334_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e248296248331_)))
                                                          (_lp-tl248298248336_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e248296248331_))))
                                                      (let ((__tmp256219
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd248297248334_ _clause248299248328_))))
                (declare (not safe))
                (_loop248295248323_ _lp-tl248298248336_ __tmp256219))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause248300248339_
                                                         (reverse _clause248299248328_)))
                                                    ((lambda (_L248342_)
                                                       (for-each
                                                        (lambda (_clause248355_)
                                                          (let* ((_g248357248372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g248358248369_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g248358248369_))))
                         (_g248356248414_
                          (lambda (_g248358248375_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g248358248375_))
                                (let ((_e248362248377_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g248358248375_))))
                                  (let ((_hd248363248380_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e248362248377_)))
                                        (_tl248364248382_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e248362248377_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd248363248380_))
                                        (let ((_e248365248385_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd248363248380_))))
                                          (let ((_hd248366248388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e248365248385_)))
                                                (_tl248367248390_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e248365248385_))))
                                            ((lambda (_L248393_
                                                      _L248394_
                                                      _L248395_)
                                               (for-each
                                                (lambda (_g248409248411_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g248409248411_
                                                     _L248395_
                                                     _method-calls246997_
                                                     _slot-refs246998_
                                                     _class-type-check246999_
                                                     _struct-type-check247000_
                                                     _struct-type-assert247001_)))
                                                _L248393_))
                                             _tl248364248382_
                                             _tl248367248390_
                                             _hd248366248388_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g248357248372_ _g248358248375_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g248357248372_ _g248358248375_))))))
                    (declare (not safe))
                    (_g248356248414_ _clause248355_)))
                (let ((__tmp256220
                       (lambda (_g248416248419_ _g248417248421_)
                         (let ()
                           (declare (not safe))
                           (cons _g248416248419_ _g248417248421_)))))
                  (declare (not safe))
                  (foldr1 __tmp256220 '() _L248342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause248300248339_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop248295248323_
                                       _target248292248318_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g248286248305_ _g248287248308_))))))
                        (let ()
                          (declare (not safe))
                          (_g248286248305_ _g248287248308_)))))
                (let ()
                  (declare (not safe))
                  (_g248286248305_ _g248287248308_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g248285248424_ _L248189_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?247004_))
                                              _stx246903_
                                              (let* ((_specializer-id248433_
                                                      (let* ((_id248427_
                                                              (let ((__tmp256221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L246978_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp256221 '"::specialize")))
                     (_specializer-id248430_
                      (let ((__tmp256222
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx246903_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id248427_ __tmp256222))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id248430_))
                _specializer-id248430_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id248440_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?247006_))
                                                          (let* ((_id248435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256223
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246978_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp256223
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id248437_
                          (let ((__tmp256224
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246903_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id248435_ __tmp256224))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id248437_))
                    _lifted-specializer-id248437_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t248442_
                                                      (let ((__tmp256225
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp256225)))
                                                     (_methods248444_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls246997_)))
                                                     (_$methods248448_
                                                      (map (lambda (_id248446_)
                                                             (let ((__tmp256226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id248446_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256226)))
                   _methods248444_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256227_
                                                      (for-each
                                                       (lambda (_g248449248452_
                                                                _g248450248454_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls246997_
                                                            _g248449248452_
                                                            _g248450248454_)))
                                                       _methods248444_
                                                       _$methods248448_))
                                                     (_methods-bind248465_
                                                      (map (lambda (_g248457248460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g248458248462_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind246905_
                        _$t248442_
                        _g248457248460_
                        _g248458248462_)))
                   _methods248444_
                   _$methods248448_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots248467_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs246998_)))
                                                     (_$slots248471_
                                                      (map (lambda (_id248469_)
                                                             (let ((__tmp256228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id248469_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp256228)))
                   _slots248467_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256229_
                                                      (for-each
                                                       (lambda (_g248472248475_
                                                                _g248473248477_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs246998_
                                                            _g248472248475_
                                                            _g248473248477_)))
                                                       _slots248467_
                                                       _$slots248471_))
                                                     (_slots-bind248488_
                                                      (map (lambda (_g248480248483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g248481248485_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind246906_
                        _$t248442_
                        _g248480248483_
                        _g248481248485_)))
                   _slots248467_
                   _$slots248471_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check248490_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check246999_)))
                                                     (_$class-check248493_
                                                      (map (lambda (_g256230_)
                                                             (let ((__tmp256231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256231)))
                   _class-check248490_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256232_
                                                      (for-each
                                                       (lambda (_g248494248497_
                                                                _g248495248499_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check246999_
                                                            _g248494248497_
                                                            _g248495248499_)))
                                                       _class-check248490_
                                                       _$class-check248493_))
                                                     (_class-check-bind248510_
                                                      (map (lambda (_g248502248505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g248503248507_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind246907_
                        _$t248442_
                        _g248502248505_
                        _g248503248507_)))
                   _class-check248490_
                   _$class-check248493_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all248512_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check247000_
                                                         _struct-type-assert247001_)))
                                                     (_struct-check248514_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all248512_)))
                                                     (_$struct-check248517_
                                                      (map (lambda (_g256233_)
                                                             (let ((__tmp256234
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp256234)))
                   _struct-check248514_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g256235_
                                                      (for-each
                                                       (lambda (_g248518248521_
                                                                _g248519248523_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all248512_
                                                            _g248518248521_
                                                            _g248519248523_)))
                                                       _struct-check248514_
                                                       _$struct-check248517_))
                                                     (_struct-check-bind248534_
                                                      (map (lambda (_g248526248529_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g248527248531_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind246908_
                        _$t248442_
                        _g248526248529_
                        _g248527248531_)))
                   _struct-check248514_
                   _$struct-check248517_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr248633_
                                                      (lambda (_struct-type-check1248536_
                                                               _struct-type-check2248537_)
                                                        (let* ((_g248539248557_
                                                                (lambda (_g248540248554_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g248540248554_))))
                       (_g248538248630_
                        (lambda (_g248540248560_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g248540248560_))
                              (let ((_e248544248562_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g248540248560_))))
                                (let ((_hd248545248565_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e248544248562_)))
                                      (_tl248546248567_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e248544248562_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl248546248567_))
                                      (let ((_e248547248570_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl248546248567_))))
                                        (let ((_hd248548248573_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e248547248570_)))
                                              (_tl248549248575_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e248547248570_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd248548248573_))
                                              (let ((_e248550248578_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd248548248573_))))
                                                (let ((_hd248551248581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e248550248578_)))
                                                      (_tl248552248583_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e248550248578_))))
                                                  ((lambda (_L248586_
                                                            _L248587_
                                                            _L248588_)
                                                     (let* ((_body248628_
                                                             (map (lambda (_g248623248625_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g248623248625_
                               _L248588_
                               _$t248442_
                               _method-calls246997_
                               _slot-refs246998_
                               _class-type-check246999_
                               _struct-type-check1248536_
                               _struct-type-check2248537_)))
                          _L248586_))
                    (__tmp256236
                     (let ((__tmp256237
                            (let ((__tmp256238
                                   (let ()
                                     (declare (not safe))
                                     (cons _L248588_ _L248587_))))
                              (declare (not safe))
                              (cons __tmp256238 _body248628_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp256237))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp256236 _L248190_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl248549248575_
                                                   _tl248552248583_
                                                   _hd248551248581_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g248539248557_
                                                 _g248540248560_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248539248557_ _g248540248560_)))))
                              (let ()
                                (declare (not safe))
                                (_g248539248557_ _g248540248560_))))))
                  (declare (not safe))
                  (_g248538248630_ _L248190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr248794_
                                                      (lambda (_struct-type-check1248635_
                                                               _struct-type-check2248636_)
                                                        (let* ((_g248638248657_
                                                                (lambda (_g248639248654_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g248639248654_))))
                       (_g248637248791_
                        (lambda (_g248639248660_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g248639248660_))
                              (let ((_e248641248662_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g248639248660_))))
                                (let ((_hd248642248665_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e248641248662_)))
                                      (_tl248643248667_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e248641248662_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl248643248667_))
                                      (let ((_g256239_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl248643248667_
                                                '0))))
                                        (begin
                                          (let ((_g256240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g256239_)
                                                       (##vector-length
                                                        _g256239_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g256240_ 2)))
                                                (error "Context expects 2 values"
                                                       _g256240_)))
                                          (let ((_target248644248670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g256239_ 0)))
                                                (_tl248646248672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g256239_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl248646248672_))
                                                (letrec ((_loop248647248675_
                                                          (lambda (_hd248645248678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause248651248680_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd248645248678_))
                        (let ((_e248648248683_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd248645248678_))))
                          (let ((_lp-hd248649248686_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e248648248683_)))
                                (_lp-tl248650248688_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e248648248683_))))
                            (let ((__tmp256241
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd248649248686_
                                           _clause248651248680_))))
                              (declare (not safe))
                              (_loop248647248675_
                               _lp-tl248650248688_
                               __tmp256241))))
                        (let ((_clause248652248691_
                               (reverse _clause248651248680_)))
                          ((lambda (_L248694_)
                             (let* ((_clauses248789_
                                     (map (lambda (_clause248709_)
                                            (let* ((___stx254927254928_
                                                    _clause248709_)
                                                   (_g248712248727_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx254927254928_)))))
                                              (let ((___kont254929254930_
                                                     (lambda (_L248755_
                                                              _L248756_
                                                              _L248757_)
                                                       (let* ((_body248777_
                                                               (map (lambda (_g248772248774_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g248772248774_
                                 _L248757_
                                 _$t248442_
                                 _method-calls246997_
                                 _slot-refs246998_
                                 _class-type-check246999_
                                 _struct-type-check1248635_
                                 _struct-type-check2248636_)))
                            _L248755_))
                      (__tmp256242
                       (let ()
                         (declare (not safe))
                         (cons _L248757_ _L248756_))))
                 (declare (not safe))
                 (cons __tmp256242 _body248777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254931254932_
                                                     (lambda ()
                                                       _clause248709_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx254927254928_))
                                                    (let ((_e248717248739_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx254927254928_))))
                                                      (let ((_tl248719248744_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e248717248739_)))
                    (_hd248718248742_
                     (let () (declare (not safe)) (##car _e248717248739_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd248718248742_))
                    (let ((_e248720248747_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd248718248742_))))
                      (let ((_tl248722248752_
                             (let ()
                               (declare (not safe))
                               (##cdr _e248720248747_)))
                            (_hd248721248750_
                             (let ()
                               (declare (not safe))
                               (##car _e248720248747_))))
                        (___kont254929254930_
                         _tl248719248744_
                         _tl248722248752_
                         _hd248721248750_)))
                    (___kont254931254932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont254931254932_)))))
                                          (let ((__tmp256243
                                                 (lambda (_g248781248784_
                                                          _g248782248786_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g248781248784_
                                                           _g248782248786_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp256243
                                                    '()
                                                    _L248694_))))
                                    (__tmp256244
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses248789_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp256244 _L248189_)))
                           _clause248652248691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop248647248675_
                                                     _target248644248670_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g248638248657_
                                                   _g248639248660_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g248638248657_ _g248639248660_)))))
                              (let ()
                                (declare (not safe))
                                (_g248638248657_ _g248639248660_))))))
                  (declare (not safe))
                  (_g248637248791_ _L248189_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl248799_
                                                      (lambda (_specializer-lambda-expr248796_
                                                               _specializer-case-lambda-expr248797_)
                                                        (let ((__tmp256245
                                                               (let ((__tmp256246
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp256248
                                     (let ((__tmp256249
                                            (let ((__tmp256251
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L248191_ '())))
                                                  (__tmp256250
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr248796_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp256251 __tmp256250))))
                                       (declare (not safe))
                                       (cons __tmp256249 '())))
                                    (__tmp256247
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr248797_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp256248 __tmp256247))))
                         (declare (not safe))
                         (cons '%#let-values __tmp256246))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp256245 _stx246903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr248801_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr248633_
                                                         _struct-check-all248512_
                                                         _empty247002_)))
                                                     (_specializer-case-lambda-expr248803_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr248794_
                                                         _struct-check-all248512_
                                                         _empty247002_)))
                                                     (_specializer-impl248805_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl248799_
                                                         _specializer-lambda-expr248801_
                                                         _specializer-case-lambda-expr248803_)))
                                                     (_unchecked-specializer-lambda-expr248807_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247005_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr248633_
                                                             _empty247002_
                                                             _struct-check-all248512_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr248809_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247005_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr248794_
                                                             _empty247002_
                                                             _struct-check-all248512_))
                                                          '#f))
                                                     (_unchecked-specializer-impl248811_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?247005_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl248799_
                                                             _unchecked-specializer-lambda-expr248807_
                                                             _unchecked-specializer-case-lambda-expr248809_))
                                                          '#f))
                                                     (_specializer-impl248813_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl246909_
                                                         _$t248442_
                                                         _methods-bind248465_
                                                         _slots-bind248488_
                                                         _class-check-bind248510_
                                                         _struct-check-bind248534_
                                                         _specializer-impl248805_
                                                         _lifted-specializer-id248440_
                                                         _unchecked-specializer-impl248811_))))
                                                (let ((__tmp256253
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L246978_)))
                                                      (__tmp256252
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id248433_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp256253
                                                   '" => "
                                                   __tmp256252))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def246910_
                                                   _L246978_
                                                   _specializer-id248433_
                                                   _specializer-impl248813_
                                                   _lifted-specializer-id248440_
                                                   _unchecked-specializer-impl248811_)))))
                                        _hd248122248184_
                                        _hd248119248176_
                                        _hd248116248168_)
                                       (let ()
                                         (declare (not safe))
                                         (_g248098248128_ _g248099248131_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248098248128_ _g248099248131_)))
                           (let ()
                             (declare (not safe))
                             (_g248098248128_ _g248099248131_)))
                       (let ()
                         (declare (not safe))
                         (_g248098248128_ _g248099248131_)))))
               (let () (declare (not safe)) (_g248098248128_ _g248099248131_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248098248128_
                                                      _g248099248131_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248098248128_
                                              _g248099248131_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248098248128_ _g248099248131_)))))
                           (let ()
                             (declare (not safe))
                             (_g248098248128_ _g248099248131_)))))
                   (let ()
                     (declare (not safe))
                     (_g248098248128_ _g248099248131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248098248128_
                                                      _g248099248131_))))))
                                       (declare (not safe))
                                       (_g248097248816_ _L246977_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L246977_))
                                         (let* ((_g248819248872_
                                                 (lambda (_g248820248869_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g248820248869_))))
                                                (_g248818250144_
                                                 (lambda (_g248820248875_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g248820248875_))
                                                       (let ((_e248826248877_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g248820248875_))))
                 (let ((_hd248827248880_
                        (let () (declare (not safe)) (##car _e248826248877_)))
                       (_tl248828248882_
                        (let () (declare (not safe)) (##cdr _e248826248877_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd248827248880_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd248827248880_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl248828248882_))
                               (let ((_e248829248885_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl248828248882_))))
                                 (let ((_hd248830248888_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e248829248885_)))
                                       (_tl248831248890_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e248829248885_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd248830248888_))
                                       (let ((_e248832248893_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd248830248888_))))
                                         (let ((_hd248833248896_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e248832248893_)))
                                               (_tl248834248898_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e248832248893_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd248833248896_))
                                               (let ((_e248835248901_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd248833248896_))))
                                                 (let ((_hd248836248904_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248835248901_)))
                                                       (_tl248837248906_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248835248901_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd248836248904_))
                                                       (let ((_e248838248909_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd248836248904_))))
                 (let ((_hd248839248912_
                        (let () (declare (not safe)) (##car _e248838248909_)))
                       (_tl248840248914_
                        (let () (declare (not safe)) (##cdr _e248838248909_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl248840248914_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl248837248906_))
                           (let ((_e248841248917_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl248837248906_))))
                             (let ((_hd248842248920_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248841248917_)))
                                   (_tl248843248922_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248841248917_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248842248920_))
                                   (let ((_e248844248925_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248842248920_))))
                                     (let ((_hd248845248928_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248844248925_)))
                                           (_tl248846248930_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248844248925_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd248845248928_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd248845248928_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl248846248930_))
                                                   (let ((_e248847248933_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl248846248930_))))
                                                     (let ((_hd248848248936_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e248847248933_)))
                                                           (_tl248849248938_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e248847248933_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd248848248936_))
                                                           (let ((_e248850248941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd248848248936_))))
                     (let ((_hd248851248944_
                            (let ()
                              (declare (not safe))
                              (##car _e248850248941_)))
                           (_tl248852248946_
                            (let ()
                              (declare (not safe))
                              (##cdr _e248850248941_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd248851248944_))
                           (let ((_e248853248949_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd248851248944_))))
                             (let ((_hd248854248952_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e248853248949_)))
                                   (_tl248855248954_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e248853248949_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd248854248952_))
                                   (let ((_e248856248957_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd248854248952_))))
                                     (let ((_hd248857248960_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e248856248957_)))
                                           (_tl248858248962_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e248856248957_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl248858248962_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl248855248954_))
                                               (let ((_e248859248965_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl248855248954_))))
                                                 (let ((_hd248860248968_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e248859248965_)))
                                                       (_tl248861248970_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e248859248965_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl248861248970_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl248852248946_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl248849248938_))
                       (let ((_e248862248973_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl248849248938_))))
                         (let ((_hd248863248976_
                                (let ()
                                  (declare (not safe))
                                  (##car _e248862248973_)))
                               (_tl248864248978_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e248862248973_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl248864248978_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl248843248922_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl248834248898_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl248831248890_))
                                           (let ((_e248865248981_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl248831248890_))))
                                             (let ((_hd248866248984_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e248865248981_)))
                                                   (_tl248867248986_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e248865248981_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl248867248986_))
                                                   ((lambda (_L248989_
                                                             _L248990_
                                                             _L248991_
                                                             _L248992_
                                                             _L248993_)
                                                      (let* ((_g249032249094_
                                                              (lambda (_g249033249091_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g249033249091_))))
                     (_g249031250141_
                      (lambda (_g249033249097_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g249033249097_))
                            (let ((_e249039249099_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g249033249097_))))
                              (let ((_hd249040249102_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249039249099_)))
                                    (_tl249041249104_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249039249099_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd249040249102_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd249040249102_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl249041249104_))
                                            (let ((_e249042249107_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl249041249104_))))
                                              (let ((_hd249043249110_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249042249107_)))
                                                    (_tl249044249112_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249042249107_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249044249112_))
                                                    (let ((_e249045249115_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249044249112_))))
                                                      (let ((_hd249046249118_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249045249115_)))
                    (_tl249047249120_
                     (let () (declare (not safe)) (##cdr _e249045249115_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd249046249118_))
                    (let ((_e249048249123_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd249046249118_))))
                      (let ((_hd249049249126_
                             (let ()
                               (declare (not safe))
                               (##car _e249048249123_)))
                            (_tl249050249128_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249048249123_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd249049249126_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd249049249126_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl249050249128_))
                                    (let ((_e249051249131_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl249050249128_))))
                                      (let ((_hd249052249134_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249051249131_)))
                                            (_tl249053249136_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249051249131_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd249052249134_))
                                            (let ((_e249054249139_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd249052249134_))))
                                              (let ((_hd249055249142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e249054249139_)))
                                                    (_tl249056249144_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e249054249139_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd249055249142_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd249055249142_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl249056249144_))
                                                            (let ((_e249057249147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl249056249144_))))
                      (let ((_hd249058249150_
                             (let ()
                               (declare (not safe))
                               (##car _e249057249147_)))
                            (_tl249059249152_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249057249147_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249059249152_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl249053249136_))
                                (let ((_e249060249155_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl249053249136_))))
                                  (let ((_hd249061249158_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e249060249155_)))
                                        (_tl249062249160_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e249060249155_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd249061249158_))
                                        (let ((_e249063249163_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd249061249158_))))
                                          (let ((_hd249064249166_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e249063249163_)))
                                                (_tl249065249168_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e249063249163_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd249064249166_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd249064249166_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl249065249168_))
                                                        (let ((_e249066249171_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl249065249168_))))
                  (let ((_hd249067249174_
                         (let () (declare (not safe)) (##car _e249066249171_)))
                        (_tl249068249176_
                         (let ()
                           (declare (not safe))
                           (##cdr _e249066249171_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl249068249176_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249062249160_))
                            (let ((_e249069249179_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249062249160_))))
                              (let ((_hd249070249182_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249069249179_)))
                                    (_tl249071249184_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249069249179_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd249070249182_))
                                    (let ((_e249072249187_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd249070249182_))))
                                      (let ((_hd249073249190_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249072249187_)))
                                            (_tl249074249192_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249072249187_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd249073249190_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd249073249190_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl249074249192_))
                                                    (let ((_e249075249195_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl249074249192_))))
                                                      (let ((_hd249076249198_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e249075249195_)))
                    (_tl249077249200_
                     (let () (declare (not safe)) (##cdr _e249075249195_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl249077249200_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl249071249184_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl249071249184_))
                                  '1)
                            (let ((_g256254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl249071249184_
                                      '1))))
                              (begin
                                (let ((_g256255_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256254_)
                                             (##vector-length _g256254_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256255_ 2)))
                                      (error "Context expects 2 values"
                                             _g256255_)))
                                (let ((_target249078249203_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256254_ 0)))
                                      (_tl249080249205_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256254_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl249080249205_))
                                      (let ((_e249087249208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl249080249205_))))
                                        (let ((_hd249088249211_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e249087249208_)))
                                              (_tl249089249213_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e249087249208_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl249089249213_))
                                              (letrec ((_loop249081249216_
                                                        (lambda (_hd249079249219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref249085249221_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd249079249219_))
                      (let ((_e249082249224_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd249079249219_))))
                        (let ((_lp-hd249083249227_
                               (let ()
                                 (declare (not safe))
                                 (##car _e249082249224_)))
                              (_lp-tl249084249229_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e249082249224_))))
                          (let ((__tmp256256
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd249083249227_
                                         _kw-ref249085249221_))))
                            (declare (not safe))
                            (_loop249081249216_
                             _lp-tl249084249229_
                             __tmp256256))))
                      (let ((_kw-ref249086249232_
                             (reverse _kw-ref249085249221_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl249047249120_))
                            ((lambda (_L249235_
                                      _L249236_
                                      _L249237_
                                      _L249238_
                                      _L249239_)
                               (let* ((_kw-count249290_
                                       (length (let ((__tmp256257
                                                      (lambda (_g249282249285_
                                                               _g249283249287_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g249282249285_
                                                                _g249283249287_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp256257
                                                         '()
                                                         _L249236_))))
                                      (_self-index249292_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count249290_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L248991_))
                                     (let* ((_g249295249309_
                                             (lambda (_g249296249306_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g249296249306_))))
                                            (_g249294249480_
                                             (lambda (_g249296249312_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g249296249312_))
                                                   (let ((_e249299249314_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g249296249312_))))
                                                     (let ((_hd249300249317_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e249299249314_)))
                                                           (_tl249301249319_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e249299249314_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl249301249319_))
                                                           (let ((_e249302249322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl249301249319_))))
                     (let ((_hd249303249325_
                            (let ()
                              (declare (not safe))
                              (##car _e249302249322_)))
                           (_tl249304249327_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249302249322_))))
                       ((lambda (_L249330_ _L249331_)
                          (let ((_self249347_
                                 (list-ref _L249331_ _self-index249292_)))
                            (for-each
                             (lambda (_g249348249350_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g249348249350_
                                  _self249347_
                                  _method-calls246997_
                                  _slot-refs246998_
                                  _class-type-check246999_
                                  _struct-type-check247000_
                                  _struct-type-assert247001_)))
                             _L249330_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?247004_))
                                _stx246903_
                                (let* ((_specializer-id249359_
                                        (let* ((_id249353_
                                                (let ((__tmp256258
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L246978_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp256258
                                                   '"::specialize")))
                                               (_specializer-id249356_
                                                (let ((__tmp256259
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx246903_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id249353_
                                                   __tmp256259))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id249356_))
                                          _specializer-id249356_))
                                       (_lifted-specializer-id249366_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?247006_))
                                            (let* ((_id249361_
                                                    (let ((__tmp256260
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246978_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp256260
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id249363_
                                                    (let ((__tmp256261
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx246903_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id249361_
                                                       __tmp256261))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id249363_))
                                              _lifted-specializer-id249363_)
                                            '#f))
                                       (_$t249368_
                                        (let ((__tmp256262 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp256262)))
                                       (_methods249370_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls246997_)))
                                       (_$methods249374_
                                        (map (lambda (_id249372_)
                                               (let ((__tmp256263
                                                      (gensym _id249372_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256263)))
                                             _methods249370_))
                                       (_g256264_
                                        (for-each
                                         (lambda (_g249375249378_
                                                  _g249376249380_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls246997_
                                              _g249375249378_
                                              _g249376249380_)))
                                         _methods249370_
                                         _$methods249374_))
                                       (_methods-bind249391_
                                        (map (lambda (_g249383249386_
                                                      _g249384249388_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind246905_
                                                  _$t249368_
                                                  _g249383249386_
                                                  _g249384249388_)))
                                             _methods249370_
                                             _$methods249374_))
                                       (_slots249393_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs246998_)))
                                       (_$slots249397_
                                        (map (lambda (_id249395_)
                                               (let ((__tmp256265
                                                      (gensym _id249395_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp256265)))
                                             _slots249393_))
                                       (_g256266_
                                        (for-each
                                         (lambda (_g249398249401_
                                                  _g249399249403_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs246998_
                                              _g249398249401_
                                              _g249399249403_)))
                                         _slots249393_
                                         _$slots249397_))
                                       (_slots-bind249414_
                                        (map (lambda (_g249406249409_
                                                      _g249407249411_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind246906_
                                                  _$t249368_
                                                  _g249406249409_
                                                  _g249407249411_)))
                                             _slots249393_
                                             _$slots249397_))
                                       (_class-check249416_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check246999_)))
                                       (_$class-check249419_
                                        (map (lambda (_g256267_)
                                               (let ((__tmp256268
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256268)))
                                             _class-check249416_))
                                       (_g256269_
                                        (for-each
                                         (lambda (_g249420249423_
                                                  _g249421249425_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check246999_
                                              _g249420249423_
                                              _g249421249425_)))
                                         _class-check249416_
                                         _$class-check249419_))
                                       (_class-check-bind249436_
                                        (map (lambda (_g249428249431_
                                                      _g249429249433_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind246907_
                                                  _$t249368_
                                                  _g249428249431_
                                                  _g249429249433_)))
                                             _class-check249416_
                                             _$class-check249419_))
                                       (_struct-check-all249438_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check247000_
                                           _struct-type-assert247001_)))
                                       (_struct-check249440_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all249438_)))
                                       (_$struct-check249443_
                                        (map (lambda (_g256270_)
                                               (let ((__tmp256271
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp256271)))
                                             _struct-check249440_))
                                       (_g256272_
                                        (for-each
                                         (lambda (_g249444249447_
                                                  _g249445249449_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all249438_
                                              _g249444249447_
                                              _g249445249449_)))
                                         _struct-check249440_
                                         _$struct-check249443_))
                                       (_struct-check-bind249460_
                                        (map (lambda (_g249452249455_
                                                      _g249453249457_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind246908_
                                                  _$t249368_
                                                  _g249452249455_
                                                  _g249453249457_)))
                                             _struct-check249440_
                                             _$struct-check249443_))
                                       (_make-specializer-impl249471_
                                        (lambda (_struct-type-check1249462_
                                                 _struct-type-check2249463_)
                                          (let* ((_specializer-body249469_
                                                  (map (lambda (_g249464249466_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g249464249466_
                                                            _self249347_
                                                            _$t249368_
                                                            _method-calls246997_
                                                            _slot-refs246998_
                                                            _class-type-check246999_
                                                            _struct-type-check1249462_
                                                            _struct-type-check2249463_)))
                                                       _L249330_))
                                                 (__tmp256273
                                                  (let ((__tmp256274
                                                         (let ((__tmp256276
                                                                (let ((__tmp256277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256289
                                      (let ()
                                        (declare (not safe))
                                        (cons _L248993_ '())))
                                     (__tmp256278
                                      (let ((__tmp256279
                                             (let ((__tmp256280
                                                    (let ((__tmp256282
                                                           (let ((__tmp256283
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256288
                                 (let ()
                                   (declare (not safe))
                                   (cons _L248992_ '())))
                                (__tmp256284
                                 (let ((__tmp256285
                                        (let ((__tmp256286
                                               (let ((__tmp256287
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L249331_
                                                              _specializer-body249469_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp256287))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp256286
                                           _L248991_))))
                                   (declare (not safe))
                                   (cons __tmp256285 '()))))
                            (declare (not safe))
                            (cons __tmp256288 __tmp256284))))
                     (declare (not safe))
                     (cons __tmp256283 '())))
                  (__tmp256281
                   (let () (declare (not safe)) (cons _L248990_ '()))))
              (declare (not safe))
              (cons __tmp256282 __tmp256281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp256280))))
                                        (declare (not safe))
                                        (cons __tmp256279 '()))))
                                 (declare (not safe))
                                 (cons __tmp256289 __tmp256278))))
                          (declare (not safe))
                          (cons __tmp256277 '())))
                       (__tmp256275
                        (let () (declare (not safe)) (cons _L248989_ '()))))
                   (declare (not safe))
                   (cons __tmp256276 __tmp256275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp256274))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp256273
                                             _stx246903_))))
                                       (_specializer-impl249473_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl249471_
                                           _struct-check-all249438_
                                           _empty247002_)))
                                       (_unchecked-specializer-impl249475_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?247005_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl249471_
                                               _empty247002_
                                               _struct-check-all249438_))
                                            '#f))
                                       (_specializer-impl249477_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl246909_
                                           _$t249368_
                                           _methods-bind249391_
                                           _slots-bind249414_
                                           _class-check-bind249436_
                                           _struct-check-bind249460_
                                           _specializer-impl249473_
                                           _lifted-specializer-id249366_
                                           _unchecked-specializer-impl249475_))))
                                  (let ((__tmp256291
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L246978_)))
                                        (__tmp256290
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id249359_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp256291
                                     '" => "
                                     __tmp256290))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def246910_
                                     _L246978_
                                     _specializer-id249359_
                                     _specializer-impl249477_
                                     _lifted-specializer-id249366_
                                     _unchecked-specializer-impl249475_))))))
                        _tl249304249327_
                        _hd249303249325_)))
                   (let ()
                     (declare (not safe))
                     (_g249295249309_ _g249296249312_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g249295249309_
                                                      _g249296249312_))))))
                                       (declare (not safe))
                                       (_g249294249480_ _L248991_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L248991_))
                                         (let* ((_g249483249513_
                                                 (lambda (_g249484249510_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g249484249510_))))
                                                (_g249482250138_
                                                 (lambda (_g249484249516_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g249484249516_))
                                                       (let ((_e249488249518_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g249484249516_))))
                 (let ((_hd249489249521_
                        (let () (declare (not safe)) (##car _e249488249518_)))
                       (_tl249490249523_
                        (let () (declare (not safe)) (##cdr _e249488249518_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl249490249523_))
                       (let ((_e249491249526_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl249490249523_))))
                         (let ((_hd249492249529_
                                (let ()
                                  (declare (not safe))
                                  (##car _e249491249526_)))
                               (_tl249493249531_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e249491249526_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd249492249529_))
                               (let ((_e249494249534_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd249492249529_))))
                                 (let ((_hd249495249537_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e249494249534_)))
                                       (_tl249496249539_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e249494249534_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd249495249537_))
                                       (let ((_e249497249542_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd249495249537_))))
                                         (let ((_hd249498249545_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e249497249542_)))
                                               (_tl249499249547_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e249497249542_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd249498249545_))
                                               (let ((_e249500249550_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd249498249545_))))
                                                 (let ((_hd249501249553_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e249500249550_)))
                                                       (_tl249502249555_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e249500249550_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl249502249555_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl249499249547_))
                                                           (let ((_e249503249558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl249499249547_))))
                     (let ((_hd249504249561_
                            (let ()
                              (declare (not safe))
                              (##car _e249503249558_)))
                           (_tl249505249563_
                            (let ()
                              (declare (not safe))
                              (##cdr _e249503249558_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl249505249563_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl249496249539_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl249493249531_))
                                   (let ((_e249506249566_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl249493249531_))))
                                     (let ((_hd249507249569_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e249506249566_)))
                                           (_tl249508249571_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e249506249566_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl249508249571_))
                                           ((lambda (_L249574_
                                                     _L249575_
                                                     _L249576_)
                                              (let* ((_g249599249613_
                                                      (lambda (_g249600249610_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g249600249610_))))
                                                     (_g249598249654_
                                                      (lambda (_g249600249616_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g249600249616_))
                                                            (let ((_e249603249618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g249600249616_))))
                      (let ((_hd249604249621_
                             (let ()
                               (declare (not safe))
                               (##car _e249603249618_)))
                            (_tl249605249623_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249603249618_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl249605249623_))
                            (let ((_e249606249626_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl249605249623_))))
                              (let ((_hd249607249629_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249606249626_)))
                                    (_tl249608249631_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249606249626_))))
                                ((lambda (_L249634_ _L249635_)
                                   (let ((_self249648_
                                          (list-ref
                                           _L249635_
                                           _self-index249292_)))
                                     (for-each
                                      (lambda (_g249649249651_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g249649249651_
                                           _self249648_
                                           _method-calls246997_
                                           _slot-refs246998_
                                           _class-type-check246999_
                                           _struct-type-check247000_
                                           _struct-type-assert247001_)))
                                      _L249634_)))
                                 _tl249608249631_
                                 _hd249607249629_)))
                            (let ()
                              (declare (not safe))
                              (_g249599249613_ _g249600249616_)))))
                    (let ()
                      (declare (not safe))
                      (_g249599249613_ _g249600249616_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g249598249654_ _L249575_))
                                              (let* ((_g249657249676_
                                                      (lambda (_g249658249673_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g249658249673_))))
                                                     (_g249656249781_
                                                      (lambda (_g249658249679_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g249658249679_))
                                                            (let ((_e249660249681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g249658249679_))))
                      (let ((_hd249661249684_
                             (let ()
                               (declare (not safe))
                               (##car _e249660249681_)))
                            (_tl249662249686_
                             (let ()
                               (declare (not safe))
                               (##cdr _e249660249681_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl249662249686_))
                            (let ((_g256292_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl249662249686_
                                      '0))))
                              (begin
                                (let ((_g256293_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g256292_)
                                             (##vector-length _g256292_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g256293_ 2)))
                                      (error "Context expects 2 values"
                                             _g256293_)))
                                (let ((_target249663249689_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256292_ 0)))
                                      (_tl249665249691_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g256292_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl249665249691_))
                                      (letrec ((_loop249666249694_
                                                (lambda (_hd249664249697_
                                                         _clause249670249699_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd249664249697_))
                                                      (let ((_e249667249702_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd249664249697_))))
                (let ((_lp-hd249668249705_
                       (let () (declare (not safe)) (##car _e249667249702_)))
                      (_lp-tl249669249707_
                       (let () (declare (not safe)) (##cdr _e249667249702_))))
                  (let ((__tmp256294
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd249668249705_ _clause249670249699_))))
                    (declare (not safe))
                    (_loop249666249694_ _lp-tl249669249707_ __tmp256294))))
              (let ((_clause249671249710_ (reverse _clause249670249699_)))
                ((lambda (_L249713_)
                   (for-each
                    (lambda (_clause249726_)
                      (let* ((_g249728249739_
                              (lambda (_g249729249736_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g249729249736_))))
                             (_g249727249771_
                              (lambda (_g249729249742_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g249729249742_))
                                    (let ((_e249732249744_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g249729249742_))))
                                      (let ((_hd249733249747_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e249732249744_)))
                                            (_tl249734249749_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e249732249744_))))
                                        ((lambda (_L249752_ _L249753_)
                                           (let ((_self249765_
                                                  (list-ref
                                                   _L249753_
                                                   _self-index249292_)))
                                             (for-each
                                              (lambda (_g249766249768_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g249766249768_
                                                   _self249765_
                                                   _method-calls246997_
                                                   _slot-refs246998_
                                                   _class-type-check246999_
                                                   _struct-type-check247000_
                                                   _struct-type-assert247001_)))
                                              _L249752_)))
                                         _tl249734249749_
                                         _hd249733249747_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g249728249739_ _g249729249742_))))))
                        (declare (not safe))
                        (_g249727249771_ _clause249726_)))
                    (let ((__tmp256295
                           (lambda (_g249773249776_ _g249774249778_)
                             (let ()
                               (declare (not safe))
                               (cons _g249773249776_ _g249774249778_)))))
                      (declare (not safe))
                      (foldr1 __tmp256295 '() _L249713_))))
                 _clause249671249710_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop249666249694_
                                           _target249663249689_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g249657249676_ _g249658249679_))))))
                            (let ()
                              (declare (not safe))
                              (_g249657249676_ _g249658249679_)))))
                    (let ()
                      (declare (not safe))
                      (_g249657249676_ _g249658249679_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g249656249781_ _L249574_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?247004_))
                                                  _stx246903_
                                                  (let* ((_specializer-id249790_
                                                          (let* ((_id249784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp256296
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L246978_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp256296 '"::specialize")))
                         (_specializer-id249787_
                          (let ((__tmp256297
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx246903_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id249784_ __tmp256297))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id249787_))
                    _specializer-id249787_))
                 (_lifted-specializer-id249797_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?247006_))
                      (let* ((_id249792_
                              (let ((__tmp256298
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L246978_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp256298
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id249794_
                              (let ((__tmp256299
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx246903_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id249792_
                                 __tmp256299))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id249794_))
                        _lifted-specializer-id249794_)
                      '#f))
                 (_$t249799_
                  (let ((__tmp256300 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp256300)))
                 (_methods249801_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls246997_)))
                 (_$methods249805_
                  (map (lambda (_id249803_)
                         (let ((__tmp256301 (gensym _id249803_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256301)))
                       _methods249801_))
                 (_g256302_
                  (for-each
                   (lambda (_g249806249809_ _g249807249811_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls246997_
                        _g249806249809_
                        _g249807249811_)))
                   _methods249801_
                   _$methods249805_))
                 (_methods-bind249822_
                  (map (lambda (_g249814249817_ _g249815249819_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind246905_
                            _$t249799_
                            _g249814249817_
                            _g249815249819_)))
                       _methods249801_
                       _$methods249805_))
                 (_slots249824_
                  (let () (declare (not safe)) (hash-keys _slot-refs246998_)))
                 (_$slots249828_
                  (map (lambda (_id249826_)
                         (let ((__tmp256303 (gensym _id249826_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp256303)))
                       _slots249824_))
                 (_g256304_
                  (for-each
                   (lambda (_g249829249832_ _g249830249834_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs246998_
                        _g249829249832_
                        _g249830249834_)))
                   _slots249824_
                   _$slots249828_))
                 (_slots-bind249845_
                  (map (lambda (_g249837249840_ _g249838249842_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind246906_
                            _$t249799_
                            _g249837249840_
                            _g249838249842_)))
                       _slots249824_
                       _$slots249828_))
                 (_class-check249847_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check246999_)))
                 (_$class-check249850_
                  (map (lambda (_g256305_)
                         (let ((__tmp256306 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256306)))
                       _class-check249847_))
                 (_g256307_
                  (for-each
                   (lambda (_g249851249854_ _g249852249856_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check246999_
                        _g249851249854_
                        _g249852249856_)))
                   _class-check249847_
                   _$class-check249850_))
                 (_class-check-bind249867_
                  (map (lambda (_g249859249862_ _g249860249864_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind246907_
                            _$t249799_
                            _g249859249862_
                            _g249860249864_)))
                       _class-check249847_
                       _$class-check249850_))
                 (_struct-check-all249869_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check247000_
                     _struct-type-assert247001_)))
                 (_struct-check249871_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all249869_)))
                 (_$struct-check249874_
                  (map (lambda (_g256308_)
                         (let ((__tmp256309 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp256309)))
                       _struct-check249871_))
                 (_g256310_
                  (for-each
                   (lambda (_g249875249878_ _g249876249880_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all249869_
                        _g249875249878_
                        _g249876249880_)))
                   _struct-check249871_
                   _$struct-check249874_))
                 (_struct-check-bind249891_
                  (map (lambda (_g249883249886_ _g249884249888_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind246908_
                            _$t249799_
                            _g249883249886_
                            _g249884249888_)))
                       _struct-check249871_
                       _$struct-check249874_))
                 (_make-specializer-lambda-expr249977_
                  (lambda (_struct-type-check1249893_
                           _struct-type-check2249894_)
                    (let* ((_g249896249910_
                            (lambda (_g249897249907_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249897249907_))))
                           (_g249895249974_
                            (lambda (_g249897249913_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249897249913_))
                                  (let ((_e249900249915_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249897249913_))))
                                    (let ((_hd249901249918_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249900249915_)))
                                          (_tl249902249920_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249900249915_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl249902249920_))
                                          (let ((_e249903249923_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl249902249920_))))
                                            (let ((_hd249904249926_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e249903249923_)))
                                                  (_tl249905249928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e249903249923_))))
                                              ((lambda (_L249931_ _L249932_)
                                                 (let* ((_self249965_
                                                         (list-ref
                                                          _L249932_
                                                          _self-index249292_))
                                                        (_body249971_
                                                         (map (lambda (_g249966249968_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g249966249968_
                           _self249965_
                           _$t249799_
                           _method-calls246997_
                           _slot-refs246998_
                           _class-type-check246999_
                           _struct-type-check1249893_
                           _struct-type-check2249894_)))
                      _L249931_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp256311
                                                          (let ((__tmp256312
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L249932_ _body249971_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp256312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp256311
                                                      _L249575_))))
                                               _tl249905249928_
                                               _hd249904249926_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g249896249910_
                                             _g249897249913_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249896249910_ _g249897249913_))))))
                      (declare (not safe))
                      (_g249895249974_ _L249575_))))
                 (_make-specializer-case-lambda-expr250116_
                  (lambda (_struct-type-check1249979_
                           _struct-type-check2249980_)
                    (let* ((_g249982250001_
                            (lambda (_g249983249998_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g249983249998_))))
                           (_g249981250113_
                            (lambda (_g249983250004_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g249983250004_))
                                  (let ((_e249985250006_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g249983250004_))))
                                    (let ((_hd249986250009_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e249985250006_)))
                                          (_tl249987250011_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e249985250006_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl249987250011_))
                                          (let ((_g256313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl249987250011_
                                                    '0))))
                                            (begin
                                              (let ((_g256314_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g256313_)
                                                           (##vector-length
                                                            _g256313_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g256314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g256314_)))
                                              (let ((_target249988250014_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256313_
                                                        0)))
                                                    (_tl249990250016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g256313_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl249990250016_))
                                                    (letrec ((_loop249991250019_
                                                              (lambda (_hd249989250022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause249995250024_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd249989250022_))
                            (let ((_e249992250027_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd249989250022_))))
                              (let ((_lp-hd249993250030_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e249992250027_)))
                                    (_lp-tl249994250032_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e249992250027_))))
                                (let ((__tmp256315
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd249993250030_
                                               _clause249995250024_))))
                                  (declare (not safe))
                                  (_loop249991250019_
                                   _lp-tl249994250032_
                                   __tmp256315))))
                            (let ((_clause249996250035_
                                   (reverse _clause249995250024_)))
                              ((lambda (_L250038_)
                                 (let* ((_clauses250111_
                                         (map (lambda (_clause250053_)
                                                (let* ((_g250055250066_
                                                        (lambda (_g250056250063_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g250056250063_))))
                                                       (_g250054250101_
                                                        (lambda (_g250056250069_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g250056250069_))
                      (let ((_e250059250071_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g250056250069_))))
                        (let ((_hd250060250074_
                               (let ()
                                 (declare (not safe))
                                 (##car _e250059250071_)))
                              (_tl250061250076_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e250059250071_))))
                          ((lambda (_L250079_ _L250080_)
                             (let* ((_self250092_
                                     (list-ref _L250080_ _self-index249292_))
                                    (_body250098_
                                     (map (lambda (_g250093250095_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g250093250095_
                                               _self250092_
                                               _$t249799_
                                               _method-calls246997_
                                               _slot-refs246998_
                                               _class-type-check246999_
                                               _struct-type-check1249979_
                                               _struct-type-check2249980_)))
                                          _L250079_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L250080_ _body250098_))))
                           _tl250061250076_
                           _hd250060250074_)))
                      (let ()
                        (declare (not safe))
                        (_g250055250066_ _g250056250069_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g250054250101_
                                                   _clause250053_)))
                                              (let ((__tmp256316
                                                     (lambda (_g250103250106_
                                                              _g250104250108_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g250103250106_
                                                               _g250104250108_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp256316
                                                        '()
                                                        _L250038_))))
                                        (__tmp256317
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses250111_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp256317
                                    _L249574_)))
                               _clause249996250035_))))))
              (let ()
                (declare (not safe))
                (_loop249991250019_ _target249988250014_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249982250001_
                                                       _g249983250004_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g249982250001_
                                             _g249983250004_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g249982250001_ _g249983250004_))))))
                      (declare (not safe))
                      (_g249981250113_ _L249574_))))
                 (_make-specializer-impl250121_
                  (lambda (_specializer-lambda-expr250118_
                           _specializer-case-lambda-expr250119_)
                    (let ((__tmp256318
                           (let ((__tmp256319
                                  (let ((__tmp256321
                                         (let ((__tmp256322
                                                (let ((__tmp256339
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L248993_ '())))
                                                      (__tmp256323
                                                       (let ((__tmp256324
                                                              (let ((__tmp256325
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp256327
                                    (let ((__tmp256328
                                           (let ((__tmp256338
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L248992_ '())))
                                                 (__tmp256329
                                                  (let ((__tmp256330
                                                         (let ((__tmp256331
                                                                (let ((__tmp256332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp256334
                                      (let ((__tmp256335
                                             (let ((__tmp256337
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L249576_ '())))
                                                   (__tmp256336
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr250118_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp256337
                                                     __tmp256336))))
                                        (declare (not safe))
                                        (cons __tmp256335 '())))
                                     (__tmp256333
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr250119_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp256334 __tmp256333))))
                          (declare (not safe))
                          (cons '%#let-values __tmp256332))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp256331 _stx246903_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256330 '()))))
                                             (declare (not safe))
                                             (cons __tmp256338 __tmp256329))))
                                      (declare (not safe))
                                      (cons __tmp256328 '())))
                                   (__tmp256326
                                    (let ()
                                      (declare (not safe))
                                      (cons _L248990_ '()))))
                               (declare (not safe))
                               (cons __tmp256327 __tmp256326))))
                        (declare (not safe))
                        (cons '%#let-values __tmp256325))))
                 (declare (not safe))
                 (cons __tmp256324 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp256339
                                                        __tmp256323))))
                                           (declare (not safe))
                                           (cons __tmp256322 '())))
                                        (__tmp256320
                                         (let ()
                                           (declare (not safe))
                                           (cons _L248989_ '()))))
                                    (declare (not safe))
                                    (cons __tmp256321 __tmp256320))))
                             (declare (not safe))
                             (cons '%#let-values __tmp256319))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp256318 _stx246903_))))
                 (_specializer-lambda-expr250123_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr249977_
                     _struct-check-all249869_
                     _empty247002_)))
                 (_specializer-case-lambda-expr250125_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr250116_
                     _struct-check-all249869_
                     _empty247002_)))
                 (_specializer-impl250127_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl250121_
                     _specializer-lambda-expr250123_
                     _specializer-case-lambda-expr250125_)))
                 (_unchecked-specializer-lambda-expr250129_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247005_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr249977_
                         _empty247002_
                         _struct-check-all249869_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr250131_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247005_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr250116_
                         _empty247002_
                         _struct-check-all249869_))
                      '#f))
                 (_unchecked-specializer-impl250133_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?247005_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl250121_
                         _unchecked-specializer-lambda-expr250129_
                         _unchecked-specializer-case-lambda-expr250131_))
                      '#f))
                 (_specializer-impl250135_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl246909_
                     _$t249799_
                     _methods-bind249822_
                     _slots-bind249845_
                     _class-check-bind249867_
                     _struct-check-bind249891_
                     _specializer-impl250127_
                     _lifted-specializer-id249797_
                     _unchecked-specializer-impl250133_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp256341
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L246978_)))
                                                          (__tmp256340
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id249790_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp256341
                                                       '" => "
                                                       __tmp256340))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def246910_
                                                       _L246978_
                                                       _specializer-id249790_
                                                       _specializer-impl250135_
                                                       _lifted-specializer-id249797_
                                                       _unchecked-specializer-impl250133_)))))
                                            _hd249507249569_
                                            _hd249504249561_
                                            _hd249501249553_)
                                           (let ()
                                             (declare (not safe))
                                             (_g249483249513_
                                              _g249484249516_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g249483249513_ _g249484249516_)))
                               (let ()
                                 (declare (not safe))
                                 (_g249483249513_ _g249484249516_)))
                           (let ()
                             (declare (not safe))
                             (_g249483249513_ _g249484249516_)))))
                   (let ()
                     (declare (not safe))
                     (_g249483249513_ _g249484249516_)))
               (let ()
                 (declare (not safe))
                 (_g249483249513_ _g249484249516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g249483249513_
                                                  _g249484249516_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g249483249513_ _g249484249516_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g249483249513_ _g249484249516_)))))
                       (let ()
                         (declare (not safe))
                         (_g249483249513_ _g249484249516_)))))
               (let ()
                 (declare (not safe))
                 (_g249483249513_ _g249484249516_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g249482250138_ _L248991_))
                                         _stx246903_))))
                             _hd249088249211_
                             _kw-ref249086249232_
                             _hd249076249198_
                             _hd249067249174_
                             _hd249058249150_)
                            (let ()
                              (declare (not safe))
                              (_g249032249094_ _g249033249097_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop249081249216_
                                                   _target249078249203_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g249032249094_
                                                 _g249033249097_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g249032249094_ _g249033249097_))))))
                            (let ()
                              (declare (not safe))
                              (_g249032249094_ _g249033249097_)))
                        (let ()
                          (declare (not safe))
                          (_g249032249094_ _g249033249097_)))
                    (let ()
                      (declare (not safe))
                      (_g249032249094_ _g249033249097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249032249094_
                                                       _g249033249097_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249032249094_
                                                   _g249033249097_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g249032249094_
                                               _g249033249097_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249032249094_ _g249033249097_)))))
                            (let ()
                              (declare (not safe))
                              (_g249032249094_ _g249033249097_)))
                        (let ()
                          (declare (not safe))
                          (_g249032249094_ _g249033249097_)))))
                (let ()
                  (declare (not safe))
                  (_g249032249094_ _g249033249097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249032249094_
                                                       _g249033249097_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g249032249094_
                                                   _g249033249097_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g249032249094_ _g249033249097_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g249032249094_ _g249033249097_)))
                            (let ()
                              (declare (not safe))
                              (_g249032249094_ _g249033249097_)))))
                    (let ()
                      (declare (not safe))
                      (_g249032249094_ _g249033249097_)))
                (let ()
                  (declare (not safe))
                  (_g249032249094_ _g249033249097_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249032249094_
                                                       _g249033249097_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249032249094_
                                               _g249033249097_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g249032249094_ _g249033249097_)))
                                (let ()
                                  (declare (not safe))
                                  (_g249032249094_ _g249033249097_)))
                            (let ()
                              (declare (not safe))
                              (_g249032249094_ _g249033249097_)))))
                    (let ()
                      (declare (not safe))
                      (_g249032249094_ _g249033249097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g249032249094_
                                                       _g249033249097_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g249032249094_
                                               _g249033249097_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g249032249094_ _g249033249097_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g249032249094_ _g249033249097_)))))
                            (let ()
                              (declare (not safe))
                              (_g249032249094_ _g249033249097_))))))
                (declare (not safe))
                (_g249031250141_ _L248990_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd248866248984_
                                                    _hd248863248976_
                                                    _hd248860248968_
                                                    _hd248857248960_
                                                    _hd248839248912_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248819248872_
                                                      _g248820248875_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g248819248872_
                                              _g248820248875_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g248819248872_ _g248820248875_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g248819248872_ _g248820248875_)))
                               (let ()
                                 (declare (not safe))
                                 (_g248819248872_ _g248820248875_)))))
                       (let ()
                         (declare (not safe))
                         (_g248819248872_ _g248820248875_)))
                   (let ()
                     (declare (not safe))
                     (_g248819248872_ _g248820248875_)))
               (let ()
                 (declare (not safe))
                 (_g248819248872_ _g248820248875_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248819248872_
                                                  _g248820248875_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248819248872_
                                              _g248820248875_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248819248872_ _g248820248875_)))))
                           (let ()
                             (declare (not safe))
                             (_g248819248872_ _g248820248875_)))))
                   (let ()
                     (declare (not safe))
                     (_g248819248872_ _g248820248875_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g248819248872_
                                                      _g248820248875_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248819248872_
                                                  _g248820248875_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g248819248872_
                                              _g248820248875_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g248819248872_ _g248820248875_)))))
                           (let ()
                             (declare (not safe))
                             (_g248819248872_ _g248820248875_)))
                       (let ()
                         (declare (not safe))
                         (_g248819248872_ _g248820248875_)))))
               (let ()
                 (declare (not safe))
                 (_g248819248872_ _g248820248875_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g248819248872_
                                                  _g248820248875_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g248819248872_ _g248820248875_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g248819248872_ _g248820248875_)))
                           (let ()
                             (declare (not safe))
                             (_g248819248872_ _g248820248875_)))
                       (let ()
                         (declare (not safe))
                         (_g248819248872_ _g248820248875_)))))
               (let ()
                 (declare (not safe))
                 (_g248819248872_ _g248820248875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g248818250144_ _L246977_))
                                         _stx246903_))))))))
                  (___kont254951254952_ (lambda () _stx246903_)))
              (let ((___match254980254981_
                     (lambda (_e246917246945_
                              _hd246918246948_
                              _tl246919246950_
                              _e246920246953_
                              _hd246921246956_
                              _tl246922246958_
                              _e246923246961_
                              _hd246924246964_
                              _tl246925246966_
                              _e246926246969_
                              _hd246927246972_
                              _tl246928246974_)
                       (let ((_L246977_ _hd246927246972_)
                             (_L246978_ _hd246924246964_))
                         (if (let ((__tmp256342
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L246978_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp256342))
                             (___kont254949254950_ _L246977_ _L246978_)
                             (___kont254951254952_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx254947254948_))
                    (let ((_e246917246945_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx254947254948_))))
                      (let ((_tl246919246950_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246917246945_)))
                            (_hd246918246948_
                             (let ()
                               (declare (not safe))
                               (##car _e246917246945_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246919246950_))
                            (let ((_e246920246953_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246919246950_))))
                              (let ((_tl246922246958_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246920246953_)))
                                    (_hd246921246956_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246920246953_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd246921246956_))
                                    (let ((_e246923246961_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd246921246956_))))
                                      (let ((_tl246925246966_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246923246961_)))
                                            (_hd246924246964_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246923246961_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl246925246966_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl246922246958_))
                                                (let ((_e246926246969_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl246922246958_))))
                                                  (let ((_tl246928246974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e246926246969_)))
                                                        (_hd246927246972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e246926246969_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl246928246974_))
                                                        (___match254980254981_
                                                         _e246917246945_
                                                         _hd246918246948_
                                                         _tl246919246950_
                                                         _e246920246953_
                                                         _hd246921246956_
                                                         _tl246922246958_
                                                         _e246923246961_
                                                         _hd246924246964_
                                                         _tl246925246966_
                                                         _e246926246969_
                                                         _hd246927246972_
                                                         _tl246928246974_)
                                                        (___kont254951254952_))))
                                                (___kont254951254952_))
                                            (___kont254951254952_))))
                                    (___kont254951254952_))))
                            (___kont254951254952_))))
                    (___kont254951254952_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx245879_
               _self245880_
               _methods245881_
               _slots245882_
               _class-check245883_
               _struct-check245884_
               _struct-assert245885_)
        (let* ((___stx254983254984_ _stx245879_)
               (_g245893246115_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx254983254984_)))))
          (let ((___kont254985254986_
                 (lambda (_L246852_ _L246853_ _L246854_ _L246855_)
                   (let ((__tmp256343
                          (let () (declare (not safe)) (gx#stx-e _L246853_))))
                     (declare (not safe))
                     (table-set! _methods245881_ __tmp256343 '#t))
                   (for-each
                    (lambda (_g246888246890_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246888246890_
                         _self245880_
                         _methods245881_
                         _slots245882_
                         _class-check245883_
                         _struct-check245884_
                         _struct-assert245885_)))
                    (let ((__tmp256344
                           (lambda (_g246892246895_ _g246893246897_)
                             (let ()
                               (declare (not safe))
                               (cons _g246892246895_ _g246893246897_)))))
                      (declare (not safe))
                      (foldr1 __tmp256344 '() _L246852_)))))
                (___kont254989254990_
                 (lambda (_L246687_ _L246688_ _L246689_ _L246690_ _L246691_)
                   (let ((__tmp256345
                          (let () (declare (not safe)) (gx#stx-e _L246688_))))
                     (declare (not safe))
                     (table-set! _methods245881_ __tmp256345 '#t))
                   (for-each
                    (lambda (_g246731246733_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g246731246733_
                         _self245880_
                         _methods245881_
                         _slots245882_
                         _class-check245883_
                         _struct-check245884_
                         _struct-assert245885_)))
                    (let ((__tmp256346
                           (lambda (_g246735246738_ _g246736246740_)
                             (let ()
                               (declare (not safe))
                               (cons _g246735246738_ _g246736246740_)))))
                      (declare (not safe))
                      (foldr1 __tmp256346 '() _L246687_)))))
                (___kont254993254994_
                 (lambda (_L246520_ _L246521_ _L246522_)
                   (let ((__tmp256347
                          (let () (declare (not safe)) (gx#stx-e _L246520_))))
                     (declare (not safe))
                     (table-set! _slots245882_ __tmp256347 '#t))))
                (___kont254995254996_
                 (lambda (_L246397_ _L246398_ _L246399_ _L246400_)
                   (let ((__tmp256348
                          (let () (declare (not safe)) (gx#stx-e _L246398_))))
                     (declare (not safe))
                     (table-set! _slots245882_ __tmp256348 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L246397_
                      _self245880_
                      _methods245881_
                      _slots245882_
                      _class-check245883_
                      _struct-check245884_
                      _struct-assert245885_))))
                (___kont254997254998_
                 (lambda (_L246281_ _L246282_)
                   (let ((__tmp256349
                          (##structure-ref
                           (let ((__tmp256350
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246282_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp256350))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245882_ __tmp256349 '#t))))
                (___kont254999255000_
                 (lambda (_L246191_ _L246192_ _L246193_)
                   (let ((__tmp256351
                          (##structure-ref
                           (let ((__tmp256352
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L246193_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp256352))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots245882_ __tmp256351 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L246191_
                      _self245880_
                      _methods245881_
                      _slots245882_
                      _class-check245883_
                      _struct-check245884_
                      _struct-assert245885_))))
                (___kont255001255002_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx245879_
                      _self245880_
                      _methods245881_
                      _slots245882_
                      _class-check245883_
                      _struct-check245884_
                      _struct-assert245885_)))))
            (let* ((___match255482255483_
                    (lambda (_e246087246127_
                             _hd246088246130_
                             _tl246089246132_
                             _e246090246135_
                             _hd246091246138_
                             _tl246092246140_
                             _e246093246143_
                             _hd246094246146_
                             _tl246095246148_
                             _e246096246151_
                             _hd246097246154_
                             _tl246098246156_
                             _e246099246159_
                             _hd246100246162_
                             _tl246101246164_
                             _e246102246167_
                             _hd246103246170_
                             _tl246104246172_
                             _e246105246175_
                             _hd246106246178_
                             _tl246107246180_
                             _e246108246183_
                             _hd246109246186_
                             _tl246110246188_)
                      (let ((_L246191_ _hd246109246186_)
                            (_L246192_ _hd246106246178_)
                            (_L246193_ _hd246097246154_))
                        (if (and (let ((__tmp256353
                                        (let ((__tmp256354
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246193_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp256354))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp256353
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246192_
                                    _self245880_)))
                            (___kont254999255000_
                             _L246191_
                             _L246192_
                             _L246193_)
                            (___kont255001255002_)))))
                   (___match255480255481_
                    (lambda (_e246087246127_
                             _hd246088246130_
                             _tl246089246132_
                             _e246090246135_
                             _hd246091246138_
                             _tl246092246140_
                             _e246093246143_
                             _hd246094246146_
                             _tl246095246148_
                             _e246096246151_
                             _hd246097246154_
                             _tl246098246156_
                             _e246099246159_
                             _hd246100246162_
                             _tl246101246164_
                             _e246102246167_
                             _hd246103246170_
                             _tl246104246172_
                             _e246105246175_
                             _hd246106246178_
                             _tl246107246180_
                             _e246108246183_
                             _hd246109246186_
                             _tl246110246188_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246110246188_))
                          (___match255482255483_
                           _e246087246127_
                           _hd246088246130_
                           _tl246089246132_
                           _e246090246135_
                           _hd246091246138_
                           _tl246092246140_
                           _e246093246143_
                           _hd246094246146_
                           _tl246095246148_
                           _e246096246151_
                           _hd246097246154_
                           _tl246098246156_
                           _e246099246159_
                           _hd246100246162_
                           _tl246101246164_
                           _e246102246167_
                           _hd246103246170_
                           _tl246104246172_
                           _e246105246175_
                           _hd246106246178_
                           _tl246107246180_
                           _e246108246183_
                           _hd246109246186_
                           _tl246110246188_)
                          (___kont255001255002_))))
                   (___match255474255475_
                    (lambda (_e246087246127_
                             _hd246088246130_
                             _tl246089246132_
                             _e246090246135_
                             _hd246091246138_
                             _tl246092246140_
                             _e246093246143_
                             _hd246094246146_
                             _tl246095246148_
                             _e246096246151_
                             _hd246097246154_
                             _tl246098246156_
                             _e246099246159_
                             _hd246100246162_
                             _tl246101246164_
                             _e246102246167_
                             _hd246103246170_
                             _tl246104246172_
                             _e246105246175_
                             _hd246106246178_
                             _tl246107246180_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246101246164_))
                          (let ((_e246108246183_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246101246164_))))
                            (let ((_tl246110246188_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246108246183_)))
                                  (_hd246109246186_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246108246183_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246110246188_))
                                  (___match255482255483_
                                   _e246087246127_
                                   _hd246088246130_
                                   _tl246089246132_
                                   _e246090246135_
                                   _hd246091246138_
                                   _tl246092246140_
                                   _e246093246143_
                                   _hd246094246146_
                                   _tl246095246148_
                                   _e246096246151_
                                   _hd246097246154_
                                   _tl246098246156_
                                   _e246099246159_
                                   _hd246100246162_
                                   _tl246101246164_
                                   _e246102246167_
                                   _hd246103246170_
                                   _tl246104246172_
                                   _e246105246175_
                                   _hd246106246178_
                                   _tl246107246180_
                                   _e246108246183_
                                   _hd246109246186_
                                   _tl246110246188_)
                                  (___kont255001255002_))))
                          (___kont255001255002_))))
                   (___match255420255421_
                    (lambda (_e246063246225_
                             _hd246064246228_
                             _tl246065246230_
                             _e246066246233_
                             _hd246067246236_
                             _tl246068246238_
                             _e246069246241_
                             _hd246070246244_
                             _tl246071246246_
                             _e246072246249_
                             _hd246073246252_
                             _tl246074246254_
                             _e246075246257_
                             _hd246076246260_
                             _tl246077246262_
                             _e246078246265_
                             _hd246079246268_
                             _tl246080246270_
                             _e246081246273_
                             _hd246082246276_
                             _tl246083246278_)
                      (let ((_L246281_ _hd246082246276_)
                            (_L246282_ _hd246073246252_))
                        (if (and (let ((__tmp256355
                                        (let ((__tmp256356
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L246282_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp256356))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp256355
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246281_
                                    _self245880_)))
                            (___kont254997254998_ _L246281_ _L246282_)
                            (___kont255001255002_)))))
                   (___match255418255419_
                    (lambda (_e246063246225_
                             _hd246064246228_
                             _tl246065246230_
                             _e246066246233_
                             _hd246067246236_
                             _tl246068246238_
                             _e246069246241_
                             _hd246070246244_
                             _tl246071246246_
                             _e246072246249_
                             _hd246073246252_
                             _tl246074246254_
                             _e246075246257_
                             _hd246076246260_
                             _tl246077246262_
                             _e246078246265_
                             _hd246079246268_
                             _tl246080246270_
                             _e246081246273_
                             _hd246082246276_
                             _tl246083246278_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246077246262_))
                          (___match255420255421_
                           _e246063246225_
                           _hd246064246228_
                           _tl246065246230_
                           _e246066246233_
                           _hd246067246236_
                           _tl246068246238_
                           _e246069246241_
                           _hd246070246244_
                           _tl246071246246_
                           _e246072246249_
                           _hd246073246252_
                           _tl246074246254_
                           _e246075246257_
                           _hd246076246260_
                           _tl246077246262_
                           _e246078246265_
                           _hd246079246268_
                           _tl246080246270_
                           _e246081246273_
                           _hd246082246276_
                           _tl246083246278_)
                          (___match255474255475_
                           _e246063246225_
                           _hd246064246228_
                           _tl246065246230_
                           _e246066246233_
                           _hd246067246236_
                           _tl246068246238_
                           _e246069246241_
                           _hd246070246244_
                           _tl246071246246_
                           _e246072246249_
                           _hd246073246252_
                           _tl246074246254_
                           _e246075246257_
                           _hd246076246260_
                           _tl246077246262_
                           _e246078246265_
                           _hd246079246268_
                           _tl246080246270_
                           _e246081246273_
                           _hd246082246276_
                           _tl246083246278_))))
                   (___match255364255365_
                    (lambda (_e246028246309_
                             _hd246029246312_
                             _tl246030246314_
                             _e246031246317_
                             _hd246032246320_
                             _tl246033246322_
                             _e246034246325_
                             _hd246035246328_
                             _tl246036246330_
                             _e246037246333_
                             _hd246038246336_
                             _tl246039246338_
                             _e246040246341_
                             _hd246041246344_
                             _tl246042246346_
                             _e246043246349_
                             _hd246044246352_
                             _tl246045246354_
                             _e246046246357_
                             _hd246047246360_
                             _tl246048246362_
                             _e246049246365_
                             _hd246050246368_
                             _tl246051246370_
                             _e246052246373_
                             _hd246053246376_
                             _tl246054246378_
                             _e246055246381_
                             _hd246056246384_
                             _tl246057246386_
                             _e246058246389_
                             _hd246059246392_
                             _tl246060246394_)
                      (let ((_L246397_ _hd246059246392_)
                            (_L246398_ _hd246056246384_)
                            (_L246399_ _hd246047246360_)
                            (_L246400_ _hd246038246336_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L246400_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L246400_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246399_
                                    _self245880_)))
                            (___kont254995254996_
                             _L246397_
                             _L246398_
                             _L246399_
                             _L246400_)
                            (___kont255001255002_)))))
                   (___match255356255357_
                    (lambda (_e246028246309_
                             _hd246029246312_
                             _tl246030246314_
                             _e246031246317_
                             _hd246032246320_
                             _tl246033246322_
                             _e246034246325_
                             _hd246035246328_
                             _tl246036246330_
                             _e246037246333_
                             _hd246038246336_
                             _tl246039246338_
                             _e246040246341_
                             _hd246041246344_
                             _tl246042246346_
                             _e246043246349_
                             _hd246044246352_
                             _tl246045246354_
                             _e246046246357_
                             _hd246047246360_
                             _tl246048246362_
                             _e246049246365_
                             _hd246050246368_
                             _tl246051246370_
                             _e246052246373_
                             _hd246053246376_
                             _tl246054246378_
                             _e246055246381_
                             _hd246056246384_
                             _tl246057246386_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl246051246370_))
                          (let ((_e246058246389_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl246051246370_))))
                            (let ((_tl246060246394_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e246058246389_)))
                                  (_hd246059246392_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e246058246389_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl246060246394_))
                                  (___match255364255365_
                                   _e246028246309_
                                   _hd246029246312_
                                   _tl246030246314_
                                   _e246031246317_
                                   _hd246032246320_
                                   _tl246033246322_
                                   _e246034246325_
                                   _hd246035246328_
                                   _tl246036246330_
                                   _e246037246333_
                                   _hd246038246336_
                                   _tl246039246338_
                                   _e246040246341_
                                   _hd246041246344_
                                   _tl246042246346_
                                   _e246043246349_
                                   _hd246044246352_
                                   _tl246045246354_
                                   _e246046246357_
                                   _hd246047246360_
                                   _tl246048246362_
                                   _e246049246365_
                                   _hd246050246368_
                                   _tl246051246370_
                                   _e246052246373_
                                   _hd246053246376_
                                   _tl246054246378_
                                   _e246055246381_
                                   _hd246056246384_
                                   _tl246057246386_
                                   _e246058246389_
                                   _hd246059246392_
                                   _tl246060246394_)
                                  (___kont255001255002_))))
                          (___match255480255481_
                           _e246028246309_
                           _hd246029246312_
                           _tl246030246314_
                           _e246031246317_
                           _hd246032246320_
                           _tl246033246322_
                           _e246034246325_
                           _hd246035246328_
                           _tl246036246330_
                           _e246037246333_
                           _hd246038246336_
                           _tl246039246338_
                           _e246040246341_
                           _hd246041246344_
                           _tl246042246346_
                           _e246043246349_
                           _hd246044246352_
                           _tl246045246354_
                           _e246046246357_
                           _hd246047246360_
                           _tl246048246362_
                           _e246049246365_
                           _hd246050246368_
                           _tl246051246370_))))
                   (___match255278255279_
                    (lambda (_e245994246440_
                             _hd245995246443_
                             _tl245996246445_
                             _e245997246448_
                             _hd245998246451_
                             _tl245999246453_
                             _e246000246456_
                             _hd246001246459_
                             _tl246002246461_
                             _e246003246464_
                             _hd246004246467_
                             _tl246005246469_
                             _e246006246472_
                             _hd246007246475_
                             _tl246008246477_
                             _e246009246480_
                             _hd246010246483_
                             _tl246011246485_
                             _e246012246488_
                             _hd246013246491_
                             _tl246014246493_
                             _e246015246496_
                             _hd246016246499_
                             _tl246017246501_
                             _e246018246504_
                             _hd246019246507_
                             _tl246020246509_
                             _e246021246512_
                             _hd246022246515_
                             _tl246023246517_)
                      (let ((_L246520_ _hd246022246515_)
                            (_L246521_ _hd246013246491_)
                            (_L246522_ _hd246004246467_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L246522_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L246522_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L246521_
                                    _self245880_)))
                            (___kont254993254994_
                             _L246520_
                             _L246521_
                             _L246522_)
                            (___match255482255483_
                             _e245994246440_
                             _hd245995246443_
                             _tl245996246445_
                             _e245997246448_
                             _hd245998246451_
                             _tl245999246453_
                             _e246000246456_
                             _hd246001246459_
                             _tl246002246461_
                             _e246003246464_
                             _hd246004246467_
                             _tl246005246469_
                             _e246006246472_
                             _hd246007246475_
                             _tl246008246477_
                             _e246009246480_
                             _hd246010246483_
                             _tl246011246485_
                             _e246012246488_
                             _hd246013246491_
                             _tl246014246493_
                             _e246015246496_
                             _hd246016246499_
                             _tl246017246501_)))))
                   (___match255276255277_
                    (lambda (_e245994246440_
                             _hd245995246443_
                             _tl245996246445_
                             _e245997246448_
                             _hd245998246451_
                             _tl245999246453_
                             _e246000246456_
                             _hd246001246459_
                             _tl246002246461_
                             _e246003246464_
                             _hd246004246467_
                             _tl246005246469_
                             _e246006246472_
                             _hd246007246475_
                             _tl246008246477_
                             _e246009246480_
                             _hd246010246483_
                             _tl246011246485_
                             _e246012246488_
                             _hd246013246491_
                             _tl246014246493_
                             _e246015246496_
                             _hd246016246499_
                             _tl246017246501_
                             _e246018246504_
                             _hd246019246507_
                             _tl246020246509_
                             _e246021246512_
                             _hd246022246515_
                             _tl246023246517_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl246017246501_))
                          (___match255278255279_
                           _e245994246440_
                           _hd245995246443_
                           _tl245996246445_
                           _e245997246448_
                           _hd245998246451_
                           _tl245999246453_
                           _e246000246456_
                           _hd246001246459_
                           _tl246002246461_
                           _e246003246464_
                           _hd246004246467_
                           _tl246005246469_
                           _e246006246472_
                           _hd246007246475_
                           _tl246008246477_
                           _e246009246480_
                           _hd246010246483_
                           _tl246011246485_
                           _e246012246488_
                           _hd246013246491_
                           _tl246014246493_
                           _e246015246496_
                           _hd246016246499_
                           _tl246017246501_
                           _e246018246504_
                           _hd246019246507_
                           _tl246020246509_
                           _e246021246512_
                           _hd246022246515_
                           _tl246023246517_)
                          (___match255356255357_
                           _e245994246440_
                           _hd245995246443_
                           _tl245996246445_
                           _e245997246448_
                           _hd245998246451_
                           _tl245999246453_
                           _e246000246456_
                           _hd246001246459_
                           _tl246002246461_
                           _e246003246464_
                           _hd246004246467_
                           _tl246005246469_
                           _e246006246472_
                           _hd246007246475_
                           _tl246008246477_
                           _e246009246480_
                           _hd246010246483_
                           _tl246011246485_
                           _e246012246488_
                           _hd246013246491_
                           _tl246014246493_
                           _e246015246496_
                           _hd246016246499_
                           _tl246017246501_
                           _e246018246504_
                           _hd246019246507_
                           _tl246020246509_
                           _e246021246512_
                           _hd246022246515_
                           _tl246023246517_))))
                   (___match255266255267_
                    (lambda (_e245994246440_
                             _hd245995246443_
                             _tl245996246445_
                             _e245997246448_
                             _hd245998246451_
                             _tl245999246453_
                             _e246000246456_
                             _hd246001246459_
                             _tl246002246461_
                             _e246003246464_
                             _hd246004246467_
                             _tl246005246469_
                             _e246006246472_
                             _hd246007246475_
                             _tl246008246477_
                             _e246009246480_
                             _hd246010246483_
                             _tl246011246485_
                             _e246012246488_
                             _hd246013246491_
                             _tl246014246493_
                             _e246015246496_
                             _hd246016246499_
                             _tl246017246501_
                             _e246018246504_
                             _hd246019246507_
                             _tl246020246509_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd246019246507_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl246020246509_))
                              (let ((_e246021246512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl246020246509_))))
                                (let ((_tl246023246517_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e246021246512_)))
                                      (_hd246022246515_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e246021246512_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246023246517_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl246017246501_))
                                          (___match255278255279_
                                           _e245994246440_
                                           _hd245995246443_
                                           _tl245996246445_
                                           _e245997246448_
                                           _hd245998246451_
                                           _tl245999246453_
                                           _e246000246456_
                                           _hd246001246459_
                                           _tl246002246461_
                                           _e246003246464_
                                           _hd246004246467_
                                           _tl246005246469_
                                           _e246006246472_
                                           _hd246007246475_
                                           _tl246008246477_
                                           _e246009246480_
                                           _hd246010246483_
                                           _tl246011246485_
                                           _e246012246488_
                                           _hd246013246491_
                                           _tl246014246493_
                                           _e246015246496_
                                           _hd246016246499_
                                           _tl246017246501_
                                           _e246018246504_
                                           _hd246019246507_
                                           _tl246020246509_
                                           _e246021246512_
                                           _hd246022246515_
                                           _tl246023246517_)
                                          (___match255356255357_
                                           _e245994246440_
                                           _hd245995246443_
                                           _tl245996246445_
                                           _e245997246448_
                                           _hd245998246451_
                                           _tl245999246453_
                                           _e246000246456_
                                           _hd246001246459_
                                           _tl246002246461_
                                           _e246003246464_
                                           _hd246004246467_
                                           _tl246005246469_
                                           _e246006246472_
                                           _hd246007246475_
                                           _tl246008246477_
                                           _e246009246480_
                                           _hd246010246483_
                                           _tl246011246485_
                                           _e246012246488_
                                           _hd246013246491_
                                           _tl246014246493_
                                           _e246015246496_
                                           _hd246016246499_
                                           _tl246017246501_
                                           _e246018246504_
                                           _hd246019246507_
                                           _tl246020246509_
                                           _e246021246512_
                                           _hd246022246515_
                                           _tl246023246517_))
                                      (___match255480255481_
                                       _e245994246440_
                                       _hd245995246443_
                                       _tl245996246445_
                                       _e245997246448_
                                       _hd245998246451_
                                       _tl245999246453_
                                       _e246000246456_
                                       _hd246001246459_
                                       _tl246002246461_
                                       _e246003246464_
                                       _hd246004246467_
                                       _tl246005246469_
                                       _e246006246472_
                                       _hd246007246475_
                                       _tl246008246477_
                                       _e246009246480_
                                       _hd246010246483_
                                       _tl246011246485_
                                       _e246012246488_
                                       _hd246013246491_
                                       _tl246014246493_
                                       _e246015246496_
                                       _hd246016246499_
                                       _tl246017246501_))))
                              (___match255480255481_
                               _e245994246440_
                               _hd245995246443_
                               _tl245996246445_
                               _e245997246448_
                               _hd245998246451_
                               _tl245999246453_
                               _e246000246456_
                               _hd246001246459_
                               _tl246002246461_
                               _e246003246464_
                               _hd246004246467_
                               _tl246005246469_
                               _e246006246472_
                               _hd246007246475_
                               _tl246008246477_
                               _e246009246480_
                               _hd246010246483_
                               _tl246011246485_
                               _e246012246488_
                               _hd246013246491_
                               _tl246014246493_
                               _e246015246496_
                               _hd246016246499_
                               _tl246017246501_))
                          (___match255480255481_
                           _e245994246440_
                           _hd245995246443_
                           _tl245996246445_
                           _e245997246448_
                           _hd245998246451_
                           _tl245999246453_
                           _e246000246456_
                           _hd246001246459_
                           _tl246002246461_
                           _e246003246464_
                           _hd246004246467_
                           _tl246005246469_
                           _e246006246472_
                           _hd246007246475_
                           _tl246008246477_
                           _e246009246480_
                           _hd246010246483_
                           _tl246011246485_
                           _e246012246488_
                           _hd246013246491_
                           _tl246014246493_
                           _e246015246496_
                           _hd246016246499_
                           _tl246017246501_))))
                   (___match255198255199_
                    (lambda (_e245943246559_
                             _hd245944246562_
                             _tl245945246564_
                             _e245946246567_
                             _hd245947246570_
                             _tl245948246572_
                             _e245949246575_
                             _hd245950246578_
                             _tl245951246580_
                             _e245952246583_
                             _hd245953246586_
                             _tl245954246588_
                             _e245955246591_
                             _hd245956246594_
                             _tl245957246596_
                             _e245958246599_
                             _hd245959246602_
                             _tl245960246604_
                             _e245961246607_
                             _hd245962246610_
                             _tl245963246612_
                             _e245964246615_
                             _hd245965246618_
                             _tl245966246620_
                             _e245967246623_
                             _hd245968246626_
                             _tl245969246628_
                             _e245970246631_
                             _hd245971246634_
                             _tl245972246636_
                             _e245973246639_
                             _hd245974246642_
                             _tl245975246644_
                             _e245976246647_
                             _hd245977246650_
                             _tl245978246652_
                             _e245979246655_
                             _hd245980246658_
                             _tl245981246660_
                             ___splice254991254992_
                             _target245982246663_
                             _tl245984246665_)
                      (letrec ((_loop245985246668_
                                (lambda (_hd245983246671_ _args245989246673_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245983246671_))
                                      (let ((_e245986246676_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245983246671_))))
                                        (let ((_lp-tl245988246681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245986246676_)))
                                              (_lp-hd245987246679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245986246676_))))
                                          (let ((__tmp256357
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245987246679_
                                                         _args245989246673_))))
                                            (declare (not safe))
                                            (_loop245985246668_
                                             _lp-tl245988246681_
                                             __tmp256357))))
                                      (let ((_args245990246684_
                                             (reverse _args245989246673_)))
                                        (let ((_L246687_ _args245990246684_)
                                              (_L246688_ _hd245980246658_)
                                              (_L246689_ _hd245971246634_)
                                              (_L246690_ _hd245962246610_)
                                              (_L246691_ _hd245953246586_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246691_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246690_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246689_
                                                      _self245880_)))
                                              (___kont254989254990_
                                               _L246687_
                                               _L246688_
                                               _L246689_
                                               _L246690_
                                               _L246691_)
                                              (___kont255001255002_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245985246668_ _target245982246663_ '())))))
                   (___match255156255157_
                    (lambda (_e245943246559_
                             _hd245944246562_
                             _tl245945246564_
                             _e245946246567_
                             _hd245947246570_
                             _tl245948246572_
                             _e245949246575_
                             _hd245950246578_
                             _tl245951246580_
                             _e245952246583_
                             _hd245953246586_
                             _tl245954246588_
                             _e245955246591_
                             _hd245956246594_
                             _tl245957246596_
                             _e245958246599_
                             _hd245959246602_
                             _tl245960246604_
                             _e245961246607_
                             _hd245962246610_
                             _tl245963246612_
                             _e245964246615_
                             _hd245965246618_
                             _tl245966246620_
                             _e245967246623_
                             _hd245968246626_
                             _tl245969246628_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd245968246626_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl245969246628_))
                              (let ((_e245970246631_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl245969246628_))))
                                (let ((_tl245972246636_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245970246631_)))
                                      (_hd245971246634_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245970246631_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl245972246636_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245966246620_))
                                          (let ((_e245973246639_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245966246620_))))
                                            (let ((_tl245975246644_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245973246639_)))
                                                  (_hd245974246642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245973246639_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245974246642_))
                                                  (let ((_e245976246647_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245974246642_))))
                                                    (let ((_tl245978246652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245976246647_)))
                                                          (_hd245977246650_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245976246647_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd245977246650_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd245977246650_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245978246652_))
                          (let ((_e245979246655_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245978246652_))))
                            (let ((_tl245981246660_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245979246655_)))
                                  (_hd245980246658_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245979246655_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245981246660_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245975246644_))
                                      (let ((___splice254991254992_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245975246644_
                                                '0))))
                                        (let ((_tl245984246665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254991254992_
                                                  '1)))
                                              (_target245982246663_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice254991254992_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245984246665_))
                                              (___match255198255199_
                                               _e245943246559_
                                               _hd245944246562_
                                               _tl245945246564_
                                               _e245946246567_
                                               _hd245947246570_
                                               _tl245948246572_
                                               _e245949246575_
                                               _hd245950246578_
                                               _tl245951246580_
                                               _e245952246583_
                                               _hd245953246586_
                                               _tl245954246588_
                                               _e245955246591_
                                               _hd245956246594_
                                               _tl245957246596_
                                               _e245958246599_
                                               _hd245959246602_
                                               _tl245960246604_
                                               _e245961246607_
                                               _hd245962246610_
                                               _tl245963246612_
                                               _e245964246615_
                                               _hd245965246618_
                                               _tl245966246620_
                                               _e245967246623_
                                               _hd245968246626_
                                               _tl245969246628_
                                               _e245970246631_
                                               _hd245971246634_
                                               _tl245972246636_
                                               _e245973246639_
                                               _hd245974246642_
                                               _tl245975246644_
                                               _e245976246647_
                                               _hd245977246650_
                                               _tl245978246652_
                                               _e245979246655_
                                               _hd245980246658_
                                               _tl245981246660_
                                               ___splice254991254992_
                                               _target245982246663_
                                               _tl245984246665_)
                                              (___kont255001255002_))))
                                      (___kont255001255002_))
                                  (___kont255001255002_))))
                          (___kont255001255002_))
                      (___kont255001255002_))
                  (___kont255001255002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255001255002_))))
                                          (___match255480255481_
                                           _e245943246559_
                                           _hd245944246562_
                                           _tl245945246564_
                                           _e245946246567_
                                           _hd245947246570_
                                           _tl245948246572_
                                           _e245949246575_
                                           _hd245950246578_
                                           _tl245951246580_
                                           _e245952246583_
                                           _hd245953246586_
                                           _tl245954246588_
                                           _e245955246591_
                                           _hd245956246594_
                                           _tl245957246596_
                                           _e245958246599_
                                           _hd245959246602_
                                           _tl245960246604_
                                           _e245961246607_
                                           _hd245962246610_
                                           _tl245963246612_
                                           _e245964246615_
                                           _hd245965246618_
                                           _tl245966246620_))
                                      (___match255480255481_
                                       _e245943246559_
                                       _hd245944246562_
                                       _tl245945246564_
                                       _e245946246567_
                                       _hd245947246570_
                                       _tl245948246572_
                                       _e245949246575_
                                       _hd245950246578_
                                       _tl245951246580_
                                       _e245952246583_
                                       _hd245953246586_
                                       _tl245954246588_
                                       _e245955246591_
                                       _hd245956246594_
                                       _tl245957246596_
                                       _e245958246599_
                                       _hd245959246602_
                                       _tl245960246604_
                                       _e245961246607_
                                       _hd245962246610_
                                       _tl245963246612_
                                       _e245964246615_
                                       _hd245965246618_
                                       _tl245966246620_))))
                              (___match255480255481_
                               _e245943246559_
                               _hd245944246562_
                               _tl245945246564_
                               _e245946246567_
                               _hd245947246570_
                               _tl245948246572_
                               _e245949246575_
                               _hd245950246578_
                               _tl245951246580_
                               _e245952246583_
                               _hd245953246586_
                               _tl245954246588_
                               _e245955246591_
                               _hd245956246594_
                               _tl245957246596_
                               _e245958246599_
                               _hd245959246602_
                               _tl245960246604_
                               _e245961246607_
                               _hd245962246610_
                               _tl245963246612_
                               _e245964246615_
                               _hd245965246618_
                               _tl245966246620_))
                          (___match255266255267_
                           _e245943246559_
                           _hd245944246562_
                           _tl245945246564_
                           _e245946246567_
                           _hd245947246570_
                           _tl245948246572_
                           _e245949246575_
                           _hd245950246578_
                           _tl245951246580_
                           _e245952246583_
                           _hd245953246586_
                           _tl245954246588_
                           _e245955246591_
                           _hd245956246594_
                           _tl245957246596_
                           _e245958246599_
                           _hd245959246602_
                           _tl245960246604_
                           _e245961246607_
                           _hd245962246610_
                           _tl245963246612_
                           _e245964246615_
                           _hd245965246618_
                           _tl245966246620_
                           _e245967246623_
                           _hd245968246626_
                           _tl245969246628_))))
                   (___match255088255089_
                    (lambda (_e245899246748_
                             _hd245900246751_
                             _tl245901246753_
                             _e245902246756_
                             _hd245903246759_
                             _tl245904246761_
                             _e245905246764_
                             _hd245906246767_
                             _tl245907246769_
                             _e245908246772_
                             _hd245909246775_
                             _tl245910246777_
                             _e245911246780_
                             _hd245912246783_
                             _tl245913246785_
                             _e245914246788_
                             _hd245915246791_
                             _tl245916246793_
                             _e245917246796_
                             _hd245918246799_
                             _tl245919246801_
                             _e245920246804_
                             _hd245921246807_
                             _tl245922246809_
                             _e245923246812_
                             _hd245924246815_
                             _tl245925246817_
                             _e245926246820_
                             _hd245927246823_
                             _tl245928246825_
                             ___splice254987254988_
                             _target245929246828_
                             _tl245931246830_)
                      (letrec ((_loop245932246833_
                                (lambda (_hd245930246836_ _args245936246838_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd245930246836_))
                                      (let ((_e245933246841_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd245930246836_))))
                                        (let ((_lp-tl245935246846_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245933246841_)))
                                              (_lp-hd245934246844_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245933246841_))))
                                          (let ((__tmp256358
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd245934246844_
                                                         _args245936246838_))))
                                            (declare (not safe))
                                            (_loop245932246833_
                                             _lp-tl245935246846_
                                             __tmp256358))))
                                      (let ((_args245937246849_
                                             (reverse _args245936246838_)))
                                        (let ((_L246852_ _args245937246849_)
                                              (_L246853_ _hd245927246823_)
                                              (_L246854_ _hd245918246799_)
                                              (_L246855_ _hd245909246775_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L246855_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L246854_
                                                      _self245880_)))
                                              (___kont254985254986_
                                               _L246852_
                                               _L246853_
                                               _L246854_
                                               _L246855_)
                                              (___match255276255277_
                                               _e245899246748_
                                               _hd245900246751_
                                               _tl245901246753_
                                               _e245902246756_
                                               _hd245903246759_
                                               _tl245904246761_
                                               _e245905246764_
                                               _hd245906246767_
                                               _tl245907246769_
                                               _e245908246772_
                                               _hd245909246775_
                                               _tl245910246777_
                                               _e245911246780_
                                               _hd245912246783_
                                               _tl245913246785_
                                               _e245914246788_
                                               _hd245915246791_
                                               _tl245916246793_
                                               _e245917246796_
                                               _hd245918246799_
                                               _tl245919246801_
                                               _e245920246804_
                                               _hd245921246807_
                                               _tl245922246809_
                                               _e245923246812_
                                               _hd245924246815_
                                               _tl245925246817_
                                               _e245926246820_
                                               _hd245927246823_
                                               _tl245928246825_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop245932246833_ _target245929246828_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx254983254984_))
                  (let ((_e245899246748_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx254983254984_))))
                    (let ((_tl245901246753_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245899246748_)))
                          (_hd245900246751_
                           (let ()
                             (declare (not safe))
                             (##car _e245899246748_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl245901246753_))
                          (let ((_e245902246756_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl245901246753_))))
                            (let ((_tl245904246761_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245902246756_)))
                                  (_hd245903246759_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245902246756_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd245903246759_))
                                  (let ((_e245905246764_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd245903246759_))))
                                    (let ((_tl245907246769_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e245905246764_)))
                                          (_hd245906246767_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e245905246764_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd245906246767_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd245906246767_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl245907246769_))
                                                  (let ((_e245908246772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl245907246769_))))
                                                    (let ((_tl245910246777_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245908246772_)))
                                                          (_hd245909246775_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245908246772_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl245910246777_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl245904246761_))
                      (let ((_e245911246780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl245904246761_))))
                        (let ((_tl245913246785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245911246780_)))
                              (_hd245912246783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245911246780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd245912246783_))
                              (let ((_e245914246788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd245912246783_))))
                                (let ((_tl245916246793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245914246788_)))
                                      (_hd245915246791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245914246788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd245915246791_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd245915246791_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl245916246793_))
                                              (let ((_e245917246796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl245916246793_))))
                                                (let ((_tl245919246801_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245917246796_)))
                                                      (_hd245918246799_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245917246796_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl245919246801_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl245913246785_))
                                                          (let ((_e245920246804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl245913246785_))))
                    (let ((_tl245922246809_
                           (let ()
                             (declare (not safe))
                             (##cdr _e245920246804_)))
                          (_hd245921246807_
                           (let ()
                             (declare (not safe))
                             (##car _e245920246804_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd245921246807_))
                          (let ((_e245923246812_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd245921246807_))))
                            (let ((_tl245925246817_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e245923246812_)))
                                  (_hd245924246815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e245923246812_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd245924246815_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd245924246815_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl245925246817_))
                                          (let ((_e245926246820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl245925246817_))))
                                            (let ((_tl245928246825_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e245926246820_)))
                                                  (_hd245927246823_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e245926246820_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl245928246825_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl245922246809_))
                                                      (let ((___splice254987254988_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl245922246809_ '0))))
                (let ((_tl245931246830_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254987254988_ '1)))
                      (_target245929246828_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice254987254988_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl245931246830_))
                      (___match255088255089_
                       _e245899246748_
                       _hd245900246751_
                       _tl245901246753_
                       _e245902246756_
                       _hd245903246759_
                       _tl245904246761_
                       _e245905246764_
                       _hd245906246767_
                       _tl245907246769_
                       _e245908246772_
                       _hd245909246775_
                       _tl245910246777_
                       _e245911246780_
                       _hd245912246783_
                       _tl245913246785_
                       _e245914246788_
                       _hd245915246791_
                       _tl245916246793_
                       _e245917246796_
                       _hd245918246799_
                       _tl245919246801_
                       _e245920246804_
                       _hd245921246807_
                       _tl245922246809_
                       _e245923246812_
                       _hd245924246815_
                       _tl245925246817_
                       _e245926246820_
                       _hd245927246823_
                       _tl245928246825_
                       ___splice254987254988_
                       _target245929246828_
                       _tl245931246830_)
                      (___match255276255277_
                       _e245899246748_
                       _hd245900246751_
                       _tl245901246753_
                       _e245902246756_
                       _hd245903246759_
                       _tl245904246761_
                       _e245905246764_
                       _hd245906246767_
                       _tl245907246769_
                       _e245908246772_
                       _hd245909246775_
                       _tl245910246777_
                       _e245911246780_
                       _hd245912246783_
                       _tl245913246785_
                       _e245914246788_
                       _hd245915246791_
                       _tl245916246793_
                       _e245917246796_
                       _hd245918246799_
                       _tl245919246801_
                       _e245920246804_
                       _hd245921246807_
                       _tl245922246809_
                       _e245923246812_
                       _hd245924246815_
                       _tl245925246817_
                       _e245926246820_
                       _hd245927246823_
                       _tl245928246825_))))
              (___match255276255277_
               _e245899246748_
               _hd245900246751_
               _tl245901246753_
               _e245902246756_
               _hd245903246759_
               _tl245904246761_
               _e245905246764_
               _hd245906246767_
               _tl245907246769_
               _e245908246772_
               _hd245909246775_
               _tl245910246777_
               _e245911246780_
               _hd245912246783_
               _tl245913246785_
               _e245914246788_
               _hd245915246791_
               _tl245916246793_
               _e245917246796_
               _hd245918246799_
               _tl245919246801_
               _e245920246804_
               _hd245921246807_
               _tl245922246809_
               _e245923246812_
               _hd245924246815_
               _tl245925246817_
               _e245926246820_
               _hd245927246823_
               _tl245928246825_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match255480255481_
                                                   _e245899246748_
                                                   _hd245900246751_
                                                   _tl245901246753_
                                                   _e245902246756_
                                                   _hd245903246759_
                                                   _tl245904246761_
                                                   _e245905246764_
                                                   _hd245906246767_
                                                   _tl245907246769_
                                                   _e245908246772_
                                                   _hd245909246775_
                                                   _tl245910246777_
                                                   _e245911246780_
                                                   _hd245912246783_
                                                   _tl245913246785_
                                                   _e245914246788_
                                                   _hd245915246791_
                                                   _tl245916246793_
                                                   _e245917246796_
                                                   _hd245918246799_
                                                   _tl245919246801_
                                                   _e245920246804_
                                                   _hd245921246807_
                                                   _tl245922246809_))))
                                          (___match255480255481_
                                           _e245899246748_
                                           _hd245900246751_
                                           _tl245901246753_
                                           _e245902246756_
                                           _hd245903246759_
                                           _tl245904246761_
                                           _e245905246764_
                                           _hd245906246767_
                                           _tl245907246769_
                                           _e245908246772_
                                           _hd245909246775_
                                           _tl245910246777_
                                           _e245911246780_
                                           _hd245912246783_
                                           _tl245913246785_
                                           _e245914246788_
                                           _hd245915246791_
                                           _tl245916246793_
                                           _e245917246796_
                                           _hd245918246799_
                                           _tl245919246801_
                                           _e245920246804_
                                           _hd245921246807_
                                           _tl245922246809_))
                                      (___match255156255157_
                                       _e245899246748_
                                       _hd245900246751_
                                       _tl245901246753_
                                       _e245902246756_
                                       _hd245903246759_
                                       _tl245904246761_
                                       _e245905246764_
                                       _hd245906246767_
                                       _tl245907246769_
                                       _e245908246772_
                                       _hd245909246775_
                                       _tl245910246777_
                                       _e245911246780_
                                       _hd245912246783_
                                       _tl245913246785_
                                       _e245914246788_
                                       _hd245915246791_
                                       _tl245916246793_
                                       _e245917246796_
                                       _hd245918246799_
                                       _tl245919246801_
                                       _e245920246804_
                                       _hd245921246807_
                                       _tl245922246809_
                                       _e245923246812_
                                       _hd245924246815_
                                       _tl245925246817_))
                                  (___match255480255481_
                                   _e245899246748_
                                   _hd245900246751_
                                   _tl245901246753_
                                   _e245902246756_
                                   _hd245903246759_
                                   _tl245904246761_
                                   _e245905246764_
                                   _hd245906246767_
                                   _tl245907246769_
                                   _e245908246772_
                                   _hd245909246775_
                                   _tl245910246777_
                                   _e245911246780_
                                   _hd245912246783_
                                   _tl245913246785_
                                   _e245914246788_
                                   _hd245915246791_
                                   _tl245916246793_
                                   _e245917246796_
                                   _hd245918246799_
                                   _tl245919246801_
                                   _e245920246804_
                                   _hd245921246807_
                                   _tl245922246809_))))
                          (___match255480255481_
                           _e245899246748_
                           _hd245900246751_
                           _tl245901246753_
                           _e245902246756_
                           _hd245903246759_
                           _tl245904246761_
                           _e245905246764_
                           _hd245906246767_
                           _tl245907246769_
                           _e245908246772_
                           _hd245909246775_
                           _tl245910246777_
                           _e245911246780_
                           _hd245912246783_
                           _tl245913246785_
                           _e245914246788_
                           _hd245915246791_
                           _tl245916246793_
                           _e245917246796_
                           _hd245918246799_
                           _tl245919246801_
                           _e245920246804_
                           _hd245921246807_
                           _tl245922246809_))))
                  (___match255418255419_
                   _e245899246748_
                   _hd245900246751_
                   _tl245901246753_
                   _e245902246756_
                   _hd245903246759_
                   _tl245904246761_
                   _e245905246764_
                   _hd245906246767_
                   _tl245907246769_
                   _e245908246772_
                   _hd245909246775_
                   _tl245910246777_
                   _e245911246780_
                   _hd245912246783_
                   _tl245913246785_
                   _e245914246788_
                   _hd245915246791_
                   _tl245916246793_
                   _e245917246796_
                   _hd245918246799_
                   _tl245919246801_))
              (___kont255001255002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont255001255002_))
                                          (___kont255001255002_))
                                      (___kont255001255002_))))
                              (___kont255001255002_))))
                      (___kont255001255002_))
                  (___kont255001255002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont255001255002_))
                                              (___kont255001255002_))
                                          (___kont255001255002_))))
                                  (___kont255001255002_))))
                          (___kont255001255002_))))
                  (___kont255001255002_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx244825_
               _self244826_
               _$t244827_
               _methods244828_
               _slots244829_
               _class-check244830_
               _struct-check244831_
               _struct-assert244832_)
        (letrec ((_force-e244834_
                  (lambda (_what245877_)
                    (let ((__tmp256359
                           (let ((__tmp256363
                                  (let ((__tmp256364
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp256364)))
                                 (__tmp256360
                                  (let ((__tmp256361
                                         (let ((__tmp256362
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what245877_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp256362))))
                                    (declare (not safe))
                                    (cons __tmp256361 '()))))
                             (declare (not safe))
                             (cons __tmp256363 __tmp256360))))
                      (declare (not safe))
                      (cons '%#call __tmp256359)))))
          (let* ((___stx255485255486_ _stx244825_)
                 (_g244842245064_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx255485255486_)))))
            (let ((___kont255487255488_
                   (lambda (_L245823_ _L245824_ _L245825_ _L245826_)
                     (let ((_$method245871_
                            (let ((__tmp256365
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245824_))))
                              (declare (not safe))
                              (table-ref _methods244828_ __tmp256365)))
                           (_args245872_
                            (map (lambda (_g245859245861_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245859245861_
                                      _self244826_
                                      _$t244827_
                                      _methods244828_
                                      _slots244829_
                                      _class-check244830_
                                      _struct-check244831_
                                      _struct-assert244832_)))
                                 (let ((__tmp256366
                                        (lambda (_g245863245866_
                                                 _g245864245868_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245863245866_
                                                  _g245864245868_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp256366 '() _L245823_)))))
                       (let ((__tmp256367
                              (let ((__tmp256368
                                     (let ((__tmp256372
                                            (let ()
                                              (declare (not safe))
                                              (_force-e244834_
                                               _$method245871_)))
                                           (__tmp256369
                                            (let ((__tmp256370
                                                   (let ((__tmp256371
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self244826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp256371))))
                                              (declare (not safe))
                                              (cons __tmp256370
                                                    _args245872_))))
                                       (declare (not safe))
                                       (cons __tmp256372 __tmp256369))))
                                (declare (not safe))
                                (cons '%#call __tmp256368))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp256367 _stx244825_)))))
                  (___kont255491255492_
                   (lambda (_L245655_ _L245656_ _L245657_ _L245658_ _L245659_)
                     (let ((_$method245711_
                            (let ((__tmp256373
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245656_))))
                              (declare (not safe))
                              (table-ref _methods244828_ __tmp256373)))
                           (_args245712_
                            (map (lambda (_g245699245701_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g245699245701_
                                      _self244826_
                                      _$t244827_
                                      _methods244828_
                                      _slots244829_
                                      _class-check244830_
                                      _struct-check244831_
                                      _struct-assert244832_)))
                                 (let ((__tmp256374
                                        (lambda (_g245703245706_
                                                 _g245704245708_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g245703245706_
                                                  _g245704245708_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp256374 '() _L245655_)))))
                       (let ((__tmp256375
                              (let ((__tmp256376
                                     (let ((__tmp256382
                                            (let ((__tmp256383
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp256383)))
                                           (__tmp256377
                                            (let ((__tmp256381
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e244834_
                                                      _$method245711_)))
                                                  (__tmp256378
                                                   (let ((__tmp256379
                                                          (let ((__tmp256380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244826_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp256380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp256379
                                                           _args245712_))))
                                              (declare (not safe))
                                              (cons __tmp256381 __tmp256378))))
                                       (declare (not safe))
                                       (cons __tmp256382 __tmp256377))))
                                (declare (not safe))
                                (cons '%#call __tmp256376))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp256375 _stx244825_)))))
                  (___kont255495255496_
                   (lambda (_L245486_ _L245487_ _L245488_)
                     (let* ((_$field245520_
                             (let ((__tmp256384
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L245486_))))
                               (declare (not safe))
                               (table-ref _slots244829_ __tmp256384)))
                            (__tmp256385
                             (let ((__tmp256386
                                    (let ((__tmp256393
                                           (let ((__tmp256394
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t244827_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp256394)))
                                          (__tmp256387
                                           (let ((__tmp256391
                                                  (let ((__tmp256392
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field245520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp256392)))
                                                 (__tmp256388
                                                  (let ((__tmp256389
                                                         (let ((__tmp256390
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self244826_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp256390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp256389 '()))))
                                             (declare (not safe))
                                             (cons __tmp256391 __tmp256388))))
                                      (declare (not safe))
                                      (cons __tmp256393 __tmp256387))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp256386))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp256385 _stx244825_))))
                  (___kont255497255498_
                   (lambda (_L245360_ _L245361_ _L245362_ _L245363_)
                     (let ((_$field245398_
                            (let ((__tmp256395
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L245361_))))
                              (declare (not safe))
                              (table-ref _slots244829_ __tmp256395)))
                           (_expr245399_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L245360_
                               _self244826_
                               _$t244827_
                               _methods244828_
                               _slots244829_
                               _class-check244830_
                               _struct-check244831_
                               _struct-assert244832_))))
                       (let ((__tmp256396
                              (let ((__tmp256397
                                     (let ((__tmp256405
                                            (let ((__tmp256406
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244827_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp256406)))
                                           (__tmp256398
                                            (let ((__tmp256403
                                                   (let ((__tmp256404
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp256404)))
                                                  (__tmp256399
                                                   (let ((__tmp256401
                                                          (let ((__tmp256402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244826_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp256402)))
                 (__tmp256400
                  (let () (declare (not safe)) (cons _expr245399_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp256401
                                                           __tmp256400))))
                                              (declare (not safe))
                                              (cons __tmp256403 __tmp256399))))
                                       (declare (not safe))
                                       (cons __tmp256405 __tmp256398))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp256397))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp256396 _stx244825_)))))
                  (___kont255499255500_
                   (lambda (_L245239_ _L245240_)
                     (let* ((_slot245262_
                             (##structure-ref
                              (let ((__tmp256407
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245240_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp256407))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field245264_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244829_ _slot245262_))))
                       (let ((__tmp256408
                              (let ((__tmp256409
                                     (let ((__tmp256416
                                            (let ((__tmp256417
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244827_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp256417)))
                                           (__tmp256410
                                            (let ((__tmp256414
                                                   (let ((__tmp256415
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp256415)))
                                                  (__tmp256411
                                                   (let ((__tmp256412
                                                          (let ((__tmp256413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244826_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp256413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp256412 '()))))
                                              (declare (not safe))
                                              (cons __tmp256414 __tmp256411))))
                                       (declare (not safe))
                                       (cons __tmp256416 __tmp256410))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp256409))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp256408 _stx244825_)))))
                  (___kont255501255502_
                   (lambda (_L245140_ _L245141_ _L245142_)
                     (let* ((_slot245171_
                             (##structure-ref
                              (let ((__tmp256418
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L245142_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp256418))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field245173_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots244829_ _slot245171_)))
                            (_expr245175_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L245140_
                                _self244826_
                                _$t244827_
                                _methods244828_
                                _slots244829_
                                _class-check244830_
                                _struct-check244831_
                                _struct-assert244832_))))
                       (let ((__tmp256419
                              (let ((__tmp256420
                                     (let ((__tmp256428
                                            (let ((__tmp256429
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t244827_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp256429)))
                                           (__tmp256421
                                            (let ((__tmp256426
                                                   (let ((__tmp256427
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field245173_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp256427)))
                                                  (__tmp256422
                                                   (let ((__tmp256424
                                                          (let ((__tmp256425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self244826_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp256425)))
                 (__tmp256423
                  (let () (declare (not safe)) (cons _expr245175_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp256424
                                                           __tmp256423))))
                                              (declare (not safe))
                                              (cons __tmp256426 __tmp256422))))
                                       (declare (not safe))
                                       (cons __tmp256428 __tmp256421))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp256420))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp256419 _stx244825_)))))
                  (___kont255503255504_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx244825_
                        _self244826_
                        _$t244827_
                        _methods244828_
                        _slots244829_
                        _class-check244830_
                        _struct-check244831_
                        _struct-assert244832_)))))
              (let* ((___match255984255985_
                      (lambda (_e245036245076_
                               _hd245037245079_
                               _tl245038245081_
                               _e245039245084_
                               _hd245040245087_
                               _tl245041245089_
                               _e245042245092_
                               _hd245043245095_
                               _tl245044245097_
                               _e245045245100_
                               _hd245046245103_
                               _tl245047245105_
                               _e245048245108_
                               _hd245049245111_
                               _tl245050245113_
                               _e245051245116_
                               _hd245052245119_
                               _tl245053245121_
                               _e245054245124_
                               _hd245055245127_
                               _tl245056245129_
                               _e245057245132_
                               _hd245058245135_
                               _tl245059245137_)
                        (let ((_L245140_ _hd245058245135_)
                              (_L245141_ _hd245055245127_)
                              (_L245142_ _hd245046245103_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245141_
                                      _self244826_))
                                   (let ((__tmp256430
                                          (let ((__tmp256431
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245142_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp256431))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp256430
                                      'gxc#!mutator::t)))
                              (___kont255501255502_
                               _L245140_
                               _L245141_
                               _L245142_)
                              (___kont255503255504_)))))
                     (___match255982255983_
                      (lambda (_e245036245076_
                               _hd245037245079_
                               _tl245038245081_
                               _e245039245084_
                               _hd245040245087_
                               _tl245041245089_
                               _e245042245092_
                               _hd245043245095_
                               _tl245044245097_
                               _e245045245100_
                               _hd245046245103_
                               _tl245047245105_
                               _e245048245108_
                               _hd245049245111_
                               _tl245050245113_
                               _e245051245116_
                               _hd245052245119_
                               _tl245053245121_
                               _e245054245124_
                               _hd245055245127_
                               _tl245056245129_
                               _e245057245132_
                               _hd245058245135_
                               _tl245059245137_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245059245137_))
                            (___match255984255985_
                             _e245036245076_
                             _hd245037245079_
                             _tl245038245081_
                             _e245039245084_
                             _hd245040245087_
                             _tl245041245089_
                             _e245042245092_
                             _hd245043245095_
                             _tl245044245097_
                             _e245045245100_
                             _hd245046245103_
                             _tl245047245105_
                             _e245048245108_
                             _hd245049245111_
                             _tl245050245113_
                             _e245051245116_
                             _hd245052245119_
                             _tl245053245121_
                             _e245054245124_
                             _hd245055245127_
                             _tl245056245129_
                             _e245057245132_
                             _hd245058245135_
                             _tl245059245137_)
                            (___kont255503255504_))))
                     (___match255976255977_
                      (lambda (_e245036245076_
                               _hd245037245079_
                               _tl245038245081_
                               _e245039245084_
                               _hd245040245087_
                               _tl245041245089_
                               _e245042245092_
                               _hd245043245095_
                               _tl245044245097_
                               _e245045245100_
                               _hd245046245103_
                               _tl245047245105_
                               _e245048245108_
                               _hd245049245111_
                               _tl245050245113_
                               _e245051245116_
                               _hd245052245119_
                               _tl245053245121_
                               _e245054245124_
                               _hd245055245127_
                               _tl245056245129_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245050245113_))
                            (let ((_e245057245132_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245050245113_))))
                              (let ((_tl245059245137_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245057245132_)))
                                    (_hd245058245135_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245057245132_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245059245137_))
                                    (___match255984255985_
                                     _e245036245076_
                                     _hd245037245079_
                                     _tl245038245081_
                                     _e245039245084_
                                     _hd245040245087_
                                     _tl245041245089_
                                     _e245042245092_
                                     _hd245043245095_
                                     _tl245044245097_
                                     _e245045245100_
                                     _hd245046245103_
                                     _tl245047245105_
                                     _e245048245108_
                                     _hd245049245111_
                                     _tl245050245113_
                                     _e245051245116_
                                     _hd245052245119_
                                     _tl245053245121_
                                     _e245054245124_
                                     _hd245055245127_
                                     _tl245056245129_
                                     _e245057245132_
                                     _hd245058245135_
                                     _tl245059245137_)
                                    (___kont255503255504_))))
                            (___kont255503255504_))))
                     (___match255922255923_
                      (lambda (_e245012245183_
                               _hd245013245186_
                               _tl245014245188_
                               _e245015245191_
                               _hd245016245194_
                               _tl245017245196_
                               _e245018245199_
                               _hd245019245202_
                               _tl245020245204_
                               _e245021245207_
                               _hd245022245210_
                               _tl245023245212_
                               _e245024245215_
                               _hd245025245218_
                               _tl245026245220_
                               _e245027245223_
                               _hd245028245226_
                               _tl245029245228_
                               _e245030245231_
                               _hd245031245234_
                               _tl245032245236_)
                        (let ((_L245239_ _hd245031245234_)
                              (_L245240_ _hd245022245210_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245239_
                                      _self244826_))
                                   (let ((__tmp256432
                                          (let ((__tmp256433
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L245240_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp256433))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp256432
                                      'gxc#!accessor::t)))
                              (___kont255499255500_ _L245239_ _L245240_)
                              (___kont255503255504_)))))
                     (___match255920255921_
                      (lambda (_e245012245183_
                               _hd245013245186_
                               _tl245014245188_
                               _e245015245191_
                               _hd245016245194_
                               _tl245017245196_
                               _e245018245199_
                               _hd245019245202_
                               _tl245020245204_
                               _e245021245207_
                               _hd245022245210_
                               _tl245023245212_
                               _e245024245215_
                               _hd245025245218_
                               _tl245026245220_
                               _e245027245223_
                               _hd245028245226_
                               _tl245029245228_
                               _e245030245231_
                               _hd245031245234_
                               _tl245032245236_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245026245220_))
                            (___match255922255923_
                             _e245012245183_
                             _hd245013245186_
                             _tl245014245188_
                             _e245015245191_
                             _hd245016245194_
                             _tl245017245196_
                             _e245018245199_
                             _hd245019245202_
                             _tl245020245204_
                             _e245021245207_
                             _hd245022245210_
                             _tl245023245212_
                             _e245024245215_
                             _hd245025245218_
                             _tl245026245220_
                             _e245027245223_
                             _hd245028245226_
                             _tl245029245228_
                             _e245030245231_
                             _hd245031245234_
                             _tl245032245236_)
                            (___match255976255977_
                             _e245012245183_
                             _hd245013245186_
                             _tl245014245188_
                             _e245015245191_
                             _hd245016245194_
                             _tl245017245196_
                             _e245018245199_
                             _hd245019245202_
                             _tl245020245204_
                             _e245021245207_
                             _hd245022245210_
                             _tl245023245212_
                             _e245024245215_
                             _hd245025245218_
                             _tl245026245220_
                             _e245027245223_
                             _hd245028245226_
                             _tl245029245228_
                             _e245030245231_
                             _hd245031245234_
                             _tl245032245236_))))
                     (___match255866255867_
                      (lambda (_e244977245272_
                               _hd244978245275_
                               _tl244979245277_
                               _e244980245280_
                               _hd244981245283_
                               _tl244982245285_
                               _e244983245288_
                               _hd244984245291_
                               _tl244985245293_
                               _e244986245296_
                               _hd244987245299_
                               _tl244988245301_
                               _e244989245304_
                               _hd244990245307_
                               _tl244991245309_
                               _e244992245312_
                               _hd244993245315_
                               _tl244994245317_
                               _e244995245320_
                               _hd244996245323_
                               _tl244997245325_
                               _e244998245328_
                               _hd244999245331_
                               _tl245000245333_
                               _e245001245336_
                               _hd245002245339_
                               _tl245003245341_
                               _e245004245344_
                               _hd245005245347_
                               _tl245006245349_
                               _e245007245352_
                               _hd245008245355_
                               _tl245009245357_)
                        (let ((_L245360_ _hd245008245355_)
                              (_L245361_ _hd245005245347_)
                              (_L245362_ _hd244996245323_)
                              (_L245363_ _hd244987245299_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L245363_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L245363_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245362_
                                      _self244826_)))
                              (___kont255497255498_
                               _L245360_
                               _L245361_
                               _L245362_
                               _L245363_)
                              (___kont255503255504_)))))
                     (___match255858255859_
                      (lambda (_e244977245272_
                               _hd244978245275_
                               _tl244979245277_
                               _e244980245280_
                               _hd244981245283_
                               _tl244982245285_
                               _e244983245288_
                               _hd244984245291_
                               _tl244985245293_
                               _e244986245296_
                               _hd244987245299_
                               _tl244988245301_
                               _e244989245304_
                               _hd244990245307_
                               _tl244991245309_
                               _e244992245312_
                               _hd244993245315_
                               _tl244994245317_
                               _e244995245320_
                               _hd244996245323_
                               _tl244997245325_
                               _e244998245328_
                               _hd244999245331_
                               _tl245000245333_
                               _e245001245336_
                               _hd245002245339_
                               _tl245003245341_
                               _e245004245344_
                               _hd245005245347_
                               _tl245006245349_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245000245333_))
                            (let ((_e245007245352_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245000245333_))))
                              (let ((_tl245009245357_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245007245352_)))
                                    (_hd245008245355_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245007245352_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl245009245357_))
                                    (___match255866255867_
                                     _e244977245272_
                                     _hd244978245275_
                                     _tl244979245277_
                                     _e244980245280_
                                     _hd244981245283_
                                     _tl244982245285_
                                     _e244983245288_
                                     _hd244984245291_
                                     _tl244985245293_
                                     _e244986245296_
                                     _hd244987245299_
                                     _tl244988245301_
                                     _e244989245304_
                                     _hd244990245307_
                                     _tl244991245309_
                                     _e244992245312_
                                     _hd244993245315_
                                     _tl244994245317_
                                     _e244995245320_
                                     _hd244996245323_
                                     _tl244997245325_
                                     _e244998245328_
                                     _hd244999245331_
                                     _tl245000245333_
                                     _e245001245336_
                                     _hd245002245339_
                                     _tl245003245341_
                                     _e245004245344_
                                     _hd245005245347_
                                     _tl245006245349_
                                     _e245007245352_
                                     _hd245008245355_
                                     _tl245009245357_)
                                    (___kont255503255504_))))
                            (___match255982255983_
                             _e244977245272_
                             _hd244978245275_
                             _tl244979245277_
                             _e244980245280_
                             _hd244981245283_
                             _tl244982245285_
                             _e244983245288_
                             _hd244984245291_
                             _tl244985245293_
                             _e244986245296_
                             _hd244987245299_
                             _tl244988245301_
                             _e244989245304_
                             _hd244990245307_
                             _tl244991245309_
                             _e244992245312_
                             _hd244993245315_
                             _tl244994245317_
                             _e244995245320_
                             _hd244996245323_
                             _tl244997245325_
                             _e244998245328_
                             _hd244999245331_
                             _tl245000245333_))))
                     (___match255780255781_
                      (lambda (_e244943245406_
                               _hd244944245409_
                               _tl244945245411_
                               _e244946245414_
                               _hd244947245417_
                               _tl244948245419_
                               _e244949245422_
                               _hd244950245425_
                               _tl244951245427_
                               _e244952245430_
                               _hd244953245433_
                               _tl244954245435_
                               _e244955245438_
                               _hd244956245441_
                               _tl244957245443_
                               _e244958245446_
                               _hd244959245449_
                               _tl244960245451_
                               _e244961245454_
                               _hd244962245457_
                               _tl244963245459_
                               _e244964245462_
                               _hd244965245465_
                               _tl244966245467_
                               _e244967245470_
                               _hd244968245473_
                               _tl244969245475_
                               _e244970245478_
                               _hd244971245481_
                               _tl244972245483_)
                        (let ((_L245486_ _hd244971245481_)
                              (_L245487_ _hd244962245457_)
                              (_L245488_ _hd244953245433_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L245488_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L245488_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L245487_
                                      _self244826_)))
                              (___kont255495255496_
                               _L245486_
                               _L245487_
                               _L245488_)
                              (___match255984255985_
                               _e244943245406_
                               _hd244944245409_
                               _tl244945245411_
                               _e244946245414_
                               _hd244947245417_
                               _tl244948245419_
                               _e244949245422_
                               _hd244950245425_
                               _tl244951245427_
                               _e244952245430_
                               _hd244953245433_
                               _tl244954245435_
                               _e244955245438_
                               _hd244956245441_
                               _tl244957245443_
                               _e244958245446_
                               _hd244959245449_
                               _tl244960245451_
                               _e244961245454_
                               _hd244962245457_
                               _tl244963245459_
                               _e244964245462_
                               _hd244965245465_
                               _tl244966245467_)))))
                     (___match255778255779_
                      (lambda (_e244943245406_
                               _hd244944245409_
                               _tl244945245411_
                               _e244946245414_
                               _hd244947245417_
                               _tl244948245419_
                               _e244949245422_
                               _hd244950245425_
                               _tl244951245427_
                               _e244952245430_
                               _hd244953245433_
                               _tl244954245435_
                               _e244955245438_
                               _hd244956245441_
                               _tl244957245443_
                               _e244958245446_
                               _hd244959245449_
                               _tl244960245451_
                               _e244961245454_
                               _hd244962245457_
                               _tl244963245459_
                               _e244964245462_
                               _hd244965245465_
                               _tl244966245467_
                               _e244967245470_
                               _hd244968245473_
                               _tl244969245475_
                               _e244970245478_
                               _hd244971245481_
                               _tl244972245483_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl244966245467_))
                            (___match255780255781_
                             _e244943245406_
                             _hd244944245409_
                             _tl244945245411_
                             _e244946245414_
                             _hd244947245417_
                             _tl244948245419_
                             _e244949245422_
                             _hd244950245425_
                             _tl244951245427_
                             _e244952245430_
                             _hd244953245433_
                             _tl244954245435_
                             _e244955245438_
                             _hd244956245441_
                             _tl244957245443_
                             _e244958245446_
                             _hd244959245449_
                             _tl244960245451_
                             _e244961245454_
                             _hd244962245457_
                             _tl244963245459_
                             _e244964245462_
                             _hd244965245465_
                             _tl244966245467_
                             _e244967245470_
                             _hd244968245473_
                             _tl244969245475_
                             _e244970245478_
                             _hd244971245481_
                             _tl244972245483_)
                            (___match255858255859_
                             _e244943245406_
                             _hd244944245409_
                             _tl244945245411_
                             _e244946245414_
                             _hd244947245417_
                             _tl244948245419_
                             _e244949245422_
                             _hd244950245425_
                             _tl244951245427_
                             _e244952245430_
                             _hd244953245433_
                             _tl244954245435_
                             _e244955245438_
                             _hd244956245441_
                             _tl244957245443_
                             _e244958245446_
                             _hd244959245449_
                             _tl244960245451_
                             _e244961245454_
                             _hd244962245457_
                             _tl244963245459_
                             _e244964245462_
                             _hd244965245465_
                             _tl244966245467_
                             _e244967245470_
                             _hd244968245473_
                             _tl244969245475_
                             _e244970245478_
                             _hd244971245481_
                             _tl244972245483_))))
                     (___match255768255769_
                      (lambda (_e244943245406_
                               _hd244944245409_
                               _tl244945245411_
                               _e244946245414_
                               _hd244947245417_
                               _tl244948245419_
                               _e244949245422_
                               _hd244950245425_
                               _tl244951245427_
                               _e244952245430_
                               _hd244953245433_
                               _tl244954245435_
                               _e244955245438_
                               _hd244956245441_
                               _tl244957245443_
                               _e244958245446_
                               _hd244959245449_
                               _tl244960245451_
                               _e244961245454_
                               _hd244962245457_
                               _tl244963245459_
                               _e244964245462_
                               _hd244965245465_
                               _tl244966245467_
                               _e244967245470_
                               _hd244968245473_
                               _tl244969245475_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd244968245473_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244969245475_))
                                (let ((_e244970245478_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244969245475_))))
                                  (let ((_tl244972245483_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244970245478_)))
                                        (_hd244971245481_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244970245478_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244972245483_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl244966245467_))
                                            (___match255780255781_
                                             _e244943245406_
                                             _hd244944245409_
                                             _tl244945245411_
                                             _e244946245414_
                                             _hd244947245417_
                                             _tl244948245419_
                                             _e244949245422_
                                             _hd244950245425_
                                             _tl244951245427_
                                             _e244952245430_
                                             _hd244953245433_
                                             _tl244954245435_
                                             _e244955245438_
                                             _hd244956245441_
                                             _tl244957245443_
                                             _e244958245446_
                                             _hd244959245449_
                                             _tl244960245451_
                                             _e244961245454_
                                             _hd244962245457_
                                             _tl244963245459_
                                             _e244964245462_
                                             _hd244965245465_
                                             _tl244966245467_
                                             _e244967245470_
                                             _hd244968245473_
                                             _tl244969245475_
                                             _e244970245478_
                                             _hd244971245481_
                                             _tl244972245483_)
                                            (___match255858255859_
                                             _e244943245406_
                                             _hd244944245409_
                                             _tl244945245411_
                                             _e244946245414_
                                             _hd244947245417_
                                             _tl244948245419_
                                             _e244949245422_
                                             _hd244950245425_
                                             _tl244951245427_
                                             _e244952245430_
                                             _hd244953245433_
                                             _tl244954245435_
                                             _e244955245438_
                                             _hd244956245441_
                                             _tl244957245443_
                                             _e244958245446_
                                             _hd244959245449_
                                             _tl244960245451_
                                             _e244961245454_
                                             _hd244962245457_
                                             _tl244963245459_
                                             _e244964245462_
                                             _hd244965245465_
                                             _tl244966245467_
                                             _e244967245470_
                                             _hd244968245473_
                                             _tl244969245475_
                                             _e244970245478_
                                             _hd244971245481_
                                             _tl244972245483_))
                                        (___match255982255983_
                                         _e244943245406_
                                         _hd244944245409_
                                         _tl244945245411_
                                         _e244946245414_
                                         _hd244947245417_
                                         _tl244948245419_
                                         _e244949245422_
                                         _hd244950245425_
                                         _tl244951245427_
                                         _e244952245430_
                                         _hd244953245433_
                                         _tl244954245435_
                                         _e244955245438_
                                         _hd244956245441_
                                         _tl244957245443_
                                         _e244958245446_
                                         _hd244959245449_
                                         _tl244960245451_
                                         _e244961245454_
                                         _hd244962245457_
                                         _tl244963245459_
                                         _e244964245462_
                                         _hd244965245465_
                                         _tl244966245467_))))
                                (___match255982255983_
                                 _e244943245406_
                                 _hd244944245409_
                                 _tl244945245411_
                                 _e244946245414_
                                 _hd244947245417_
                                 _tl244948245419_
                                 _e244949245422_
                                 _hd244950245425_
                                 _tl244951245427_
                                 _e244952245430_
                                 _hd244953245433_
                                 _tl244954245435_
                                 _e244955245438_
                                 _hd244956245441_
                                 _tl244957245443_
                                 _e244958245446_
                                 _hd244959245449_
                                 _tl244960245451_
                                 _e244961245454_
                                 _hd244962245457_
                                 _tl244963245459_
                                 _e244964245462_
                                 _hd244965245465_
                                 _tl244966245467_))
                            (___match255982255983_
                             _e244943245406_
                             _hd244944245409_
                             _tl244945245411_
                             _e244946245414_
                             _hd244947245417_
                             _tl244948245419_
                             _e244949245422_
                             _hd244950245425_
                             _tl244951245427_
                             _e244952245430_
                             _hd244953245433_
                             _tl244954245435_
                             _e244955245438_
                             _hd244956245441_
                             _tl244957245443_
                             _e244958245446_
                             _hd244959245449_
                             _tl244960245451_
                             _e244961245454_
                             _hd244962245457_
                             _tl244963245459_
                             _e244964245462_
                             _hd244965245465_
                             _tl244966245467_))))
                     (___match255700255701_
                      (lambda (_e244892245527_
                               _hd244893245530_
                               _tl244894245532_
                               _e244895245535_
                               _hd244896245538_
                               _tl244897245540_
                               _e244898245543_
                               _hd244899245546_
                               _tl244900245548_
                               _e244901245551_
                               _hd244902245554_
                               _tl244903245556_
                               _e244904245559_
                               _hd244905245562_
                               _tl244906245564_
                               _e244907245567_
                               _hd244908245570_
                               _tl244909245572_
                               _e244910245575_
                               _hd244911245578_
                               _tl244912245580_
                               _e244913245583_
                               _hd244914245586_
                               _tl244915245588_
                               _e244916245591_
                               _hd244917245594_
                               _tl244918245596_
                               _e244919245599_
                               _hd244920245602_
                               _tl244921245604_
                               _e244922245607_
                               _hd244923245610_
                               _tl244924245612_
                               _e244925245615_
                               _hd244926245618_
                               _tl244927245620_
                               _e244928245623_
                               _hd244929245626_
                               _tl244930245628_
                               ___splice255493255494_
                               _target244931245631_
                               _tl244933245633_)
                        (letrec ((_loop244934245636_
                                  (lambda (_hd244932245639_ _args244938245641_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244932245639_))
                                        (let ((_e244935245644_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244932245639_))))
                                          (let ((_lp-tl244937245649_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244935245644_)))
                                                (_lp-hd244936245647_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244935245644_))))
                                            (let ((__tmp256434
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244936245647_
                                                           _args244938245641_))))
                                              (declare (not safe))
                                              (_loop244934245636_
                                               _lp-tl244937245649_
                                               __tmp256434))))
                                        (let ((_args244939245652_
                                               (reverse _args244938245641_)))
                                          (let ((_L245655_ _args244939245652_)
                                                (_L245656_ _hd244929245626_)
                                                (_L245657_ _hd244920245602_)
                                                (_L245658_ _hd244911245578_)
                                                (_L245659_ _hd244902245554_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245659_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245658_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245657_
                                                        _self244826_)))
                                                (___kont255491255492_
                                                 _L245655_
                                                 _L245656_
                                                 _L245657_
                                                 _L245658_
                                                 _L245659_)
                                                (___kont255503255504_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244934245636_ _target244931245631_ '())))))
                     (___match255658255659_
                      (lambda (_e244892245527_
                               _hd244893245530_
                               _tl244894245532_
                               _e244895245535_
                               _hd244896245538_
                               _tl244897245540_
                               _e244898245543_
                               _hd244899245546_
                               _tl244900245548_
                               _e244901245551_
                               _hd244902245554_
                               _tl244903245556_
                               _e244904245559_
                               _hd244905245562_
                               _tl244906245564_
                               _e244907245567_
                               _hd244908245570_
                               _tl244909245572_
                               _e244910245575_
                               _hd244911245578_
                               _tl244912245580_
                               _e244913245583_
                               _hd244914245586_
                               _tl244915245588_
                               _e244916245591_
                               _hd244917245594_
                               _tl244918245596_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd244917245594_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl244918245596_))
                                (let ((_e244919245599_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl244918245596_))))
                                  (let ((_tl244921245604_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244919245599_)))
                                        (_hd244920245602_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244919245599_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl244921245604_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244915245588_))
                                            (let ((_e244922245607_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244915245588_))))
                                              (let ((_tl244924245612_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244922245607_)))
                                                    (_hd244923245610_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244922245607_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd244923245610_))
                                                    (let ((_e244925245615_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd244923245610_))))
                                                      (let ((_tl244927245620_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244925245615_)))
                    (_hd244926245618_
                     (let () (declare (not safe)) (##car _e244925245615_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd244926245618_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd244926245618_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244927245620_))
                            (let ((_e244928245623_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244927245620_))))
                              (let ((_tl244930245628_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244928245623_)))
                                    (_hd244929245626_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244928245623_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl244930245628_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl244924245612_))
                                        (let ((___splice255493255494_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl244924245612_
                                                  '0))))
                                          (let ((_tl244933245633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice255493255494_
                                                    '1)))
                                                (_target244931245631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice255493255494_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl244933245633_))
                                                (___match255700255701_
                                                 _e244892245527_
                                                 _hd244893245530_
                                                 _tl244894245532_
                                                 _e244895245535_
                                                 _hd244896245538_
                                                 _tl244897245540_
                                                 _e244898245543_
                                                 _hd244899245546_
                                                 _tl244900245548_
                                                 _e244901245551_
                                                 _hd244902245554_
                                                 _tl244903245556_
                                                 _e244904245559_
                                                 _hd244905245562_
                                                 _tl244906245564_
                                                 _e244907245567_
                                                 _hd244908245570_
                                                 _tl244909245572_
                                                 _e244910245575_
                                                 _hd244911245578_
                                                 _tl244912245580_
                                                 _e244913245583_
                                                 _hd244914245586_
                                                 _tl244915245588_
                                                 _e244916245591_
                                                 _hd244917245594_
                                                 _tl244918245596_
                                                 _e244919245599_
                                                 _hd244920245602_
                                                 _tl244921245604_
                                                 _e244922245607_
                                                 _hd244923245610_
                                                 _tl244924245612_
                                                 _e244925245615_
                                                 _hd244926245618_
                                                 _tl244927245620_
                                                 _e244928245623_
                                                 _hd244929245626_
                                                 _tl244930245628_
                                                 ___splice255493255494_
                                                 _target244931245631_
                                                 _tl244933245633_)
                                                (___kont255503255504_))))
                                        (___kont255503255504_))
                                    (___kont255503255504_))))
                            (___kont255503255504_))
                        (___kont255503255504_))
                    (___kont255503255504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255503255504_))))
                                            (___match255982255983_
                                             _e244892245527_
                                             _hd244893245530_
                                             _tl244894245532_
                                             _e244895245535_
                                             _hd244896245538_
                                             _tl244897245540_
                                             _e244898245543_
                                             _hd244899245546_
                                             _tl244900245548_
                                             _e244901245551_
                                             _hd244902245554_
                                             _tl244903245556_
                                             _e244904245559_
                                             _hd244905245562_
                                             _tl244906245564_
                                             _e244907245567_
                                             _hd244908245570_
                                             _tl244909245572_
                                             _e244910245575_
                                             _hd244911245578_
                                             _tl244912245580_
                                             _e244913245583_
                                             _hd244914245586_
                                             _tl244915245588_))
                                        (___match255982255983_
                                         _e244892245527_
                                         _hd244893245530_
                                         _tl244894245532_
                                         _e244895245535_
                                         _hd244896245538_
                                         _tl244897245540_
                                         _e244898245543_
                                         _hd244899245546_
                                         _tl244900245548_
                                         _e244901245551_
                                         _hd244902245554_
                                         _tl244903245556_
                                         _e244904245559_
                                         _hd244905245562_
                                         _tl244906245564_
                                         _e244907245567_
                                         _hd244908245570_
                                         _tl244909245572_
                                         _e244910245575_
                                         _hd244911245578_
                                         _tl244912245580_
                                         _e244913245583_
                                         _hd244914245586_
                                         _tl244915245588_))))
                                (___match255982255983_
                                 _e244892245527_
                                 _hd244893245530_
                                 _tl244894245532_
                                 _e244895245535_
                                 _hd244896245538_
                                 _tl244897245540_
                                 _e244898245543_
                                 _hd244899245546_
                                 _tl244900245548_
                                 _e244901245551_
                                 _hd244902245554_
                                 _tl244903245556_
                                 _e244904245559_
                                 _hd244905245562_
                                 _tl244906245564_
                                 _e244907245567_
                                 _hd244908245570_
                                 _tl244909245572_
                                 _e244910245575_
                                 _hd244911245578_
                                 _tl244912245580_
                                 _e244913245583_
                                 _hd244914245586_
                                 _tl244915245588_))
                            (___match255768255769_
                             _e244892245527_
                             _hd244893245530_
                             _tl244894245532_
                             _e244895245535_
                             _hd244896245538_
                             _tl244897245540_
                             _e244898245543_
                             _hd244899245546_
                             _tl244900245548_
                             _e244901245551_
                             _hd244902245554_
                             _tl244903245556_
                             _e244904245559_
                             _hd244905245562_
                             _tl244906245564_
                             _e244907245567_
                             _hd244908245570_
                             _tl244909245572_
                             _e244910245575_
                             _hd244911245578_
                             _tl244912245580_
                             _e244913245583_
                             _hd244914245586_
                             _tl244915245588_
                             _e244916245591_
                             _hd244917245594_
                             _tl244918245596_))))
                     (___match255590255591_
                      (lambda (_e244848245719_
                               _hd244849245722_
                               _tl244850245724_
                               _e244851245727_
                               _hd244852245730_
                               _tl244853245732_
                               _e244854245735_
                               _hd244855245738_
                               _tl244856245740_
                               _e244857245743_
                               _hd244858245746_
                               _tl244859245748_
                               _e244860245751_
                               _hd244861245754_
                               _tl244862245756_
                               _e244863245759_
                               _hd244864245762_
                               _tl244865245764_
                               _e244866245767_
                               _hd244867245770_
                               _tl244868245772_
                               _e244869245775_
                               _hd244870245778_
                               _tl244871245780_
                               _e244872245783_
                               _hd244873245786_
                               _tl244874245788_
                               _e244875245791_
                               _hd244876245794_
                               _tl244877245796_
                               ___splice255489255490_
                               _target244878245799_
                               _tl244880245801_)
                        (letrec ((_loop244881245804_
                                  (lambda (_hd244879245807_ _args244885245809_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd244879245807_))
                                        (let ((_e244882245812_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd244879245807_))))
                                          (let ((_lp-tl244884245817_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e244882245812_)))
                                                (_lp-hd244883245815_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e244882245812_))))
                                            (let ((__tmp256435
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd244883245815_
                                                           _args244885245809_))))
                                              (declare (not safe))
                                              (_loop244881245804_
                                               _lp-tl244884245817_
                                               __tmp256435))))
                                        (let ((_args244886245820_
                                               (reverse _args244885245809_)))
                                          (let ((_L245823_ _args244886245820_)
                                                (_L245824_ _hd244876245794_)
                                                (_L245825_ _hd244867245770_)
                                                (_L245826_ _hd244858245746_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L245826_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L245825_
                                                        _self244826_)))
                                                (___kont255487255488_
                                                 _L245823_
                                                 _L245824_
                                                 _L245825_
                                                 _L245826_)
                                                (___match255778255779_
                                                 _e244848245719_
                                                 _hd244849245722_
                                                 _tl244850245724_
                                                 _e244851245727_
                                                 _hd244852245730_
                                                 _tl244853245732_
                                                 _e244854245735_
                                                 _hd244855245738_
                                                 _tl244856245740_
                                                 _e244857245743_
                                                 _hd244858245746_
                                                 _tl244859245748_
                                                 _e244860245751_
                                                 _hd244861245754_
                                                 _tl244862245756_
                                                 _e244863245759_
                                                 _hd244864245762_
                                                 _tl244865245764_
                                                 _e244866245767_
                                                 _hd244867245770_
                                                 _tl244868245772_
                                                 _e244869245775_
                                                 _hd244870245778_
                                                 _tl244871245780_
                                                 _e244872245783_
                                                 _hd244873245786_
                                                 _tl244874245788_
                                                 _e244875245791_
                                                 _hd244876245794_
                                                 _tl244877245796_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop244881245804_ _target244878245799_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx255485255486_))
                    (let ((_e244848245719_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx255485255486_))))
                      (let ((_tl244850245724_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244848245719_)))
                            (_hd244849245722_
                             (let ()
                               (declare (not safe))
                               (##car _e244848245719_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl244850245724_))
                            (let ((_e244851245727_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl244850245724_))))
                              (let ((_tl244853245732_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244851245727_)))
                                    (_hd244852245730_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244851245727_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd244852245730_))
                                    (let ((_e244854245735_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd244852245730_))))
                                      (let ((_tl244856245740_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e244854245735_)))
                                            (_hd244855245738_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e244854245735_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd244855245738_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd244855245738_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl244856245740_))
                                                    (let ((_e244857245743_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl244856245740_))))
                                                      (let ((_tl244859245748_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e244857245743_)))
                    (_hd244858245746_
                     (let () (declare (not safe)) (##car _e244857245743_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl244859245748_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl244853245732_))
                        (let ((_e244860245751_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl244853245732_))))
                          (let ((_tl244862245756_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e244860245751_)))
                                (_hd244861245754_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e244860245751_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd244861245754_))
                                (let ((_e244863245759_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd244861245754_))))
                                  (let ((_tl244865245764_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e244863245759_)))
                                        (_hd244864245762_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e244863245759_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd244864245762_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd244864245762_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl244865245764_))
                                                (let ((_e244866245767_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl244865245764_))))
                                                  (let ((_tl244868245772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e244866245767_)))
                                                        (_hd244867245770_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e244866245767_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl244868245772_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl244862245756_))
                                                            (let ((_e244869245775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl244862245756_))))
                      (let ((_tl244871245780_
                             (let ()
                               (declare (not safe))
                               (##cdr _e244869245775_)))
                            (_hd244870245778_
                             (let ()
                               (declare (not safe))
                               (##car _e244869245775_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd244870245778_))
                            (let ((_e244872245783_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd244870245778_))))
                              (let ((_tl244874245788_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e244872245783_)))
                                    (_hd244873245786_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e244872245783_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd244873245786_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd244873245786_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl244874245788_))
                                            (let ((_e244875245791_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl244874245788_))))
                                              (let ((_tl244877245796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e244875245791_)))
                                                    (_hd244876245794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e244875245791_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl244877245796_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl244871245780_))
                                                        (let ((___splice255489255490_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl244871245780_ '0))))
                  (let ((_tl244880245801_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice255489255490_ '1)))
                        (_target244878245799_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice255489255490_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl244880245801_))
                        (___match255590255591_
                         _e244848245719_
                         _hd244849245722_
                         _tl244850245724_
                         _e244851245727_
                         _hd244852245730_
                         _tl244853245732_
                         _e244854245735_
                         _hd244855245738_
                         _tl244856245740_
                         _e244857245743_
                         _hd244858245746_
                         _tl244859245748_
                         _e244860245751_
                         _hd244861245754_
                         _tl244862245756_
                         _e244863245759_
                         _hd244864245762_
                         _tl244865245764_
                         _e244866245767_
                         _hd244867245770_
                         _tl244868245772_
                         _e244869245775_
                         _hd244870245778_
                         _tl244871245780_
                         _e244872245783_
                         _hd244873245786_
                         _tl244874245788_
                         _e244875245791_
                         _hd244876245794_
                         _tl244877245796_
                         ___splice255489255490_
                         _target244878245799_
                         _tl244880245801_)
                        (___match255778255779_
                         _e244848245719_
                         _hd244849245722_
                         _tl244850245724_
                         _e244851245727_
                         _hd244852245730_
                         _tl244853245732_
                         _e244854245735_
                         _hd244855245738_
                         _tl244856245740_
                         _e244857245743_
                         _hd244858245746_
                         _tl244859245748_
                         _e244860245751_
                         _hd244861245754_
                         _tl244862245756_
                         _e244863245759_
                         _hd244864245762_
                         _tl244865245764_
                         _e244866245767_
                         _hd244867245770_
                         _tl244868245772_
                         _e244869245775_
                         _hd244870245778_
                         _tl244871245780_
                         _e244872245783_
                         _hd244873245786_
                         _tl244874245788_
                         _e244875245791_
                         _hd244876245794_
                         _tl244877245796_))))
                (___match255778255779_
                 _e244848245719_
                 _hd244849245722_
                 _tl244850245724_
                 _e244851245727_
                 _hd244852245730_
                 _tl244853245732_
                 _e244854245735_
                 _hd244855245738_
                 _tl244856245740_
                 _e244857245743_
                 _hd244858245746_
                 _tl244859245748_
                 _e244860245751_
                 _hd244861245754_
                 _tl244862245756_
                 _e244863245759_
                 _hd244864245762_
                 _tl244865245764_
                 _e244866245767_
                 _hd244867245770_
                 _tl244868245772_
                 _e244869245775_
                 _hd244870245778_
                 _tl244871245780_
                 _e244872245783_
                 _hd244873245786_
                 _tl244874245788_
                 _e244875245791_
                 _hd244876245794_
                 _tl244877245796_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match255982255983_
                                                     _e244848245719_
                                                     _hd244849245722_
                                                     _tl244850245724_
                                                     _e244851245727_
                                                     _hd244852245730_
                                                     _tl244853245732_
                                                     _e244854245735_
                                                     _hd244855245738_
                                                     _tl244856245740_
                                                     _e244857245743_
                                                     _hd244858245746_
                                                     _tl244859245748_
                                                     _e244860245751_
                                                     _hd244861245754_
                                                     _tl244862245756_
                                                     _e244863245759_
                                                     _hd244864245762_
                                                     _tl244865245764_
                                                     _e244866245767_
                                                     _hd244867245770_
                                                     _tl244868245772_
                                                     _e244869245775_
                                                     _hd244870245778_
                                                     _tl244871245780_))))
                                            (___match255982255983_
                                             _e244848245719_
                                             _hd244849245722_
                                             _tl244850245724_
                                             _e244851245727_
                                             _hd244852245730_
                                             _tl244853245732_
                                             _e244854245735_
                                             _hd244855245738_
                                             _tl244856245740_
                                             _e244857245743_
                                             _hd244858245746_
                                             _tl244859245748_
                                             _e244860245751_
                                             _hd244861245754_
                                             _tl244862245756_
                                             _e244863245759_
                                             _hd244864245762_
                                             _tl244865245764_
                                             _e244866245767_
                                             _hd244867245770_
                                             _tl244868245772_
                                             _e244869245775_
                                             _hd244870245778_
                                             _tl244871245780_))
                                        (___match255658255659_
                                         _e244848245719_
                                         _hd244849245722_
                                         _tl244850245724_
                                         _e244851245727_
                                         _hd244852245730_
                                         _tl244853245732_
                                         _e244854245735_
                                         _hd244855245738_
                                         _tl244856245740_
                                         _e244857245743_
                                         _hd244858245746_
                                         _tl244859245748_
                                         _e244860245751_
                                         _hd244861245754_
                                         _tl244862245756_
                                         _e244863245759_
                                         _hd244864245762_
                                         _tl244865245764_
                                         _e244866245767_
                                         _hd244867245770_
                                         _tl244868245772_
                                         _e244869245775_
                                         _hd244870245778_
                                         _tl244871245780_
                                         _e244872245783_
                                         _hd244873245786_
                                         _tl244874245788_))
                                    (___match255982255983_
                                     _e244848245719_
                                     _hd244849245722_
                                     _tl244850245724_
                                     _e244851245727_
                                     _hd244852245730_
                                     _tl244853245732_
                                     _e244854245735_
                                     _hd244855245738_
                                     _tl244856245740_
                                     _e244857245743_
                                     _hd244858245746_
                                     _tl244859245748_
                                     _e244860245751_
                                     _hd244861245754_
                                     _tl244862245756_
                                     _e244863245759_
                                     _hd244864245762_
                                     _tl244865245764_
                                     _e244866245767_
                                     _hd244867245770_
                                     _tl244868245772_
                                     _e244869245775_
                                     _hd244870245778_
                                     _tl244871245780_))))
                            (___match255982255983_
                             _e244848245719_
                             _hd244849245722_
                             _tl244850245724_
                             _e244851245727_
                             _hd244852245730_
                             _tl244853245732_
                             _e244854245735_
                             _hd244855245738_
                             _tl244856245740_
                             _e244857245743_
                             _hd244858245746_
                             _tl244859245748_
                             _e244860245751_
                             _hd244861245754_
                             _tl244862245756_
                             _e244863245759_
                             _hd244864245762_
                             _tl244865245764_
                             _e244866245767_
                             _hd244867245770_
                             _tl244868245772_
                             _e244869245775_
                             _hd244870245778_
                             _tl244871245780_))))
                    (___match255920255921_
                     _e244848245719_
                     _hd244849245722_
                     _tl244850245724_
                     _e244851245727_
                     _hd244852245730_
                     _tl244853245732_
                     _e244854245735_
                     _hd244855245738_
                     _tl244856245740_
                     _e244857245743_
                     _hd244858245746_
                     _tl244859245748_
                     _e244860245751_
                     _hd244861245754_
                     _tl244862245756_
                     _e244863245759_
                     _hd244864245762_
                     _tl244865245764_
                     _e244866245767_
                     _hd244867245770_
                     _tl244868245772_))
                (___kont255503255504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont255503255504_))
                                            (___kont255503255504_))
                                        (___kont255503255504_))))
                                (___kont255503255504_))))
                        (___kont255503255504_))
                    (___kont255503255504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont255503255504_))
                                                (___kont255503255504_))
                                            (___kont255503255504_))))
                                    (___kont255503255504_))))
                            (___kont255503255504_))))
                    (___kont255503255504_))))))))))
