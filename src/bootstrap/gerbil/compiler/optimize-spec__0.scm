(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707616241)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl247140_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252736 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl247140_ __tmp252736))
           (let ()
             (declare (not safe))
             (table-set! _tbl247140_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247140_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247140_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247140_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl247140_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx247123_ . _args247125_)
        (let ((__tmp252738
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247125_)
                     (gxc#compile-e__0 _stx247123_)
                     (let ((_arg1247130_ (car _args247125_))
                           (_rest247132_ (cdr _args247125_)))
                       (if (null? _rest247132_)
                           (gxc#compile-e__1 _stx247123_ _arg1247130_)
                           (let ((_arg2247135_ (car _rest247132_))
                                 (_rest247137_ (cdr _rest247132_)))
                             (if (null? _rest247137_)
                                 (gxc#compile-e__2
                                  _stx247123_
                                  _arg1247130_
                                  _arg2247135_)
                                 (apply gxc#compile-e
                                        _stx247123_
                                        _arg1247130_
                                        _arg2247135_
                                        _rest247137_))))))))
              (__tmp252737 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp252738
           gxc#current-compile-methods
           __tmp252737))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl247120_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252739 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl247120_ __tmp252739))
           (let ()
             (declare (not safe))
             (table-set! _tbl247120_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247120_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247120_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247120_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl247120_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247120_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl247120_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247120_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl247120_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx247103_ . _args247105_)
        (let ((__tmp252741
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247105_)
                     (gxc#compile-e__0 _stx247103_)
                     (let ((_arg1247110_ (car _args247105_))
                           (_rest247112_ (cdr _args247105_)))
                       (if (null? _rest247112_)
                           (gxc#compile-e__1 _stx247103_ _arg1247110_)
                           (let ((_arg2247115_ (car _rest247112_))
                                 (_rest247117_ (cdr _rest247112_)))
                             (if (null? _rest247117_)
                                 (gxc#compile-e__2
                                  _stx247103_
                                  _arg1247110_
                                  _arg2247115_)
                                 (apply gxc#compile-e
                                        _stx247103_
                                        _arg1247110_
                                        _arg2247115_
                                        _rest247117_))))))))
              (__tmp252740 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252741
           gxc#current-compile-methods
           __tmp252740))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl247100_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252742 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl247100_ __tmp252742))
           (let ()
             (declare (not safe))
             (table-set! _tbl247100_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247100_ '%#call gxc#subst-object-refs-call%))
           _tbl247100_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx247083_ . _args247085_)
        (let ((__tmp252744
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247085_)
                     (gxc#compile-e__0 _stx247083_)
                     (let ((_arg1247090_ (car _args247085_))
                           (_rest247092_ (cdr _args247085_)))
                       (if (null? _rest247092_)
                           (gxc#compile-e__1 _stx247083_ _arg1247090_)
                           (let ((_arg2247095_ (car _rest247092_))
                                 (_rest247097_ (cdr _rest247092_)))
                             (if (null? _rest247097_)
                                 (gxc#compile-e__2
                                  _stx247083_
                                  _arg1247090_
                                  _arg2247095_)
                                 (apply gxc#compile-e
                                        _stx247083_
                                        _arg1247090_
                                        _arg2247095_
                                        _rest247097_))))))))
              (__tmp252743 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252744
           gxc#current-compile-methods
           __tmp252743))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx243753_)
        (letrec ((_generate-method-bind243755_
                  (lambda (_$t247077_ _id247078_ _$id247079_)
                    (let ((_$tmp247081_
                           (let ((__tmp252745 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252745))))
                      (let ((__tmp252790
                             (let ()
                               (declare (not safe))
                               (cons _$id247079_ '())))
                            (__tmp252746
                             (let ((__tmp252747
                                    (let ((__tmp252748
                                           (let ((__tmp252788
                                                  (let ((__tmp252789
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252789)))
                                                 (__tmp252749
                                                  (let ((__tmp252750
                                                         (let ((__tmp252751
                                                                (let ((__tmp252752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252753
                                      (let ((__tmp252754
                                             (let ((__tmp252774
                                                    (let ((__tmp252775
                                                           (let ((__tmp252787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp247081_ '())))
                         (__tmp252776
                          (let ((__tmp252777
                                 (let ((__tmp252778
                                        (let ((__tmp252785
                                               (let ((__tmp252786
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252786)))
                                              (__tmp252779
                                               (let ((__tmp252783
                                                      (let ((__tmp252784
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t247077_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp252784)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252780
                                                      (let ((__tmp252781
                                                             (let ((__tmp252782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id247078_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp252782))))
                (declare (not safe))
                (cons __tmp252781 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252783
                                                       __tmp252780))))
                                          (declare (not safe))
                                          (cons __tmp252785 __tmp252779))))
                                   (declare (not safe))
                                   (cons '%#call __tmp252778))))
                            (declare (not safe))
                            (cons __tmp252777 '()))))
                     (declare (not safe))
                     (cons __tmp252787 __tmp252776))))
              (declare (not safe))
              (cons __tmp252775 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252755
                                                    (let ((__tmp252756
                                                           (let ((__tmp252757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252772
                                 (let ((__tmp252773
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp247081_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp252773)))
                                (__tmp252758
                                 (let ((__tmp252770
                                        (let ((__tmp252771
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp247081_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp252771)))
                                       (__tmp252759
                                        (let ((__tmp252760
                                               (let ((__tmp252761
                                                      (let ((__tmp252768
                                                             (let ((__tmp252769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252769)))
                    (__tmp252762
                     (let ((__tmp252766
                            (let ((__tmp252767
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp252767)))
                           (__tmp252763
                            (let ((__tmp252764
                                   (let ((__tmp252765
                                          (let ()
                                            (declare (not safe))
                                            (cons _id247078_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp252765))))
                              (declare (not safe))
                              (cons __tmp252764 '()))))
                       (declare (not safe))
                       (cons __tmp252766 __tmp252763))))
                (declare (not safe))
                (cons __tmp252768 __tmp252762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp252761))))
                                          (declare (not safe))
                                          (cons __tmp252760 '()))))
                                   (declare (not safe))
                                   (cons __tmp252770 __tmp252759))))
                            (declare (not safe))
                            (cons __tmp252772 __tmp252758))))
                     (declare (not safe))
                     (cons '%#if __tmp252757))))
              (declare (not safe))
              (cons __tmp252756 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252774
                                                     __tmp252755))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp252754))))
                                 (declare (not safe))
                                 (cons __tmp252753 '()))))
                          (declare (not safe))
                          (cons '() __tmp252752))))
                   (declare (not safe))
                   (cons '%#lambda __tmp252751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252750 '()))))
                                             (declare (not safe))
                                             (cons __tmp252788 __tmp252749))))
                                      (declare (not safe))
                                      (cons '%#call __tmp252748))))
                               (declare (not safe))
                               (cons __tmp252747 '()))))
                        (declare (not safe))
                        (cons __tmp252790 __tmp252746)))))
                 (_generate-slot-bind243756_
                  (lambda (_$t247071_ _id247072_ _$id247073_)
                    (let ((_$tmp247075_
                           (let ((__tmp252791 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252791))))
                      (let ((__tmp252828
                             (let ()
                               (declare (not safe))
                               (cons _$id247073_ '())))
                            (__tmp252792
                             (let ((__tmp252793
                                    (let ((__tmp252794
                                           (let ((__tmp252814
                                                  (let ((__tmp252815
                                                         (let ((__tmp252827
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp247075_ '())))
                       (__tmp252816
                        (let ((__tmp252817
                               (let ((__tmp252818
                                      (let ((__tmp252825
                                             (let ((__tmp252826
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp252826)))
                                            (__tmp252819
                                             (let ((__tmp252823
                                                    (let ((__tmp252824
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t247071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp252824)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252820
                                                    (let ((__tmp252821
                                                           (let ((__tmp252822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id247072_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp252822))))
              (declare (not safe))
              (cons __tmp252821 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252823
                                                     __tmp252820))))
                                        (declare (not safe))
                                        (cons __tmp252825 __tmp252819))))
                                 (declare (not safe))
                                 (cons '%#call __tmp252818))))
                          (declare (not safe))
                          (cons __tmp252817 '()))))
                   (declare (not safe))
                   (cons __tmp252827 __tmp252816))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252815 '())))
                                                 (__tmp252795
                                                  (let ((__tmp252796
                                                         (let ((__tmp252797
                                                                (let ((__tmp252812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252813
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp247075_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252813)))
                              (__tmp252798
                               (let ((__tmp252810
                                      (let ((__tmp252811
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp247075_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp252811)))
                                     (__tmp252799
                                      (let ((__tmp252800
                                             (let ((__tmp252801
                                                    (let ((__tmp252808
                                                           (let ((__tmp252809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp252809)))
                  (__tmp252802
                   (let ((__tmp252806
                          (let ((__tmp252807
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp252807)))
                         (__tmp252803
                          (let ((__tmp252804
                                 (let ((__tmp252805
                                        (let ()
                                          (declare (not safe))
                                          (cons _id247072_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp252805))))
                            (declare (not safe))
                            (cons __tmp252804 '()))))
                     (declare (not safe))
                     (cons __tmp252806 __tmp252803))))
              (declare (not safe))
              (cons __tmp252808 __tmp252802))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp252801))))
                                        (declare (not safe))
                                        (cons __tmp252800 '()))))
                                 (declare (not safe))
                                 (cons __tmp252810 __tmp252799))))
                          (declare (not safe))
                          (cons __tmp252812 __tmp252798))))
                   (declare (not safe))
                   (cons '%#if __tmp252797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252796 '()))))
                                             (declare (not safe))
                                             (cons __tmp252814 __tmp252795))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp252794))))
                               (declare (not safe))
                               (cons __tmp252793 '()))))
                        (declare (not safe))
                        (cons __tmp252828 __tmp252792)))))
                 (_generate-class-check-bind243757_
                  (lambda (_$t247067_ _class-type247068_ _$class-type247069_)
                    (let ((__tmp252840
                           (let ()
                             (declare (not safe))
                             (cons _$class-type247069_ '())))
                          (__tmp252829
                           (let ((__tmp252830
                                  (let ((__tmp252831
                                         (let ((__tmp252838
                                                (let ((__tmp252839
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252839)))
                                               (__tmp252832
                                                (let ((__tmp252836
                                                       (let ((__tmp252837
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t247067_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252837)))
              (__tmp252833
               (let ((__tmp252834
                      (let ((__tmp252835
                             (let ()
                               (declare (not safe))
                               (cons _class-type247068_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252835))))
                 (declare (not safe))
                 (cons __tmp252834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252836
                                                        __tmp252833))))
                                           (declare (not safe))
                                           (cons __tmp252838 __tmp252832))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252831))))
                             (declare (not safe))
                             (cons __tmp252830 '()))))
                      (declare (not safe))
                      (cons __tmp252840 __tmp252829))))
                 (_generate-struct-check-bind243758_
                  (lambda (_$t247063_ _class-type247064_ _$class-type247065_)
                    (let ((__tmp252852
                           (let ()
                             (declare (not safe))
                             (cons _$class-type247065_ '())))
                          (__tmp252841
                           (let ((__tmp252842
                                  (let ((__tmp252843
                                         (let ((__tmp252850
                                                (let ((__tmp252851
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252851)))
                                               (__tmp252844
                                                (let ((__tmp252848
                                                       (let ((__tmp252849
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t247063_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252849)))
              (__tmp252845
               (let ((__tmp252846
                      (let ((__tmp252847
                             (let ()
                               (declare (not safe))
                               (cons _class-type247064_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252847))))
                 (declare (not safe))
                 (cons __tmp252846 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252848
                                                        __tmp252845))))
                                           (declare (not safe))
                                           (cons __tmp252850 __tmp252844))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252843))))
                             (declare (not safe))
                             (cons __tmp252842 '()))))
                      (declare (not safe))
                      (cons __tmp252852 __tmp252841))))
                 (_generate-specializer-impl243759_
                  (lambda (_$t247012_
                           _methods-bind247013_
                           _slots-bind247014_
                           _class-check-bind247015_
                           _struct-check-bind247016_
                           _specializer-impl247017_
                           _lifted-specializer-id247018_
                           _unchecked-specializer-impl247019_)
                    (let ((__tmp252853
                           (let ((__tmp252854
                                  (let ((__tmp252880
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t247012_ '())))
                                        (__tmp252855
                                         (let ((__tmp252856
                                                (let ((__tmp252857
                                                       (let ((__tmp252877
                                                              (let ((__tmp252878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252879
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind247016_
                                              _class-check-bind247015_))))
                               (declare (not safe))
                               (foldr1 cons __tmp252879 _slots-bind247014_))))
                        (declare (not safe))
                        (foldr1 cons __tmp252878 _methods-bind247013_)))
                     (__tmp252858
                      (let ((__tmp252859
                             (if (or _lifted-specializer-id247018_
                                     _unchecked-specializer-impl247019_)
                                 (let* ((_$specializer247024_
                                         (let ((__tmp252860
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp252860)))
                                        (__tmp252861
                                         (let ((__tmp252873
                                                (let ((__tmp252874
                                                       (let ((__tmp252876
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer247024_ '())))
                     (__tmp252875
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl247017_ '()))))
                 (declare (not safe))
                 (cons __tmp252876 __tmp252875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252874 '())))
                                               (__tmp252862
                                                (let ((__tmp252863
                                                       (let _recur247026_ ((_rest247028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind247016_)))
                 (let* ((_rest247029247037_ _rest247028_)
                        (_else247031247045_
                         (lambda ()
                           (if _lifted-specializer-id247018_
                               (let ((__tmp252864
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id247018_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252864))
                               _unchecked-specializer-impl247019_)))
                        (_K247033247051_
                         (lambda (_rest247048_ _checkq247049_)
                           (let ((__tmp252865
                                  (let ((__tmp252871
                                         (let ((__tmp252872
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq247049_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252872)))
                                        (__tmp252866
                                         (let ((__tmp252870
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur247026_
                                                   _rest247048_)))
                                               (__tmp252867
                                                (let ((__tmp252868
                                                       (let ((__tmp252869
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer247024_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252869))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252868 '()))))
                                           (declare (not safe))
                                           (cons __tmp252870 __tmp252867))))
                                    (declare (not safe))
                                    (cons __tmp252871 __tmp252866))))
                             (declare (not safe))
                             (cons '%#if __tmp252865)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest247029247037_))
                       (let ((_hd247034247054_
                              (let ()
                                (declare (not safe))
                                (##car _rest247029247037_)))
                             (_tl247035247056_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest247029247037_))))
                         (let* ((_checkq247059_ _hd247034247054_)
                                (_rest247061_ _tl247035247056_))
                           (declare (not safe))
                           (_K247033247051_ _rest247061_ _checkq247059_)))
                       (let () (declare (not safe)) (_else247031247045_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252863 '()))))
                                           (declare (not safe))
                                           (cons __tmp252873 __tmp252862))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp252861))
                                 _specializer-impl247017_)))
                        (declare (not safe))
                        (cons __tmp252859 '()))))
                 (declare (not safe))
                 (cons __tmp252877 __tmp252858))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp252857))))
                                           (declare (not safe))
                                           (cons __tmp252856 '()))))
                                    (declare (not safe))
                                    (cons __tmp252880 __tmp252855))))
                             (declare (not safe))
                             (cons '%#lambda __tmp252854))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252853 _stx243753_))))
                 (_generate-specializer-def243760_
                  (lambda (_id247006_
                           _specializer-id247007_
                           _specializer-impl247008_
                           _lifted-specializer-id247009_
                           _unchecked-specializer-impl247010_)
                    (let ((__tmp252881
                           (let ((__tmp252882
                                  (let ((__tmp252883
                                         (let ((__tmp252903
                                                (let ((__tmp252904
                                                       (let ((__tmp252905
                                                              (let ((__tmp252907
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id247007_ '())))
                            (__tmp252906
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl247008_ '()))))
                        (declare (not safe))
                        (cons __tmp252907 __tmp252906))))
                 (declare (not safe))
                 (cons '%#define-values __tmp252905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252904
                                                   _stx243753_)))
                                               (__tmp252884
                                                (let ((__tmp252891
                                                       (let ((__tmp252892
                                                              (let ((__tmp252893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252894
                                    (let ((__tmp252901
                                           (let ((__tmp252902
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252902)))
                                          (__tmp252895
                                           (let ((__tmp252899
                                                  (let ((__tmp252900
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id247006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252900)))
                                                 (__tmp252896
                                                  (let ((__tmp252897
                                                         (let ((__tmp252898
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id247007_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252897 '()))))
                                             (declare (not safe))
                                             (cons __tmp252899 __tmp252896))))
                                      (declare (not safe))
                                      (cons __tmp252901 __tmp252895))))
                               (declare (not safe))
                               (cons '%#call __tmp252894))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp252893 _stx243753_))))
                 (declare (not safe))
                 (cons __tmp252892 '())))
              (__tmp252885
               (if _lifted-specializer-id247009_
                   (let ((__tmp252886
                          (let ((__tmp252887
                                 (let ((__tmp252888
                                        (let ((__tmp252890
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id247009_
                                                       '())))
                                              (__tmp252889
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl247010_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp252890 __tmp252889))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp252888))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp252887 _stx243753_))))
                     (declare (not safe))
                     (cons __tmp252886 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp252891
                                                          __tmp252885))))
                                           (declare (not safe))
                                           (cons __tmp252903 __tmp252884))))
                                    (declare (not safe))
                                    (cons _stx243753_ __tmp252883))))
                             (declare (not safe))
                             (cons '%#begin __tmp252882))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252881 _stx243753_)))))
          (let* ((___stx251697251698_ _stx243753_)
                 (_g243763243783_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251697251698_)))))
            (let ((___kont251699251700_
                   (lambda (_L243827_ _L243828_)
                     (let ((_method-calls243847_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs243848_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check243849_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check243850_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert243851_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty243852_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?243854_
                                 (lambda ()
                                   (if (let ((__tmp252912
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243847_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252912))
                                       (if (let ((__tmp252911
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243848_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252911))
                                           (if (let ((__tmp252910
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check243849_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp252910))
                                               (if (let ((__tmp252909
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check243850_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252909))
                                                   (let ((__tmp252908
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert243851_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252908))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?243855_
                                 (lambda ()
                                   (let ((_$e246999_
                                          (let ((__tmp252913
                                                 (let ((__tmp252914
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check243850_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp252914))))
                                            (declare (not safe))
                                            (not __tmp252913))))
                                     (if _$e246999_
                                         _$e246999_
                                         (let ((__tmp252915
                                                (let ((__tmp252916
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert243851_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp252916))))
                                           (declare (not safe))
                                           (not __tmp252915))))))
                                (_lift-unchecked-specializer?243856_
                                 (lambda ()
                                   (if (let ((__tmp252919
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243847_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252919))
                                       (if (let ((__tmp252918
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243848_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252918))
                                           (let ((__tmp252917
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check243849_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252917))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L243827_))
                             (let* ((___stx251611251612_ _L243827_)
                                    (_g244369244387_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx251611251612_)))))
                               (let ((___kont251613251614_
                                      (lambda (_L244423_ _L244424_ _L244425_)
                                        (for-each
                                         (lambda (_g244440244442_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g244440244442_
                                              _L244425_
                                              _method-calls243847_
                                              _slot-refs243848_
                                              _class-type-check243849_
                                              _struct-type-check243850_
                                              _struct-type-assert243851_)))
                                         _L244423_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?243854_))
                                            _stx243753_
                                            (let* ((_specializer-id244451_
                                                    (let* ((_id244445_
                                                            (let ((__tmp253069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L243828_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp253069 '"::specialize")))
                   (_specializer-id244448_
                    (let ((__tmp253070
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx243753_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id244445_ __tmp253070))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id244448_))
              _specializer-id244448_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id244458_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?243856_))
                                                        (let* ((_id244453_
                                                                (let ((__tmp253071
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L243828_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp253071
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id244455_
                        (let ((__tmp253072
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx243753_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id244453_ __tmp253072))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id244455_))
                  _lifted-specializer-id244455_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t244460_
                                                    (let ((__tmp253073
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp253073)))
                                                   (_methods244462_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls243847_)))
                                                   (_$methods244466_
                                                    (map (lambda (_id244464_)
                                                           (let ((__tmp253074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244464_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253074)))
                 _methods244462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253075_
                                                    (for-each
                                                     (lambda (_g244467244470_
                                                              _g244468244472_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls243847_
                                                          _g244467244470_
                                                          _g244468244472_)))
                                                     _methods244462_
                                                     _$methods244466_))
                                                   (_methods-bind244483_
                                                    (map (lambda (_g244475244478_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244476244480_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind243755_
                      _$t244460_
                      _g244475244478_
                      _g244476244480_)))
                 _methods244462_
                 _$methods244466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots244485_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs243848_)))
                                                   (_$slots244489_
                                                    (map (lambda (_id244487_)
                                                           (let ((__tmp253076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244487_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253076)))
                 _slots244485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253077_
                                                    (for-each
                                                     (lambda (_g244490244493_
                                                              _g244491244495_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs243848_
                                                          _g244490244493_
                                                          _g244491244495_)))
                                                     _slots244485_
                                                     _$slots244489_))
                                                   (_slots-bind244506_
                                                    (map (lambda (_g244498244501_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244499244503_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind243756_
                      _$t244460_
                      _g244498244501_
                      _g244499244503_)))
                 _slots244485_
                 _$slots244489_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check244508_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check243849_)))
                                                   (_$class-check244511_
                                                    (map (lambda (_g253078_)
                                                           (let ((__tmp253079
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253079)))
                 _class-check244508_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253080_
                                                    (for-each
                                                     (lambda (_g244512244515_
                                                              _g244513244517_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check243849_
                                                          _g244512244515_
                                                          _g244513244517_)))
                                                     _class-check244508_
                                                     _$class-check244511_))
                                                   (_class-check-bind244528_
                                                    (map (lambda (_g244520244523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244521244525_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind243757_
                      _$t244460_
                      _g244520244523_
                      _g244521244525_)))
                 _class-check244508_
                 _$class-check244511_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all244530_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check243850_
                                                       _struct-type-assert243851_)))
                                                   (_struct-check244532_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all244530_)))
                                                   (_$struct-check244535_
                                                    (map (lambda (_g253081_)
                                                           (let ((__tmp253082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253082)))
                 _struct-check244532_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253083_
                                                    (for-each
                                                     (lambda (_g244536244539_
                                                              _g244537244541_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all244530_
                                                          _g244536244539_
                                                          _g244537244541_)))
                                                     _struct-check244532_
                                                     _$struct-check244535_))
                                                   (_struct-check-bind244552_
                                                    (map (lambda (_g244544244547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244545244549_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind243758_
                      _$t244460_
                      _g244544244547_
                      _g244545244549_)))
                 _struct-check244532_
                 _$struct-check244535_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl244563_
                                                    (lambda (_struct-type-check1244554_
                                                             _struct-type-check2244555_)
                                                      (let* ((_specializer-body244561_
                                                              (map (lambda (_g244556244558_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g244556244558_
                                _L244425_
                                _$t244460_
                                _method-calls243847_
                                _slot-refs243848_
                                _class-type-check243849_
                                _struct-type-check1244554_
                                _struct-type-check2244555_)))
                           _L244423_))
                     (__tmp253084
                      (let ((__tmp253085
                             (let ((__tmp253086
                                    (let ()
                                      (declare (not safe))
                                      (cons _L244425_ _L244424_))))
                               (declare (not safe))
                               (cons __tmp253086 _specializer-body244561_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp253085))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp253084 _stx243753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl244565_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl244563_
                                                       _struct-check-all244530_
                                                       _empty243852_)))
                                                   (_unchecked-specializer-impl244567_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?243855_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl244563_
                                                           _empty243852_
                                                           _struct-check-all244530_))
                                                        '#f))
                                                   (_specializer-impl244569_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl243759_
                                                       _$t244460_
                                                       _methods-bind244483_
                                                       _slots-bind244506_
                                                       _class-check-bind244528_
                                                       _struct-check-bind244552_
                                                       _specializer-impl244565_
                                                       _lifted-specializer-id244458_
                                                       _unchecked-specializer-impl244567_))))
                                              (let ((__tmp253088
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L243828_)))
                                                    (__tmp253087
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id244451_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp253088
                                                 '" => "
                                                 __tmp253087))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def243760_
                                                 _L243828_
                                                 _specializer-id244451_
                                                 _specializer-impl244569_
                                                 _lifted-specializer-id244458_
                                                 _unchecked-specializer-impl244567_))))))
                                     (___kont251615251616_
                                      (lambda () _stx243753_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx251611251612_))
                                     (let ((_e244376244399_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx251611251612_))))
                                       (let ((_tl244374244404_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e244376244399_)))
                                             (_hd244375244402_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e244376244399_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl244374244404_))
                                             (let ((_e244379244407_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl244374244404_))))
                                               (let ((_tl244377244412_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e244379244407_)))
                                                     (_hd244378244410_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e244379244407_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd244378244410_))
                                                     (let ((_e244382244415_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd244378244410_))))
                                                       (let ((_tl244380244420_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e244382244415_)))
                     (_hd244381244418_
                      (let () (declare (not safe)) (##car _e244382244415_))))
                 (___kont251613251614_
                  _tl244377244412_
                  _tl244380244420_
                  _hd244381244418_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251615251616_))))
                                             (___kont251615251616_))))
                                     (___kont251615251616_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L243827_))
                                 (let* ((_g244575244594_
                                         (lambda (_g244576244591_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g244576244591_))))
                                        (_g244574244945_
                                         (lambda (_g244576244597_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g244576244597_))
                                               (let ((_e244580244599_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g244576244597_))))
                                                 (let ((_hd244579244602_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244580244599_)))
                                                       (_tl244578244604_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244580244599_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl244578244604_))
                                                       (let ((_g253045_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl244578244604_ '0))))
                 (begin
                   (let ((_g253046_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g253045_)
                                (##vector-length _g253045_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g253046_ 2)))
                         (error "Context expects 2 values" _g253046_)))
                   (let ((_target244581244607_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253045_ 0)))
                         (_tl244583244609_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253045_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl244583244609_))
                         (letrec ((_loop244584244612_
                                   (lambda (_hd244582244615_
                                            _clause244588244617_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd244582244615_))
                                         (let ((_e244585244620_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd244582244615_))))
                                           (let ((_lp-hd244586244623_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e244585244620_)))
                                                 (_lp-tl244587244625_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e244585244620_))))
                                             (let ((__tmp253068
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd244586244623_
                                                            _clause244588244617_))))
                                               (declare (not safe))
                                               (_loop244584244612_
                                                _lp-tl244587244625_
                                                __tmp253068))))
                                         (let ((_clause244589244628_
                                                (reverse _clause244588244617_)))
                                           ((lambda (_L244631_)
                                              (for-each
                                               (lambda (_clause244644_)
                                                 (let* ((___stx251637251638_
                                                         _clause244644_)
                                                        (_g244647244662_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx251637251638_)))))
                                                   (let ((___kont251639251640_
                                                          (lambda (_L244690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L244691_
                           _L244692_)
                    (for-each
                     (lambda (_g244707244709_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g244707244709_
                          _L244692_
                          _method-calls243847_
                          _slot-refs243848_
                          _class-type-check243849_
                          _struct-type-check243850_
                          _struct-type-assert243851_)))
                     _L244690_)))
                 (___kont251641251642_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx251637251638_))
                                                         (let ((_e244654244674_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx251637251638_))))
                   (let ((_tl244652244679_
                          (let ()
                            (declare (not safe))
                            (##cdr _e244654244674_)))
                         (_hd244653244677_
                          (let ()
                            (declare (not safe))
                            (##car _e244654244674_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd244653244677_))
                         (let ((_e244657244682_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd244653244677_))))
                           (let ((_tl244655244687_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e244657244682_)))
                                 (_hd244656244685_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e244657244682_))))
                             (___kont251639251640_
                              _tl244652244679_
                              _tl244655244687_
                              _hd244656244685_)))
                         (___kont251641251642_))))
                 (___kont251641251642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp253047
                                                      (lambda (_g244714244717_
                                                               _g244715244719_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244714244717_
                                                                _g244715244719_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp253047
                                                         '()
                                                         _L244631_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243854_))
                                                  _stx243753_
                                                  (let* ((_specializer-id244728_
                                                          (let* ((_id244722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253048
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243828_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp253048 '"::specialize")))
                         (_specializer-id244725_
                          (let ((__tmp253049
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243753_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244722_ __tmp253049))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id244725_))
                    _specializer-id244725_))
                 (_lifted-specializer-id244735_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243856_))
                      (let* ((_id244730_
                              (let ((__tmp253050
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243828_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp253050
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id244732_
                              (let ((__tmp253051
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243753_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id244730_
                                 __tmp253051))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id244732_))
                        _lifted-specializer-id244732_)
                      '#f))
                 (_$t244737_
                  (let ((__tmp253052 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp253052)))
                 (_methods244739_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243847_)))
                 (_$methods244743_
                  (map (lambda (_id244741_)
                         (let ((__tmp253053 (gensym _id244741_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253053)))
                       _methods244739_))
                 (_g253054_
                  (for-each
                   (lambda (_g244744244747_ _g244745244749_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243847_
                        _g244744244747_
                        _g244745244749_)))
                   _methods244739_
                   _$methods244743_))
                 (_methods-bind244760_
                  (map (lambda (_g244752244755_ _g244753244757_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243755_
                            _$t244737_
                            _g244752244755_
                            _g244753244757_)))
                       _methods244739_
                       _$methods244743_))
                 (_slots244762_
                  (let () (declare (not safe)) (hash-keys _slot-refs243848_)))
                 (_$slots244766_
                  (map (lambda (_id244764_)
                         (let ((__tmp253055 (gensym _id244764_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253055)))
                       _slots244762_))
                 (_g253056_
                  (for-each
                   (lambda (_g244767244770_ _g244768244772_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243848_
                        _g244767244770_
                        _g244768244772_)))
                   _slots244762_
                   _$slots244766_))
                 (_slots-bind244783_
                  (map (lambda (_g244775244778_ _g244776244780_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243756_
                            _$t244737_
                            _g244775244778_
                            _g244776244780_)))
                       _slots244762_
                       _$slots244766_))
                 (_class-check244785_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243849_)))
                 (_$class-check244788_
                  (map (lambda (_g253057_)
                         (let ((__tmp253058 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253058)))
                       _class-check244785_))
                 (_g253059_
                  (for-each
                   (lambda (_g244789244792_ _g244790244794_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243849_
                        _g244789244792_
                        _g244790244794_)))
                   _class-check244785_
                   _$class-check244788_))
                 (_class-check-bind244805_
                  (map (lambda (_g244797244800_ _g244798244802_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243757_
                            _$t244737_
                            _g244797244800_
                            _g244798244802_)))
                       _class-check244785_
                       _$class-check244788_))
                 (_struct-check-all244807_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243850_
                     _struct-type-assert243851_)))
                 (_struct-check244809_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all244807_)))
                 (_$struct-check244812_
                  (map (lambda (_g253060_)
                         (let ((__tmp253061 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253061)))
                       _struct-check244809_))
                 (_g253062_
                  (for-each
                   (lambda (_g244813244816_ _g244814244818_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all244807_
                        _g244813244816_
                        _g244814244818_)))
                   _struct-check244809_
                   _$struct-check244812_))
                 (_struct-check-bind244829_
                  (map (lambda (_g244821244824_ _g244822244826_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243758_
                            _$t244737_
                            _g244821244824_
                            _g244822244826_)))
                       _struct-check244809_
                       _$struct-check244812_))
                 (_make-specializer-impl244936_
                  (lambda (_struct-type-check1244831_
                           _struct-type-check2244832_)
                    (let* ((_specializer-clauses244934_
                            (map (lambda (_clause244834_)
                                   (let* ((___stx251657251658_ _clause244834_)
                                          (_g244837244852_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx251657251658_)))))
                                     (let ((___kont251659251660_
                                            (lambda (_L244880_
                                                     _L244881_
                                                     _L244882_)
                                              (let* ((_body244922_
                                                      (map (lambda (_g244917244919_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g244917244919_
                        _L244882_
                        _$t244737_
                        _method-calls243847_
                        _slot-refs243848_
                        _class-type-check243849_
                        _struct-type-check1244831_
                        _struct-type-check2244832_)))
                   _L244880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp253063
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244882_
                                                              _L244881_))))
                                                (declare (not safe))
                                                (cons __tmp253063
                                                      _body244922_))))
                                           (___kont251661251662_
                                            (lambda () _clause244834_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251657251658_))
                                           (let ((_e244844244864_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251657251658_))))
                                             (let ((_tl244842244869_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244844244864_)))
                                                   (_hd244843244867_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244844244864_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd244843244867_))
                                                   (let ((_e244847244872_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd244843244867_))))
                                                     (let ((_tl244845244877_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244847244872_)))
                                                           (_hd244846244875_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244847244872_))))
                                                       (___kont251659251660_
                                                        _tl244842244869_
                                                        _tl244845244877_
                                                        _hd244846244875_)))
                                                   (___kont251661251662_))))
                                           (___kont251661251662_)))))
                                 (let ((__tmp253064
                                        (lambda (_g244926244929_
                                                 _g244927244931_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244926244929_
                                                  _g244927244931_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253064 '() _L244631_))))
                           (__tmp253065
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses244934_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253065 _stx243753_))))
                 (_specializer-impl244938_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl244936_
                     _struct-check-all244807_
                     _empty243852_)))
                 (_unchecked-specializer-impl244940_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243855_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl244936_
                         _empty243852_
                         _struct-check-all244807_))
                      '#f))
                 (_specializer-impl244942_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243759_
                     _$t244737_
                     _methods-bind244760_
                     _slots-bind244783_
                     _class-check-bind244805_
                     _struct-check-bind244829_
                     _specializer-impl244938_
                     _lifted-specializer-id244735_
                     _unchecked-specializer-impl244940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp253067
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243828_)))
                                                          (__tmp253066
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id244728_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp253067
                                                       '" => "
                                                       __tmp253066))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243760_
                                                       _L243828_
                                                       _specializer-id244728_
                                                       _specializer-impl244942_
                                                       _lifted-specializer-id244735_
                                                       _unchecked-specializer-impl244940_)))))
                                            _clause244589244628_))))))
                           (let ()
                             (declare (not safe))
                             (_loop244584244612_ _target244581244607_ '())))
                         (let ()
                           (declare (not safe))
                           (_g244575244594_ _g244576244597_))))))
               (let ()
                 (declare (not safe))
                 (_g244575244594_ _g244576244597_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244575244594_
                                                  _g244576244597_))))))
                                   (declare (not safe))
                                   (_g244574244945_ _L243827_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L243827_))
                                     (let* ((_g244948244978_
                                             (lambda (_g244949244975_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244949244975_))))
                                            (_g244947245666_
                                             (lambda (_g244949244981_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244949244981_))
                                                   (let ((_e244955244983_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244949244981_))))
                                                     (let ((_hd244954244986_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244955244983_)))
                                                           (_tl244953244988_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244955244983_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244953244988_))
                                                           (let ((_e244958244991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244953244988_))))
                     (let ((_hd244957244994_
                            (let ()
                              (declare (not safe))
                              (##car _e244958244991_)))
                           (_tl244956244996_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244958244991_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244957244994_))
                           (let ((_e244961244999_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244957244994_))))
                             (let ((_hd244960245002_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244961244999_)))
                                   (_tl244959245004_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244961244999_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244960245002_))
                                   (let ((_e244964245007_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244960245002_))))
                                     (let ((_hd244963245010_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244964245007_)))
                                           (_tl244962245012_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244964245007_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd244963245010_))
                                           (let ((_e244967245015_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd244963245010_))))
                                             (let ((_hd244966245018_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244967245015_)))
                                                   (_tl244965245020_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244967245015_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244965245020_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl244962245012_))
                                                       (let ((_e244970245023_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl244962245012_))))
                 (let ((_hd244969245026_
                        (let () (declare (not safe)) (##car _e244970245023_)))
                       (_tl244968245028_
                        (let () (declare (not safe)) (##cdr _e244970245023_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244968245028_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244959245004_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244956244996_))
                               (let ((_e244973245031_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244956244996_))))
                                 (let ((_hd244972245034_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244973245031_)))
                                       (_tl244971245036_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244973245031_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244971245036_))
                                       ((lambda (_L245039_ _L245040_ _L245041_)
                                          (let* ((_g245064245082_
                                                  (lambda (_g245065245079_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g245065245079_))))
                                                 (_g245063245133_
                                                  (lambda (_g245065245085_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g245065245085_))
                                                        (let ((_e245071245087_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g245065245085_))))
                  (let ((_hd245070245090_
                         (let () (declare (not safe)) (##car _e245071245087_)))
                        (_tl245069245092_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245071245087_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl245069245092_))
                        (let ((_e245074245095_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl245069245092_))))
                          (let ((_hd245073245098_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245074245095_)))
                                (_tl245072245100_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245074245095_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd245073245098_))
                                (let ((_e245077245103_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd245073245098_))))
                                  (let ((_hd245076245106_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245077245103_)))
                                        (_tl245075245108_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245077245103_))))
                                    ((lambda (_L245111_ _L245112_ _L245113_)
                                       (for-each
                                        (lambda (_g245128245130_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g245128245130_
                                             _L245113_
                                             _method-calls243847_
                                             _slot-refs243848_
                                             _class-type-check243849_
                                             _struct-type-check243850_
                                             _struct-type-assert243851_)))
                                        _L245111_))
                                     _tl245072245100_
                                     _tl245075245108_
                                     _hd245076245106_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245064245082_ _g245065245085_)))))
                        (let ()
                          (declare (not safe))
                          (_g245064245082_ _g245065245085_)))))
                (let ()
                  (declare (not safe))
                  (_g245064245082_ _g245065245085_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g245063245133_ _L245040_))
                                          (let* ((_g245136245155_
                                                  (lambda (_g245137245152_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g245137245152_))))
                                                 (_g245135245274_
                                                  (lambda (_g245137245158_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g245137245158_))
                                                        (let ((_e245141245160_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g245137245158_))))
                  (let ((_hd245140245163_
                         (let () (declare (not safe)) (##car _e245141245160_)))
                        (_tl245139245165_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245141245160_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245139245165_))
                        (let ((_g253008_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl245139245165_
                                  '0))))
                          (begin
                            (let ((_g253009_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g253008_)
                                         (##vector-length _g253008_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g253009_ 2)))
                                  (error "Context expects 2 values"
                                         _g253009_)))
                            (let ((_target245142245168_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g253008_ 0)))
                                  (_tl245144245170_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g253008_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245144245170_))
                                  (letrec ((_loop245145245173_
                                            (lambda (_hd245143245176_
                                                     _clause245149245178_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245143245176_))
                                                  (let ((_e245146245181_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245143245176_))))
                                                    (let ((_lp-hd245147245184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245146245181_)))
                                                          (_lp-tl245148245186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245146245181_))))
                                                      (let ((__tmp253011
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd245147245184_ _clause245149245178_))))
                (declare (not safe))
                (_loop245145245173_ _lp-tl245148245186_ __tmp253011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause245150245189_
                                                         (reverse _clause245149245178_)))
                                                    ((lambda (_L245192_)
                                                       (for-each
                                                        (lambda (_clause245205_)
                                                          (let* ((_g245207245222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g245208245219_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g245208245219_))))
                         (_g245206245264_
                          (lambda (_g245208245225_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g245208245225_))
                                (let ((_e245214245227_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g245208245225_))))
                                  (let ((_hd245213245230_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245214245227_)))
                                        (_tl245212245232_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245214245227_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245213245230_))
                                        (let ((_e245217245235_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245213245230_))))
                                          (let ((_hd245216245238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245217245235_)))
                                                (_tl245215245240_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245217245235_))))
                                            ((lambda (_L245243_
                                                      _L245244_
                                                      _L245245_)
                                               (for-each
                                                (lambda (_g245259245261_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g245259245261_
                                                     _L245245_
                                                     _method-calls243847_
                                                     _slot-refs243848_
                                                     _class-type-check243849_
                                                     _struct-type-check243850_
                                                     _struct-type-assert243851_)))
                                                _L245243_))
                                             _tl245212245232_
                                             _tl245215245240_
                                             _hd245216245238_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245207245222_ _g245208245225_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245207245222_ _g245208245225_))))))
                    (declare (not safe))
                    (_g245206245264_ _clause245205_)))
                (let ((__tmp253010
                       (lambda (_g245266245269_ _g245267245271_)
                         (let ()
                           (declare (not safe))
                           (cons _g245266245269_ _g245267245271_)))))
                  (declare (not safe))
                  (foldr1 __tmp253010 '() _L245192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause245150245189_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop245145245173_
                                       _target245142245168_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g245136245155_ _g245137245158_))))))
                        (let ()
                          (declare (not safe))
                          (_g245136245155_ _g245137245158_)))))
                (let ()
                  (declare (not safe))
                  (_g245136245155_ _g245137245158_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g245135245274_ _L245039_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?243854_))
                                              _stx243753_
                                              (let* ((_specializer-id245283_
                                                      (let* ((_id245277_
                                                              (let ((__tmp253012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243828_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp253012 '"::specialize")))
                     (_specializer-id245280_
                      (let ((__tmp253013
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx243753_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id245277_ __tmp253013))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id245280_))
                _specializer-id245280_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id245290_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?243856_))
                                                          (let* ((_id245285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253014
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243828_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp253014
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id245287_
                          (let ((__tmp253015
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243753_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id245285_ __tmp253015))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id245287_))
                    _lifted-specializer-id245287_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t245292_
                                                      (let ((__tmp253016
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp253016)))
                                                     (_methods245294_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls243847_)))
                                                     (_$methods245298_
                                                      (map (lambda (_id245296_)
                                                             (let ((__tmp253017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245296_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp253017)))
                   _methods245294_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253018_
                                                      (for-each
                                                       (lambda (_g245299245302_
                                                                _g245300245304_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls243847_
                                                            _g245299245302_
                                                            _g245300245304_)))
                                                       _methods245294_
                                                       _$methods245298_))
                                                     (_methods-bind245315_
                                                      (map (lambda (_g245307245310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245308245312_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind243755_
                        _$t245292_
                        _g245307245310_
                        _g245308245312_)))
                   _methods245294_
                   _$methods245298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots245317_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs243848_)))
                                                     (_$slots245321_
                                                      (map (lambda (_id245319_)
                                                             (let ((__tmp253019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245319_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp253019)))
                   _slots245317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253020_
                                                      (for-each
                                                       (lambda (_g245322245325_
                                                                _g245323245327_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs243848_
                                                            _g245322245325_
                                                            _g245323245327_)))
                                                       _slots245317_
                                                       _$slots245321_))
                                                     (_slots-bind245338_
                                                      (map (lambda (_g245330245333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245331245335_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind243756_
                        _$t245292_
                        _g245330245333_
                        _g245331245335_)))
                   _slots245317_
                   _$slots245321_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check245340_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check243849_)))
                                                     (_$class-check245343_
                                                      (map (lambda (_g253021_)
                                                             (let ((__tmp253022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp253022)))
                   _class-check245340_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253023_
                                                      (for-each
                                                       (lambda (_g245344245347_
                                                                _g245345245349_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check243849_
                                                            _g245344245347_
                                                            _g245345245349_)))
                                                       _class-check245340_
                                                       _$class-check245343_))
                                                     (_class-check-bind245360_
                                                      (map (lambda (_g245352245355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245353245357_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind243757_
                        _$t245292_
                        _g245352245355_
                        _g245353245357_)))
                   _class-check245340_
                   _$class-check245343_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all245362_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check243850_
                                                         _struct-type-assert243851_)))
                                                     (_struct-check245364_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all245362_)))
                                                     (_$struct-check245367_
                                                      (map (lambda (_g253024_)
                                                             (let ((__tmp253025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp253025)))
                   _struct-check245364_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253026_
                                                      (for-each
                                                       (lambda (_g245368245371_
                                                                _g245369245373_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all245362_
                                                            _g245368245371_
                                                            _g245369245373_)))
                                                       _struct-check245364_
                                                       _$struct-check245367_))
                                                     (_struct-check-bind245384_
                                                      (map (lambda (_g245376245379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245377245381_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind243758_
                        _$t245292_
                        _g245376245379_
                        _g245377245381_)))
                   _struct-check245364_
                   _$struct-check245367_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr245483_
                                                      (lambda (_struct-type-check1245386_
                                                               _struct-type-check2245387_)
                                                        (let* ((_g245389245407_
                                                                (lambda (_g245390245404_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245390245404_))))
                       (_g245388245480_
                        (lambda (_g245390245410_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245390245410_))
                              (let ((_e245396245412_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245390245410_))))
                                (let ((_hd245395245415_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245396245412_)))
                                      (_tl245394245417_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245396245412_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245394245417_))
                                      (let ((_e245399245420_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245394245417_))))
                                        (let ((_hd245398245423_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245399245420_)))
                                              (_tl245397245425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245399245420_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd245398245423_))
                                              (let ((_e245402245428_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd245398245423_))))
                                                (let ((_hd245401245431_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245402245428_)))
                                                      (_tl245400245433_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245402245428_))))
                                                  ((lambda (_L245436_
                                                            _L245437_
                                                            _L245438_)
                                                     (let* ((_body245478_
                                                             (map (lambda (_g245473245475_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g245473245475_
                               _L245438_
                               _$t245292_
                               _method-calls243847_
                               _slot-refs243848_
                               _class-type-check243849_
                               _struct-type-check1245386_
                               _struct-type-check2245387_)))
                          _L245436_))
                    (__tmp253027
                     (let ((__tmp253028
                            (let ((__tmp253029
                                   (let ()
                                     (declare (not safe))
                                     (cons _L245438_ _L245437_))))
                              (declare (not safe))
                              (cons __tmp253029 _body245478_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp253028))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp253027 _L245040_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl245397245425_
                                                   _tl245400245433_
                                                   _hd245401245431_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g245389245407_
                                                 _g245390245410_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245389245407_ _g245390245410_)))))
                              (let ()
                                (declare (not safe))
                                (_g245389245407_ _g245390245410_))))))
                  (declare (not safe))
                  (_g245388245480_ _L245040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr245644_
                                                      (lambda (_struct-type-check1245485_
                                                               _struct-type-check2245486_)
                                                        (let* ((_g245488245507_
                                                                (lambda (_g245489245504_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245489245504_))))
                       (_g245487245641_
                        (lambda (_g245489245510_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245489245510_))
                              (let ((_e245493245512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245489245510_))))
                                (let ((_hd245492245515_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245493245512_)))
                                      (_tl245491245517_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245493245512_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245491245517_))
                                      (let ((_g253030_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245491245517_
                                                '0))))
                                        (begin
                                          (let ((_g253031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g253030_)
                                                       (##vector-length
                                                        _g253030_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g253031_ 2)))
                                                (error "Context expects 2 values"
                                                       _g253031_)))
                                          (let ((_target245494245520_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g253030_ 0)))
                                                (_tl245496245522_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g253030_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245496245522_))
                                                (letrec ((_loop245497245525_
                                                          (lambda (_hd245495245528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause245501245530_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd245495245528_))
                        (let ((_e245498245533_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd245495245528_))))
                          (let ((_lp-hd245499245536_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245498245533_)))
                                (_lp-tl245500245538_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245498245533_))))
                            (let ((__tmp253035
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd245499245536_
                                           _clause245501245530_))))
                              (declare (not safe))
                              (_loop245497245525_
                               _lp-tl245500245538_
                               __tmp253035))))
                        (let ((_clause245502245541_
                               (reverse _clause245501245530_)))
                          ((lambda (_L245544_)
                             (let* ((_clauses245639_
                                     (map (lambda (_clause245559_)
                                            (let* ((___stx251677251678_
                                                    _clause245559_)
                                                   (_g245562245577_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251677251678_)))))
                                              (let ((___kont251679251680_
                                                     (lambda (_L245605_
                                                              _L245606_
                                                              _L245607_)
                                                       (let* ((_body245627_
                                                               (map (lambda (_g245622245624_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g245622245624_
                                 _L245607_
                                 _$t245292_
                                 _method-calls243847_
                                 _slot-refs243848_
                                 _class-type-check243849_
                                 _struct-type-check1245485_
                                 _struct-type-check2245486_)))
                            _L245605_))
                      (__tmp253032
                       (let ()
                         (declare (not safe))
                         (cons _L245607_ _L245606_))))
                 (declare (not safe))
                 (cons __tmp253032 _body245627_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251681251682_
                                                     (lambda ()
                                                       _clause245559_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx251677251678_))
                                                    (let ((_e245569245589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx251677251678_))))
                                                      (let ((_tl245567245594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245569245589_)))
                    (_hd245568245592_
                     (let () (declare (not safe)) (##car _e245569245589_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245568245592_))
                    (let ((_e245572245597_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245568245592_))))
                      (let ((_tl245570245602_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245572245597_)))
                            (_hd245571245600_
                             (let ()
                               (declare (not safe))
                               (##car _e245572245597_))))
                        (___kont251679251680_
                         _tl245567245594_
                         _tl245570245602_
                         _hd245571245600_)))
                    (___kont251681251682_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251681251682_)))))
                                          (let ((__tmp253033
                                                 (lambda (_g245631245634_
                                                          _g245632245636_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g245631245634_
                                                           _g245632245636_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp253033
                                                    '()
                                                    _L245544_))))
                                    (__tmp253034
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses245639_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp253034 _L245039_)))
                           _clause245502245541_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop245497245525_
                                                     _target245494245520_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245488245507_
                                                   _g245489245510_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245488245507_ _g245489245510_)))))
                              (let ()
                                (declare (not safe))
                                (_g245488245507_ _g245489245510_))))))
                  (declare (not safe))
                  (_g245487245641_ _L245039_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl245649_
                                                      (lambda (_specializer-lambda-expr245646_
                                                               _specializer-case-lambda-expr245647_)
                                                        (let ((__tmp253036
                                                               (let ((__tmp253037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp253039
                                     (let ((__tmp253040
                                            (let ((__tmp253042
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L245041_ '())))
                                                  (__tmp253041
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr245646_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp253042 __tmp253041))))
                                       (declare (not safe))
                                       (cons __tmp253040 '())))
                                    (__tmp253038
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr245647_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp253039 __tmp253038))))
                         (declare (not safe))
                         (cons '%#let-values __tmp253037))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp253036 _stx243753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr245651_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr245483_
                                                         _struct-check-all245362_
                                                         _empty243852_)))
                                                     (_specializer-case-lambda-expr245653_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr245644_
                                                         _struct-check-all245362_
                                                         _empty243852_)))
                                                     (_specializer-impl245655_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl245649_
                                                         _specializer-lambda-expr245651_
                                                         _specializer-case-lambda-expr245653_)))
                                                     (_unchecked-specializer-lambda-expr245657_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243855_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr245483_
                                                             _empty243852_
                                                             _struct-check-all245362_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr245659_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243855_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr245644_
                                                             _empty243852_
                                                             _struct-check-all245362_))
                                                          '#f))
                                                     (_unchecked-specializer-impl245661_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243855_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl245649_
                                                             _unchecked-specializer-lambda-expr245657_
                                                             _unchecked-specializer-case-lambda-expr245659_))
                                                          '#f))
                                                     (_specializer-impl245663_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl243759_
                                                         _$t245292_
                                                         _methods-bind245315_
                                                         _slots-bind245338_
                                                         _class-check-bind245360_
                                                         _struct-check-bind245384_
                                                         _specializer-impl245655_
                                                         _lifted-specializer-id245290_
                                                         _unchecked-specializer-impl245661_))))
                                                (let ((__tmp253044
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L243828_)))
                                                      (__tmp253043
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id245283_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp253044
                                                   '" => "
                                                   __tmp253043))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def243760_
                                                   _L243828_
                                                   _specializer-id245283_
                                                   _specializer-impl245663_
                                                   _lifted-specializer-id245290_
                                                   _unchecked-specializer-impl245661_)))))
                                        _hd244972245034_
                                        _hd244969245026_
                                        _hd244966245018_)
                                       (let ()
                                         (declare (not safe))
                                         (_g244948244978_ _g244949244981_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244948244978_ _g244949244981_)))
                           (let ()
                             (declare (not safe))
                             (_g244948244978_ _g244949244981_)))
                       (let ()
                         (declare (not safe))
                         (_g244948244978_ _g244949244981_)))))
               (let () (declare (not safe)) (_g244948244978_ _g244949244981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244948244978_
                                                      _g244949244981_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244948244978_
                                              _g244949244981_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244948244978_ _g244949244981_)))))
                           (let ()
                             (declare (not safe))
                             (_g244948244978_ _g244949244981_)))))
                   (let ()
                     (declare (not safe))
                     (_g244948244978_ _g244949244981_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244948244978_
                                                      _g244949244981_))))))
                                       (declare (not safe))
                                       (_g244947245666_ _L243827_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L243827_))
                                         (let* ((_g245669245722_
                                                 (lambda (_g245670245719_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245670245719_))))
                                                (_g245668246994_
                                                 (lambda (_g245670245725_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245670245725_))
                                                       (let ((_e245678245727_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245670245725_))))
                 (let ((_hd245677245730_
                        (let () (declare (not safe)) (##car _e245678245727_)))
                       (_tl245676245732_
                        (let () (declare (not safe)) (##cdr _e245678245727_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd245677245730_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd245677245730_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl245676245732_))
                               (let ((_e245681245735_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl245676245732_))))
                                 (let ((_hd245680245738_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245681245735_)))
                                       (_tl245679245740_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245681245735_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245680245738_))
                                       (let ((_e245684245743_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245680245738_))))
                                         (let ((_hd245683245746_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245684245743_)))
                                               (_tl245682245748_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245684245743_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245683245746_))
                                               (let ((_e245687245751_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245683245746_))))
                                                 (let ((_hd245686245754_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245687245751_)))
                                                       (_tl245685245756_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245687245751_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd245686245754_))
                                                       (let ((_e245690245759_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd245686245754_))))
                 (let ((_hd245689245762_
                        (let () (declare (not safe)) (##car _e245690245759_)))
                       (_tl245688245764_
                        (let () (declare (not safe)) (##cdr _e245690245759_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl245688245764_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl245685245756_))
                           (let ((_e245693245767_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl245685245756_))))
                             (let ((_hd245692245770_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245693245767_)))
                                   (_tl245691245772_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245693245767_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245692245770_))
                                   (let ((_e245696245775_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245692245770_))))
                                     (let ((_hd245695245778_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245696245775_)))
                                           (_tl245694245780_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245696245775_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd245695245778_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd245695245778_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl245694245780_))
                                                   (let ((_e245699245783_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl245694245780_))))
                                                     (let ((_hd245698245786_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245699245783_)))
                                                           (_tl245697245788_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245699245783_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd245698245786_))
                                                           (let ((_e245702245791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd245698245786_))))
                     (let ((_hd245701245794_
                            (let ()
                              (declare (not safe))
                              (##car _e245702245791_)))
                           (_tl245700245796_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245702245791_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd245701245794_))
                           (let ((_e245705245799_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd245701245794_))))
                             (let ((_hd245704245802_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245705245799_)))
                                   (_tl245703245804_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245705245799_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245704245802_))
                                   (let ((_e245708245807_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245704245802_))))
                                     (let ((_hd245707245810_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245708245807_)))
                                           (_tl245706245812_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245708245807_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245706245812_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl245703245804_))
                                               (let ((_e245711245815_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl245703245804_))))
                                                 (let ((_hd245710245818_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245711245815_)))
                                                       (_tl245709245820_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245711245815_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245709245820_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl245700245796_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl245697245788_))
                       (let ((_e245714245823_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245697245788_))))
                         (let ((_hd245713245826_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245714245823_)))
                               (_tl245712245828_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245714245823_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245712245828_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl245691245772_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl245682245748_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl245679245740_))
                                           (let ((_e245717245831_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl245679245740_))))
                                             (let ((_hd245716245834_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e245717245831_)))
                                                   (_tl245715245836_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e245717245831_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl245715245836_))
                                                   ((lambda (_L245839_
                                                             _L245840_
                                                             _L245841_
                                                             _L245842_
                                                             _L245843_)
                                                      (let* ((_g245882245944_
                                                              (lambda (_g245883245941_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g245883245941_))))
                     (_g245881246991_
                      (lambda (_g245883245947_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g245883245947_))
                            (let ((_e245891245949_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g245883245947_))))
                              (let ((_hd245890245952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245891245949_)))
                                    (_tl245889245954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245891245949_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245890245952_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd245890245952_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245889245954_))
                                            (let ((_e245894245957_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245889245954_))))
                                              (let ((_hd245893245960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245894245957_)))
                                                    (_tl245892245962_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245894245957_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245892245962_))
                                                    (let ((_e245897245965_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245892245962_))))
                                                      (let ((_hd245896245968_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245897245965_)))
                    (_tl245895245970_
                     (let () (declare (not safe)) (##cdr _e245897245965_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245896245968_))
                    (let ((_e245900245973_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245896245968_))))
                      (let ((_hd245899245976_
                             (let ()
                               (declare (not safe))
                               (##car _e245900245973_)))
                            (_tl245898245978_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245900245973_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd245899245976_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd245899245976_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl245898245978_))
                                    (let ((_e245903245981_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl245898245978_))))
                                      (let ((_hd245902245984_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245903245981_)))
                                            (_tl245901245986_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245903245981_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd245902245984_))
                                            (let ((_e245906245989_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd245902245984_))))
                                              (let ((_hd245905245992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245906245989_)))
                                                    (_tl245904245994_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245906245989_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd245905245992_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd245905245992_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245904245994_))
                                                            (let ((_e245909245997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245904245994_))))
                      (let ((_hd245908246000_
                             (let ()
                               (declare (not safe))
                               (##car _e245909245997_)))
                            (_tl245907246002_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245909245997_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245907246002_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245901245986_))
                                (let ((_e245912246005_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245901245986_))))
                                  (let ((_hd245911246008_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245912246005_)))
                                        (_tl245910246010_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245912246005_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245911246008_))
                                        (let ((_e245915246013_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245911246008_))))
                                          (let ((_hd245914246016_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245915246013_)))
                                                (_tl245913246018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245915246013_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd245914246016_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd245914246016_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl245913246018_))
                                                        (let ((_e245918246021_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl245913246018_))))
                  (let ((_hd245917246024_
                         (let () (declare (not safe)) (##car _e245918246021_)))
                        (_tl245916246026_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245918246021_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245916246026_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245910246010_))
                            (let ((_e245921246029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245910246010_))))
                              (let ((_hd245920246032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245921246029_)))
                                    (_tl245919246034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245921246029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245920246032_))
                                    (let ((_e245924246037_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245920246032_))))
                                      (let ((_hd245923246040_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245924246037_)))
                                            (_tl245922246042_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245924246037_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245923246040_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245923246040_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245922246042_))
                                                    (let ((_e245927246045_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245922246042_))))
                                                      (let ((_hd245926246048_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245927246045_)))
                    (_tl245925246050_
                     (let () (declare (not safe)) (##cdr _e245927246045_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245925246050_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245919246034_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl245919246034_))
                                  '1)
                            (let ((_g252920_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245919246034_
                                      '1))))
                              (begin
                                (let ((_g252921_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252920_)
                                             (##vector-length _g252920_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252921_ 2)))
                                      (error "Context expects 2 values"
                                             _g252921_)))
                                (let ((_target245928246053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252920_ 0)))
                                      (_tl245930246055_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252920_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245930246055_))
                                      (let ((_e245939246058_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245930246055_))))
                                        (let ((_hd245938246061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245939246058_)))
                                              (_tl245937246063_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245939246058_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245937246063_))
                                              (letrec ((_loop245931246066_
                                                        (lambda (_hd245929246069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref245935246071_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd245929246069_))
                      (let ((_e245932246074_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd245929246069_))))
                        (let ((_lp-hd245933246077_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245932246074_)))
                              (_lp-tl245934246079_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245932246074_))))
                          (let ((__tmp253007
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd245933246077_
                                         _kw-ref245935246071_))))
                            (declare (not safe))
                            (_loop245931246066_
                             _lp-tl245934246079_
                             __tmp253007))))
                      (let ((_kw-ref245936246082_
                             (reverse _kw-ref245935246071_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245895245970_))
                            ((lambda (_L246085_
                                      _L246086_
                                      _L246087_
                                      _L246088_
                                      _L246089_)
                               (let* ((_kw-count246140_
                                       (length (let ((__tmp252922
                                                      (lambda (_g246132246135_
                                                               _g246133246137_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g246132246135_
                                                                _g246133246137_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252922
                                                         '()
                                                         _L246086_))))
                                      (_self-index246142_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count246140_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L245841_))
                                     (let* ((_g246145246159_
                                             (lambda (_g246146246156_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g246146246156_))))
                                            (_g246144246330_
                                             (lambda (_g246146246162_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g246146246162_))
                                                   (let ((_e246151246164_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g246146246162_))))
                                                     (let ((_hd246150246167_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e246151246164_)))
                                                           (_tl246149246169_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e246151246164_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246149246169_))
                                                           (let ((_e246154246172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246149246169_))))
                     (let ((_hd246153246175_
                            (let ()
                              (declare (not safe))
                              (##car _e246154246172_)))
                           (_tl246152246177_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246154246172_))))
                       ((lambda (_L246180_ _L246181_)
                          (let ((_self246197_
                                 (list-ref _L246181_ _self-index246142_)))
                            (for-each
                             (lambda (_g246198246200_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g246198246200_
                                  _self246197_
                                  _method-calls243847_
                                  _slot-refs243848_
                                  _class-type-check243849_
                                  _struct-type-check243850_
                                  _struct-type-assert243851_)))
                             _L246180_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?243854_))
                                _stx243753_
                                (let* ((_specializer-id246209_
                                        (let* ((_id246203_
                                                (let ((__tmp252973
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L243828_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp252973
                                                   '"::specialize")))
                                               (_specializer-id246206_
                                                (let ((__tmp252974
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx243753_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id246203_
                                                   __tmp252974))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id246206_))
                                          _specializer-id246206_))
                                       (_lifted-specializer-id246216_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?243856_))
                                            (let* ((_id246211_
                                                    (let ((__tmp252975
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243828_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp252975
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id246213_
                                                    (let ((__tmp252976
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx243753_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id246211_
                                                       __tmp252976))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id246213_))
                                              _lifted-specializer-id246213_)
                                            '#f))
                                       (_$t246218_
                                        (let ((__tmp252977 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252977)))
                                       (_methods246220_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls243847_)))
                                       (_$methods246224_
                                        (map (lambda (_id246222_)
                                               (let ((__tmp252978
                                                      (gensym _id246222_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252978)))
                                             _methods246220_))
                                       (_g252979_
                                        (for-each
                                         (lambda (_g246225246228_
                                                  _g246226246230_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls243847_
                                              _g246225246228_
                                              _g246226246230_)))
                                         _methods246220_
                                         _$methods246224_))
                                       (_methods-bind246241_
                                        (map (lambda (_g246233246236_
                                                      _g246234246238_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind243755_
                                                  _$t246218_
                                                  _g246233246236_
                                                  _g246234246238_)))
                                             _methods246220_
                                             _$methods246224_))
                                       (_slots246243_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs243848_)))
                                       (_$slots246247_
                                        (map (lambda (_id246245_)
                                               (let ((__tmp252980
                                                      (gensym _id246245_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252980)))
                                             _slots246243_))
                                       (_g252981_
                                        (for-each
                                         (lambda (_g246248246251_
                                                  _g246249246253_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs243848_
                                              _g246248246251_
                                              _g246249246253_)))
                                         _slots246243_
                                         _$slots246247_))
                                       (_slots-bind246264_
                                        (map (lambda (_g246256246259_
                                                      _g246257246261_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind243756_
                                                  _$t246218_
                                                  _g246256246259_
                                                  _g246257246261_)))
                                             _slots246243_
                                             _$slots246247_))
                                       (_class-check246266_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check243849_)))
                                       (_$class-check246269_
                                        (map (lambda (_g252982_)
                                               (let ((__tmp252983
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252983)))
                                             _class-check246266_))
                                       (_g252984_
                                        (for-each
                                         (lambda (_g246270246273_
                                                  _g246271246275_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check243849_
                                              _g246270246273_
                                              _g246271246275_)))
                                         _class-check246266_
                                         _$class-check246269_))
                                       (_class-check-bind246286_
                                        (map (lambda (_g246278246281_
                                                      _g246279246283_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind243757_
                                                  _$t246218_
                                                  _g246278246281_
                                                  _g246279246283_)))
                                             _class-check246266_
                                             _$class-check246269_))
                                       (_struct-check-all246288_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check243850_
                                           _struct-type-assert243851_)))
                                       (_struct-check246290_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all246288_)))
                                       (_$struct-check246293_
                                        (map (lambda (_g252985_)
                                               (let ((__tmp252986
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252986)))
                                             _struct-check246290_))
                                       (_g252987_
                                        (for-each
                                         (lambda (_g246294246297_
                                                  _g246295246299_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all246288_
                                              _g246294246297_
                                              _g246295246299_)))
                                         _struct-check246290_
                                         _$struct-check246293_))
                                       (_struct-check-bind246310_
                                        (map (lambda (_g246302246305_
                                                      _g246303246307_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind243758_
                                                  _$t246218_
                                                  _g246302246305_
                                                  _g246303246307_)))
                                             _struct-check246290_
                                             _$struct-check246293_))
                                       (_make-specializer-impl246321_
                                        (lambda (_struct-type-check1246312_
                                                 _struct-type-check2246313_)
                                          (let* ((_specializer-body246319_
                                                  (map (lambda (_g246314246316_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g246314246316_
                                                            _self246197_
                                                            _$t246218_
                                                            _method-calls243847_
                                                            _slot-refs243848_
                                                            _class-type-check243849_
                                                            _struct-type-check1246312_
                                                            _struct-type-check2246313_)))
                                                       _L246180_))
                                                 (__tmp252988
                                                  (let ((__tmp252989
                                                         (let ((__tmp252991
                                                                (let ((__tmp252992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253004
                                      (let ()
                                        (declare (not safe))
                                        (cons _L245843_ '())))
                                     (__tmp252993
                                      (let ((__tmp252994
                                             (let ((__tmp252995
                                                    (let ((__tmp252997
                                                           (let ((__tmp252998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253003
                                 (let ()
                                   (declare (not safe))
                                   (cons _L245842_ '())))
                                (__tmp252999
                                 (let ((__tmp253000
                                        (let ((__tmp253001
                                               (let ((__tmp253002
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L246181_
                                                              _specializer-body246319_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp253002))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp253001
                                           _L245841_))))
                                   (declare (not safe))
                                   (cons __tmp253000 '()))))
                            (declare (not safe))
                            (cons __tmp253003 __tmp252999))))
                     (declare (not safe))
                     (cons __tmp252998 '())))
                  (__tmp252996
                   (let () (declare (not safe)) (cons _L245840_ '()))))
              (declare (not safe))
              (cons __tmp252997 __tmp252996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252995))))
                                        (declare (not safe))
                                        (cons __tmp252994 '()))))
                                 (declare (not safe))
                                 (cons __tmp253004 __tmp252993))))
                          (declare (not safe))
                          (cons __tmp252992 '())))
                       (__tmp252990
                        (let () (declare (not safe)) (cons _L245839_ '()))))
                   (declare (not safe))
                   (cons __tmp252991 __tmp252990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252989))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252988
                                             _stx243753_))))
                                       (_specializer-impl246323_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl246321_
                                           _struct-check-all246288_
                                           _empty243852_)))
                                       (_unchecked-specializer-impl246325_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?243855_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl246321_
                                               _empty243852_
                                               _struct-check-all246288_))
                                            '#f))
                                       (_specializer-impl246327_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl243759_
                                           _$t246218_
                                           _methods-bind246241_
                                           _slots-bind246264_
                                           _class-check-bind246286_
                                           _struct-check-bind246310_
                                           _specializer-impl246323_
                                           _lifted-specializer-id246216_
                                           _unchecked-specializer-impl246325_))))
                                  (let ((__tmp253006
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L243828_)))
                                        (__tmp253005
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id246209_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp253006
                                     '" => "
                                     __tmp253005))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def243760_
                                     _L243828_
                                     _specializer-id246209_
                                     _specializer-impl246327_
                                     _lifted-specializer-id246216_
                                     _unchecked-specializer-impl246325_))))))
                        _tl246152246177_
                        _hd246153246175_)))
                   (let ()
                     (declare (not safe))
                     (_g246145246159_ _g246146246162_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g246145246159_
                                                      _g246146246162_))))))
                                       (declare (not safe))
                                       (_g246144246330_ _L245841_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L245841_))
                                         (let* ((_g246333246363_
                                                 (lambda (_g246334246360_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g246334246360_))))
                                                (_g246332246988_
                                                 (lambda (_g246334246366_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g246334246366_))
                                                       (let ((_e246340246368_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g246334246366_))))
                 (let ((_hd246339246371_
                        (let () (declare (not safe)) (##car _e246340246368_)))
                       (_tl246338246373_
                        (let () (declare (not safe)) (##cdr _e246340246368_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl246338246373_))
                       (let ((_e246343246376_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl246338246373_))))
                         (let ((_hd246342246379_
                                (let ()
                                  (declare (not safe))
                                  (##car _e246343246376_)))
                               (_tl246341246381_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e246343246376_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd246342246379_))
                               (let ((_e246346246384_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd246342246379_))))
                                 (let ((_hd246345246387_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e246346246384_)))
                                       (_tl246344246389_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e246346246384_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd246345246387_))
                                       (let ((_e246349246392_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd246345246387_))))
                                         (let ((_hd246348246395_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e246349246392_)))
                                               (_tl246347246397_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e246349246392_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd246348246395_))
                                               (let ((_e246352246400_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd246348246395_))))
                                                 (let ((_hd246351246403_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246352246400_)))
                                                       (_tl246350246405_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246352246400_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl246350246405_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246347246397_))
                                                           (let ((_e246355246408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246347246397_))))
                     (let ((_hd246354246411_
                            (let ()
                              (declare (not safe))
                              (##car _e246355246408_)))
                           (_tl246353246413_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246355246408_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl246353246413_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl246344246389_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl246341246381_))
                                   (let ((_e246358246416_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl246341246381_))))
                                     (let ((_hd246357246419_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246358246416_)))
                                           (_tl246356246421_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246358246416_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl246356246421_))
                                           ((lambda (_L246424_
                                                     _L246425_
                                                     _L246426_)
                                              (let* ((_g246449246463_
                                                      (lambda (_g246450246460_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246450246460_))))
                                                     (_g246448246504_
                                                      (lambda (_g246450246466_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246450246466_))
                                                            (let ((_e246455246468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246450246466_))))
                      (let ((_hd246454246471_
                             (let ()
                               (declare (not safe))
                               (##car _e246455246468_)))
                            (_tl246453246473_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246455246468_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246453246473_))
                            (let ((_e246458246476_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246453246473_))))
                              (let ((_hd246457246479_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246458246476_)))
                                    (_tl246456246481_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246458246476_))))
                                ((lambda (_L246484_ _L246485_)
                                   (let ((_self246498_
                                          (list-ref
                                           _L246485_
                                           _self-index246142_)))
                                     (for-each
                                      (lambda (_g246499246501_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g246499246501_
                                           _self246498_
                                           _method-calls243847_
                                           _slot-refs243848_
                                           _class-type-check243849_
                                           _struct-type-check243850_
                                           _struct-type-assert243851_)))
                                      _L246484_)))
                                 _tl246456246481_
                                 _hd246457246479_)))
                            (let ()
                              (declare (not safe))
                              (_g246449246463_ _g246450246466_)))))
                    (let ()
                      (declare (not safe))
                      (_g246449246463_ _g246450246466_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246448246504_ _L246425_))
                                              (let* ((_g246507246526_
                                                      (lambda (_g246508246523_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246508246523_))))
                                                     (_g246506246631_
                                                      (lambda (_g246508246529_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246508246529_))
                                                            (let ((_e246512246531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246508246529_))))
                      (let ((_hd246511246534_
                             (let ()
                               (declare (not safe))
                               (##car _e246512246531_)))
                            (_tl246510246536_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246512246531_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl246510246536_))
                            (let ((_g252923_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl246510246536_
                                      '0))))
                              (begin
                                (let ((_g252924_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252923_)
                                             (##vector-length _g252923_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252924_ 2)))
                                      (error "Context expects 2 values"
                                             _g252924_)))
                                (let ((_target246513246539_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252923_ 0)))
                                      (_tl246515246541_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252923_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246515246541_))
                                      (letrec ((_loop246516246544_
                                                (lambda (_hd246514246547_
                                                         _clause246520246549_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd246514246547_))
                                                      (let ((_e246517246552_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd246514246547_))))
                (let ((_lp-hd246518246555_
                       (let () (declare (not safe)) (##car _e246517246552_)))
                      (_lp-tl246519246557_
                       (let () (declare (not safe)) (##cdr _e246517246552_))))
                  (let ((__tmp252926
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd246518246555_ _clause246520246549_))))
                    (declare (not safe))
                    (_loop246516246544_ _lp-tl246519246557_ __tmp252926))))
              (let ((_clause246521246560_ (reverse _clause246520246549_)))
                ((lambda (_L246563_)
                   (for-each
                    (lambda (_clause246576_)
                      (let* ((_g246578246589_
                              (lambda (_g246579246586_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g246579246586_))))
                             (_g246577246621_
                              (lambda (_g246579246592_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g246579246592_))
                                    (let ((_e246584246594_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g246579246592_))))
                                      (let ((_hd246583246597_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246584246594_)))
                                            (_tl246582246599_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246584246594_))))
                                        ((lambda (_L246602_ _L246603_)
                                           (let ((_self246615_
                                                  (list-ref
                                                   _L246603_
                                                   _self-index246142_)))
                                             (for-each
                                              (lambda (_g246616246618_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g246616246618_
                                                   _self246615_
                                                   _method-calls243847_
                                                   _slot-refs243848_
                                                   _class-type-check243849_
                                                   _struct-type-check243850_
                                                   _struct-type-assert243851_)))
                                              _L246602_)))
                                         _tl246582246599_
                                         _hd246583246597_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g246578246589_ _g246579246592_))))))
                        (declare (not safe))
                        (_g246577246621_ _clause246576_)))
                    (let ((__tmp252925
                           (lambda (_g246623246626_ _g246624246628_)
                             (let ()
                               (declare (not safe))
                               (cons _g246623246626_ _g246624246628_)))))
                      (declare (not safe))
                      (foldr1 __tmp252925 '() _L246563_))))
                 _clause246521246560_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop246516246544_
                                           _target246513246539_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g246507246526_ _g246508246529_))))))
                            (let ()
                              (declare (not safe))
                              (_g246507246526_ _g246508246529_)))))
                    (let ()
                      (declare (not safe))
                      (_g246507246526_ _g246508246529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246506246631_ _L246424_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243854_))
                                                  _stx243753_
                                                  (let* ((_specializer-id246640_
                                                          (let* ((_id246634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252927
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243828_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252927 '"::specialize")))
                         (_specializer-id246637_
                          (let ((__tmp252928
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243753_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246634_ __tmp252928))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id246637_))
                    _specializer-id246637_))
                 (_lifted-specializer-id246647_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243856_))
                      (let* ((_id246642_
                              (let ((__tmp252929
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243828_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252929
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id246644_
                              (let ((__tmp252930
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243753_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id246642_
                                 __tmp252930))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id246644_))
                        _lifted-specializer-id246644_)
                      '#f))
                 (_$t246649_
                  (let ((__tmp252931 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252931)))
                 (_methods246651_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243847_)))
                 (_$methods246655_
                  (map (lambda (_id246653_)
                         (let ((__tmp252932 (gensym _id246653_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252932)))
                       _methods246651_))
                 (_g252933_
                  (for-each
                   (lambda (_g246656246659_ _g246657246661_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243847_
                        _g246656246659_
                        _g246657246661_)))
                   _methods246651_
                   _$methods246655_))
                 (_methods-bind246672_
                  (map (lambda (_g246664246667_ _g246665246669_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243755_
                            _$t246649_
                            _g246664246667_
                            _g246665246669_)))
                       _methods246651_
                       _$methods246655_))
                 (_slots246674_
                  (let () (declare (not safe)) (hash-keys _slot-refs243848_)))
                 (_$slots246678_
                  (map (lambda (_id246676_)
                         (let ((__tmp252934 (gensym _id246676_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252934)))
                       _slots246674_))
                 (_g252935_
                  (for-each
                   (lambda (_g246679246682_ _g246680246684_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243848_
                        _g246679246682_
                        _g246680246684_)))
                   _slots246674_
                   _$slots246678_))
                 (_slots-bind246695_
                  (map (lambda (_g246687246690_ _g246688246692_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243756_
                            _$t246649_
                            _g246687246690_
                            _g246688246692_)))
                       _slots246674_
                       _$slots246678_))
                 (_class-check246697_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243849_)))
                 (_$class-check246700_
                  (map (lambda (_g252936_)
                         (let ((__tmp252937 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252937)))
                       _class-check246697_))
                 (_g252938_
                  (for-each
                   (lambda (_g246701246704_ _g246702246706_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243849_
                        _g246701246704_
                        _g246702246706_)))
                   _class-check246697_
                   _$class-check246700_))
                 (_class-check-bind246717_
                  (map (lambda (_g246709246712_ _g246710246714_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243757_
                            _$t246649_
                            _g246709246712_
                            _g246710246714_)))
                       _class-check246697_
                       _$class-check246700_))
                 (_struct-check-all246719_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243850_
                     _struct-type-assert243851_)))
                 (_struct-check246721_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246719_)))
                 (_$struct-check246724_
                  (map (lambda (_g252939_)
                         (let ((__tmp252940 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252940)))
                       _struct-check246721_))
                 (_g252941_
                  (for-each
                   (lambda (_g246725246728_ _g246726246730_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246719_
                        _g246725246728_
                        _g246726246730_)))
                   _struct-check246721_
                   _$struct-check246724_))
                 (_struct-check-bind246741_
                  (map (lambda (_g246733246736_ _g246734246738_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243758_
                            _$t246649_
                            _g246733246736_
                            _g246734246738_)))
                       _struct-check246721_
                       _$struct-check246724_))
                 (_make-specializer-lambda-expr246827_
                  (lambda (_struct-type-check1246743_
                           _struct-type-check2246744_)
                    (let* ((_g246746246760_
                            (lambda (_g246747246757_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246747246757_))))
                           (_g246745246824_
                            (lambda (_g246747246763_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246747246763_))
                                  (let ((_e246752246765_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246747246763_))))
                                    (let ((_hd246751246768_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246752246765_)))
                                          (_tl246750246770_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246752246765_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246750246770_))
                                          (let ((_e246755246773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246750246770_))))
                                            (let ((_hd246754246776_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246755246773_)))
                                                  (_tl246753246778_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246755246773_))))
                                              ((lambda (_L246781_ _L246782_)
                                                 (let* ((_self246815_
                                                         (list-ref
                                                          _L246782_
                                                          _self-index246142_))
                                                        (_body246821_
                                                         (map (lambda (_g246816246818_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g246816246818_
                           _self246815_
                           _$t246649_
                           _method-calls243847_
                           _slot-refs243848_
                           _class-type-check243849_
                           _struct-type-check1246743_
                           _struct-type-check2246744_)))
                      _L246781_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252942
                                                          (let ((__tmp252943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L246782_ _body246821_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp252943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252942
                                                      _L246425_))))
                                               _tl246753246778_
                                               _hd246754246776_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g246746246760_
                                             _g246747246763_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246746246760_ _g246747246763_))))))
                      (declare (not safe))
                      (_g246745246824_ _L246425_))))
                 (_make-specializer-case-lambda-expr246966_
                  (lambda (_struct-type-check1246829_
                           _struct-type-check2246830_)
                    (let* ((_g246832246851_
                            (lambda (_g246833246848_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246833246848_))))
                           (_g246831246963_
                            (lambda (_g246833246854_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246833246854_))
                                  (let ((_e246837246856_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246833246854_))))
                                    (let ((_hd246836246859_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246837246856_)))
                                          (_tl246835246861_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246837246856_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl246835246861_))
                                          (let ((_g252944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl246835246861_
                                                    '0))))
                                            (begin
                                              (let ((_g252945_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g252944_)
                                                           (##vector-length
                                                            _g252944_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g252945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g252945_)))
                                              (let ((_target246838246864_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252944_
                                                        0)))
                                                    (_tl246840246866_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252944_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl246840246866_))
                                                    (letrec ((_loop246841246869_
                                                              (lambda (_hd246839246872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause246845246874_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd246839246872_))
                            (let ((_e246842246877_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd246839246872_))))
                              (let ((_lp-hd246843246880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246842246877_)))
                                    (_lp-tl246844246882_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246842246877_))))
                                (let ((__tmp252948
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd246843246880_
                                               _clause246845246874_))))
                                  (declare (not safe))
                                  (_loop246841246869_
                                   _lp-tl246844246882_
                                   __tmp252948))))
                            (let ((_clause246846246885_
                                   (reverse _clause246845246874_)))
                              ((lambda (_L246888_)
                                 (let* ((_clauses246961_
                                         (map (lambda (_clause246903_)
                                                (let* ((_g246905246916_
                                                        (lambda (_g246906246913_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g246906246913_))))
                                                       (_g246904246951_
                                                        (lambda (_g246906246919_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g246906246919_))
                      (let ((_e246911246921_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g246906246919_))))
                        (let ((_hd246910246924_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246911246921_)))
                              (_tl246909246926_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246911246921_))))
                          ((lambda (_L246929_ _L246930_)
                             (let* ((_self246942_
                                     (list-ref _L246930_ _self-index246142_))
                                    (_body246948_
                                     (map (lambda (_g246943246945_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g246943246945_
                                               _self246942_
                                               _$t246649_
                                               _method-calls243847_
                                               _slot-refs243848_
                                               _class-type-check243849_
                                               _struct-type-check1246829_
                                               _struct-type-check2246830_)))
                                          _L246929_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L246930_ _body246948_))))
                           _tl246909246926_
                           _hd246910246924_)))
                      (let ()
                        (declare (not safe))
                        (_g246905246916_ _g246906246919_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g246904246951_
                                                   _clause246903_)))
                                              (let ((__tmp252946
                                                     (lambda (_g246953246956_
                                                              _g246954246958_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g246953246956_
                                                               _g246954246958_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp252946
                                                        '()
                                                        _L246888_))))
                                        (__tmp252947
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses246961_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252947
                                    _L246424_)))
                               _clause246846246885_))))))
              (let ()
                (declare (not safe))
                (_loop246841246869_ _target246838246864_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g246832246851_
                                                       _g246833246854_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g246832246851_
                                             _g246833246854_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246832246851_ _g246833246854_))))))
                      (declare (not safe))
                      (_g246831246963_ _L246424_))))
                 (_make-specializer-impl246971_
                  (lambda (_specializer-lambda-expr246968_
                           _specializer-case-lambda-expr246969_)
                    (let ((__tmp252949
                           (let ((__tmp252950
                                  (let ((__tmp252952
                                         (let ((__tmp252953
                                                (let ((__tmp252970
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L245843_ '())))
                                                      (__tmp252954
                                                       (let ((__tmp252955
                                                              (let ((__tmp252956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252958
                                    (let ((__tmp252959
                                           (let ((__tmp252969
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L245842_ '())))
                                                 (__tmp252960
                                                  (let ((__tmp252961
                                                         (let ((__tmp252962
                                                                (let ((__tmp252963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252965
                                      (let ((__tmp252966
                                             (let ((__tmp252968
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L246426_ '())))
                                                   (__tmp252967
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr246968_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp252968
                                                     __tmp252967))))
                                        (declare (not safe))
                                        (cons __tmp252966 '())))
                                     (__tmp252964
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr246969_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp252965 __tmp252964))))
                          (declare (not safe))
                          (cons '%#let-values __tmp252963))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252962 _stx243753_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252961 '()))))
                                             (declare (not safe))
                                             (cons __tmp252969 __tmp252960))))
                                      (declare (not safe))
                                      (cons __tmp252959 '())))
                                   (__tmp252957
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245840_ '()))))
                               (declare (not safe))
                               (cons __tmp252958 __tmp252957))))
                        (declare (not safe))
                        (cons '%#let-values __tmp252956))))
                 (declare (not safe))
                 (cons __tmp252955 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252970
                                                        __tmp252954))))
                                           (declare (not safe))
                                           (cons __tmp252953 '())))
                                        (__tmp252951
                                         (let ()
                                           (declare (not safe))
                                           (cons _L245839_ '()))))
                                    (declare (not safe))
                                    (cons __tmp252952 __tmp252951))))
                             (declare (not safe))
                             (cons '%#let-values __tmp252950))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252949 _stx243753_))))
                 (_specializer-lambda-expr246973_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr246827_
                     _struct-check-all246719_
                     _empty243852_)))
                 (_specializer-case-lambda-expr246975_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr246966_
                     _struct-check-all246719_
                     _empty243852_)))
                 (_specializer-impl246977_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246971_
                     _specializer-lambda-expr246973_
                     _specializer-case-lambda-expr246975_)))
                 (_unchecked-specializer-lambda-expr246979_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243855_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr246827_
                         _empty243852_
                         _struct-check-all246719_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr246981_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243855_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr246966_
                         _empty243852_
                         _struct-check-all246719_))
                      '#f))
                 (_unchecked-specializer-impl246983_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243855_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246971_
                         _unchecked-specializer-lambda-expr246979_
                         _unchecked-specializer-case-lambda-expr246981_))
                      '#f))
                 (_specializer-impl246985_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243759_
                     _$t246649_
                     _methods-bind246672_
                     _slots-bind246695_
                     _class-check-bind246717_
                     _struct-check-bind246741_
                     _specializer-impl246977_
                     _lifted-specializer-id246647_
                     _unchecked-specializer-impl246983_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252972
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243828_)))
                                                          (__tmp252971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id246640_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252972
                                                       '" => "
                                                       __tmp252971))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243760_
                                                       _L243828_
                                                       _specializer-id246640_
                                                       _specializer-impl246985_
                                                       _lifted-specializer-id246647_
                                                       _unchecked-specializer-impl246983_)))))
                                            _hd246357246419_
                                            _hd246354246411_
                                            _hd246351246403_)
                                           (let ()
                                             (declare (not safe))
                                             (_g246333246363_
                                              _g246334246366_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246333246363_ _g246334246366_)))
                               (let ()
                                 (declare (not safe))
                                 (_g246333246363_ _g246334246366_)))
                           (let ()
                             (declare (not safe))
                             (_g246333246363_ _g246334246366_)))))
                   (let ()
                     (declare (not safe))
                     (_g246333246363_ _g246334246366_)))
               (let ()
                 (declare (not safe))
                 (_g246333246363_ _g246334246366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246333246363_
                                                  _g246334246366_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g246333246363_ _g246334246366_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g246333246363_ _g246334246366_)))))
                       (let ()
                         (declare (not safe))
                         (_g246333246363_ _g246334246366_)))))
               (let ()
                 (declare (not safe))
                 (_g246333246363_ _g246334246366_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g246332246988_ _L245841_))
                                         _stx243753_))))
                             _hd245938246061_
                             _kw-ref245936246082_
                             _hd245926246048_
                             _hd245917246024_
                             _hd245908246000_)
                            (let ()
                              (declare (not safe))
                              (_g245882245944_ _g245883245947_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop245931246066_
                                                   _target245928246053_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g245882245944_
                                                 _g245883245947_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245882245944_ _g245883245947_))))))
                            (let ()
                              (declare (not safe))
                              (_g245882245944_ _g245883245947_)))
                        (let ()
                          (declare (not safe))
                          (_g245882245944_ _g245883245947_)))
                    (let ()
                      (declare (not safe))
                      (_g245882245944_ _g245883245947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245882245944_
                                                       _g245883245947_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245882245944_
                                                   _g245883245947_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g245882245944_
                                               _g245883245947_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245882245944_ _g245883245947_)))))
                            (let ()
                              (declare (not safe))
                              (_g245882245944_ _g245883245947_)))
                        (let ()
                          (declare (not safe))
                          (_g245882245944_ _g245883245947_)))))
                (let ()
                  (declare (not safe))
                  (_g245882245944_ _g245883245947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245882245944_
                                                       _g245883245947_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245882245944_
                                                   _g245883245947_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g245882245944_ _g245883245947_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245882245944_ _g245883245947_)))
                            (let ()
                              (declare (not safe))
                              (_g245882245944_ _g245883245947_)))))
                    (let ()
                      (declare (not safe))
                      (_g245882245944_ _g245883245947_)))
                (let ()
                  (declare (not safe))
                  (_g245882245944_ _g245883245947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245882245944_
                                                       _g245883245947_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245882245944_
                                               _g245883245947_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245882245944_ _g245883245947_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245882245944_ _g245883245947_)))
                            (let ()
                              (declare (not safe))
                              (_g245882245944_ _g245883245947_)))))
                    (let ()
                      (declare (not safe))
                      (_g245882245944_ _g245883245947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245882245944_
                                                       _g245883245947_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245882245944_
                                               _g245883245947_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245882245944_ _g245883245947_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245882245944_ _g245883245947_)))))
                            (let ()
                              (declare (not safe))
                              (_g245882245944_ _g245883245947_))))))
                (declare (not safe))
                (_g245881246991_ _L245840_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd245716245834_
                                                    _hd245713245826_
                                                    _hd245710245818_
                                                    _hd245707245810_
                                                    _hd245689245762_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245669245722_
                                                      _g245670245725_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g245669245722_
                                              _g245670245725_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g245669245722_ _g245670245725_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g245669245722_ _g245670245725_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245669245722_ _g245670245725_)))))
                       (let ()
                         (declare (not safe))
                         (_g245669245722_ _g245670245725_)))
                   (let ()
                     (declare (not safe))
                     (_g245669245722_ _g245670245725_)))
               (let ()
                 (declare (not safe))
                 (_g245669245722_ _g245670245725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245669245722_
                                                  _g245670245725_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245669245722_
                                              _g245670245725_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245669245722_ _g245670245725_)))))
                           (let ()
                             (declare (not safe))
                             (_g245669245722_ _g245670245725_)))))
                   (let ()
                     (declare (not safe))
                     (_g245669245722_ _g245670245725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245669245722_
                                                      _g245670245725_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245669245722_
                                                  _g245670245725_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245669245722_
                                              _g245670245725_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245669245722_ _g245670245725_)))))
                           (let ()
                             (declare (not safe))
                             (_g245669245722_ _g245670245725_)))
                       (let ()
                         (declare (not safe))
                         (_g245669245722_ _g245670245725_)))))
               (let ()
                 (declare (not safe))
                 (_g245669245722_ _g245670245725_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245669245722_
                                                  _g245670245725_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245669245722_ _g245670245725_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245669245722_ _g245670245725_)))
                           (let ()
                             (declare (not safe))
                             (_g245669245722_ _g245670245725_)))
                       (let ()
                         (declare (not safe))
                         (_g245669245722_ _g245670245725_)))))
               (let ()
                 (declare (not safe))
                 (_g245669245722_ _g245670245725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245668246994_ _L243827_))
                                         _stx243753_))))))))
                  (___kont251701251702_ (lambda () _stx243753_)))
              (let ((___match251730251731_
                     (lambda (_e243769243795_
                              _hd243768243798_
                              _tl243767243800_
                              _e243772243803_
                              _hd243771243806_
                              _tl243770243808_
                              _e243775243811_
                              _hd243774243814_
                              _tl243773243816_
                              _e243778243819_
                              _hd243777243822_
                              _tl243776243824_)
                       (let ((_L243827_ _hd243777243822_)
                             (_L243828_ _hd243774243814_))
                         (if (let ((__tmp253089
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L243828_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp253089))
                             (___kont251699251700_ _L243827_ _L243828_)
                             (___kont251701251702_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251697251698_))
                    (let ((_e243769243795_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251697251698_))))
                      (let ((_tl243767243800_
                             (let ()
                               (declare (not safe))
                               (##cdr _e243769243795_)))
                            (_hd243768243798_
                             (let ()
                               (declare (not safe))
                               (##car _e243769243795_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243767243800_))
                            (let ((_e243772243803_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243767243800_))))
                              (let ((_tl243770243808_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243772243803_)))
                                    (_hd243771243806_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243772243803_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd243771243806_))
                                    (let ((_e243775243811_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd243771243806_))))
                                      (let ((_tl243773243816_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e243775243811_)))
                                            (_hd243774243814_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e243775243811_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243773243816_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl243770243808_))
                                                (let ((_e243778243819_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl243770243808_))))
                                                  (let ((_tl243776243824_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e243778243819_)))
                                                        (_hd243777243822_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e243778243819_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl243776243824_))
                                                        (___match251730251731_
                                                         _e243769243795_
                                                         _hd243768243798_
                                                         _tl243767243800_
                                                         _e243772243803_
                                                         _hd243771243806_
                                                         _tl243770243808_
                                                         _e243775243811_
                                                         _hd243774243814_
                                                         _tl243773243816_
                                                         _e243778243819_
                                                         _hd243777243822_
                                                         _tl243776243824_)
                                                        (___kont251701251702_))))
                                                (___kont251701251702_))
                                            (___kont251701251702_))))
                                    (___kont251701251702_))))
                            (___kont251701251702_))))
                    (___kont251701251702_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx242729_
               _self242730_
               _methods242731_
               _slots242732_
               _class-check242733_
               _struct-check242734_
               _struct-assert242735_)
        (let* ((___stx251733251734_ _stx242729_)
               (_g242743242965_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251733251734_)))))
          (let ((___kont251735251736_
                 (lambda (_L243702_ _L243703_ _L243704_ _L243705_)
                   (let ((__tmp253090
                          (let () (declare (not safe)) (gx#stx-e _L243703_))))
                     (declare (not safe))
                     (table-set! _methods242731_ __tmp253090 '#t))
                   (for-each
                    (lambda (_g243738243740_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243738243740_
                         _self242730_
                         _methods242731_
                         _slots242732_
                         _class-check242733_
                         _struct-check242734_
                         _struct-assert242735_)))
                    (let ((__tmp253091
                           (lambda (_g243742243745_ _g243743243747_)
                             (let ()
                               (declare (not safe))
                               (cons _g243742243745_ _g243743243747_)))))
                      (declare (not safe))
                      (foldr1 __tmp253091 '() _L243702_)))))
                (___kont251739251740_
                 (lambda (_L243537_ _L243538_ _L243539_ _L243540_ _L243541_)
                   (let ((__tmp253092
                          (let () (declare (not safe)) (gx#stx-e _L243538_))))
                     (declare (not safe))
                     (table-set! _methods242731_ __tmp253092 '#t))
                   (for-each
                    (lambda (_g243581243583_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243581243583_
                         _self242730_
                         _methods242731_
                         _slots242732_
                         _class-check242733_
                         _struct-check242734_
                         _struct-assert242735_)))
                    (let ((__tmp253093
                           (lambda (_g243585243588_ _g243586243590_)
                             (let ()
                               (declare (not safe))
                               (cons _g243585243588_ _g243586243590_)))))
                      (declare (not safe))
                      (foldr1 __tmp253093 '() _L243537_)))))
                (___kont251743251744_
                 (lambda (_L243370_ _L243371_ _L243372_)
                   (let ((__tmp253094
                          (let () (declare (not safe)) (gx#stx-e _L243370_))))
                     (declare (not safe))
                     (table-set! _slots242732_ __tmp253094 '#t))))
                (___kont251745251746_
                 (lambda (_L243247_ _L243248_ _L243249_ _L243250_)
                   (let ((__tmp253095
                          (let () (declare (not safe)) (gx#stx-e _L243248_))))
                     (declare (not safe))
                     (table-set! _slots242732_ __tmp253095 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L243247_
                      _self242730_
                      _methods242731_
                      _slots242732_
                      _class-check242733_
                      _struct-check242734_
                      _struct-assert242735_))))
                (___kont251747251748_
                 (lambda (_L243131_ _L243132_)
                   (let ((__tmp253096
                          (##structure-ref
                           (let ((__tmp253097
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L243132_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253097))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242732_ __tmp253096 '#t))))
                (___kont251749251750_
                 (lambda (_L243041_ _L243042_ _L243043_)
                   (let ((__tmp253098
                          (##structure-ref
                           (let ((__tmp253099
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L243043_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253099))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242732_ __tmp253098 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L243041_
                      _self242730_
                      _methods242731_
                      _slots242732_
                      _class-check242733_
                      _struct-check242734_
                      _struct-assert242735_))))
                (___kont251751251752_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx242729_
                      _self242730_
                      _methods242731_
                      _slots242732_
                      _class-check242733_
                      _struct-check242734_
                      _struct-assert242735_)))))
            (let* ((___match252232252233_
                    (lambda (_e242939242977_
                             _hd242938242980_
                             _tl242937242982_
                             _e242942242985_
                             _hd242941242988_
                             _tl242940242990_
                             _e242945242993_
                             _hd242944242996_
                             _tl242943242998_
                             _e242948243001_
                             _hd242947243004_
                             _tl242946243006_
                             _e242951243009_
                             _hd242950243012_
                             _tl242949243014_
                             _e242954243017_
                             _hd242953243020_
                             _tl242952243022_
                             _e242957243025_
                             _hd242956243028_
                             _tl242955243030_
                             _e242960243033_
                             _hd242959243036_
                             _tl242958243038_)
                      (let ((_L243041_ _hd242959243036_)
                            (_L243042_ _hd242956243028_)
                            (_L243043_ _hd242947243004_))
                        (if (and (let ((__tmp253100
                                        (let ((__tmp253101
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L243043_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253101))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253100
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243042_
                                    _self242730_)))
                            (___kont251749251750_
                             _L243041_
                             _L243042_
                             _L243043_)
                            (___kont251751251752_)))))
                   (___match252230252231_
                    (lambda (_e242939242977_
                             _hd242938242980_
                             _tl242937242982_
                             _e242942242985_
                             _hd242941242988_
                             _tl242940242990_
                             _e242945242993_
                             _hd242944242996_
                             _tl242943242998_
                             _e242948243001_
                             _hd242947243004_
                             _tl242946243006_
                             _e242951243009_
                             _hd242950243012_
                             _tl242949243014_
                             _e242954243017_
                             _hd242953243020_
                             _tl242952243022_
                             _e242957243025_
                             _hd242956243028_
                             _tl242955243030_
                             _e242960243033_
                             _hd242959243036_
                             _tl242958243038_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242958243038_))
                          (___match252232252233_
                           _e242939242977_
                           _hd242938242980_
                           _tl242937242982_
                           _e242942242985_
                           _hd242941242988_
                           _tl242940242990_
                           _e242945242993_
                           _hd242944242996_
                           _tl242943242998_
                           _e242948243001_
                           _hd242947243004_
                           _tl242946243006_
                           _e242951243009_
                           _hd242950243012_
                           _tl242949243014_
                           _e242954243017_
                           _hd242953243020_
                           _tl242952243022_
                           _e242957243025_
                           _hd242956243028_
                           _tl242955243030_
                           _e242960243033_
                           _hd242959243036_
                           _tl242958243038_)
                          (___kont251751251752_))))
                   (___match252224252225_
                    (lambda (_e242939242977_
                             _hd242938242980_
                             _tl242937242982_
                             _e242942242985_
                             _hd242941242988_
                             _tl242940242990_
                             _e242945242993_
                             _hd242944242996_
                             _tl242943242998_
                             _e242948243001_
                             _hd242947243004_
                             _tl242946243006_
                             _e242951243009_
                             _hd242950243012_
                             _tl242949243014_
                             _e242954243017_
                             _hd242953243020_
                             _tl242952243022_
                             _e242957243025_
                             _hd242956243028_
                             _tl242955243030_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242949243014_))
                          (let ((_e242960243033_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242949243014_))))
                            (let ((_tl242958243038_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242960243033_)))
                                  (_hd242959243036_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242960243033_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242958243038_))
                                  (___match252232252233_
                                   _e242939242977_
                                   _hd242938242980_
                                   _tl242937242982_
                                   _e242942242985_
                                   _hd242941242988_
                                   _tl242940242990_
                                   _e242945242993_
                                   _hd242944242996_
                                   _tl242943242998_
                                   _e242948243001_
                                   _hd242947243004_
                                   _tl242946243006_
                                   _e242951243009_
                                   _hd242950243012_
                                   _tl242949243014_
                                   _e242954243017_
                                   _hd242953243020_
                                   _tl242952243022_
                                   _e242957243025_
                                   _hd242956243028_
                                   _tl242955243030_
                                   _e242960243033_
                                   _hd242959243036_
                                   _tl242958243038_)
                                  (___kont251751251752_))))
                          (___kont251751251752_))))
                   (___match252170252171_
                    (lambda (_e242915243075_
                             _hd242914243078_
                             _tl242913243080_
                             _e242918243083_
                             _hd242917243086_
                             _tl242916243088_
                             _e242921243091_
                             _hd242920243094_
                             _tl242919243096_
                             _e242924243099_
                             _hd242923243102_
                             _tl242922243104_
                             _e242927243107_
                             _hd242926243110_
                             _tl242925243112_
                             _e242930243115_
                             _hd242929243118_
                             _tl242928243120_
                             _e242933243123_
                             _hd242932243126_
                             _tl242931243128_)
                      (let ((_L243131_ _hd242932243126_)
                            (_L243132_ _hd242923243102_))
                        (if (and (let ((__tmp253102
                                        (let ((__tmp253103
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L243132_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253103))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253102
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243131_
                                    _self242730_)))
                            (___kont251747251748_ _L243131_ _L243132_)
                            (___kont251751251752_)))))
                   (___match252168252169_
                    (lambda (_e242915243075_
                             _hd242914243078_
                             _tl242913243080_
                             _e242918243083_
                             _hd242917243086_
                             _tl242916243088_
                             _e242921243091_
                             _hd242920243094_
                             _tl242919243096_
                             _e242924243099_
                             _hd242923243102_
                             _tl242922243104_
                             _e242927243107_
                             _hd242926243110_
                             _tl242925243112_
                             _e242930243115_
                             _hd242929243118_
                             _tl242928243120_
                             _e242933243123_
                             _hd242932243126_
                             _tl242931243128_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242925243112_))
                          (___match252170252171_
                           _e242915243075_
                           _hd242914243078_
                           _tl242913243080_
                           _e242918243083_
                           _hd242917243086_
                           _tl242916243088_
                           _e242921243091_
                           _hd242920243094_
                           _tl242919243096_
                           _e242924243099_
                           _hd242923243102_
                           _tl242922243104_
                           _e242927243107_
                           _hd242926243110_
                           _tl242925243112_
                           _e242930243115_
                           _hd242929243118_
                           _tl242928243120_
                           _e242933243123_
                           _hd242932243126_
                           _tl242931243128_)
                          (___match252224252225_
                           _e242915243075_
                           _hd242914243078_
                           _tl242913243080_
                           _e242918243083_
                           _hd242917243086_
                           _tl242916243088_
                           _e242921243091_
                           _hd242920243094_
                           _tl242919243096_
                           _e242924243099_
                           _hd242923243102_
                           _tl242922243104_
                           _e242927243107_
                           _hd242926243110_
                           _tl242925243112_
                           _e242930243115_
                           _hd242929243118_
                           _tl242928243120_
                           _e242933243123_
                           _hd242932243126_
                           _tl242931243128_))))
                   (___match252114252115_
                    (lambda (_e242880243159_
                             _hd242879243162_
                             _tl242878243164_
                             _e242883243167_
                             _hd242882243170_
                             _tl242881243172_
                             _e242886243175_
                             _hd242885243178_
                             _tl242884243180_
                             _e242889243183_
                             _hd242888243186_
                             _tl242887243188_
                             _e242892243191_
                             _hd242891243194_
                             _tl242890243196_
                             _e242895243199_
                             _hd242894243202_
                             _tl242893243204_
                             _e242898243207_
                             _hd242897243210_
                             _tl242896243212_
                             _e242901243215_
                             _hd242900243218_
                             _tl242899243220_
                             _e242904243223_
                             _hd242903243226_
                             _tl242902243228_
                             _e242907243231_
                             _hd242906243234_
                             _tl242905243236_
                             _e242910243239_
                             _hd242909243242_
                             _tl242908243244_)
                      (let ((_L243247_ _hd242909243242_)
                            (_L243248_ _hd242906243234_)
                            (_L243249_ _hd242897243210_)
                            (_L243250_ _hd242888243186_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243250_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243250_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243249_
                                    _self242730_)))
                            (___kont251745251746_
                             _L243247_
                             _L243248_
                             _L243249_
                             _L243250_)
                            (___kont251751251752_)))))
                   (___match252106252107_
                    (lambda (_e242880243159_
                             _hd242879243162_
                             _tl242878243164_
                             _e242883243167_
                             _hd242882243170_
                             _tl242881243172_
                             _e242886243175_
                             _hd242885243178_
                             _tl242884243180_
                             _e242889243183_
                             _hd242888243186_
                             _tl242887243188_
                             _e242892243191_
                             _hd242891243194_
                             _tl242890243196_
                             _e242895243199_
                             _hd242894243202_
                             _tl242893243204_
                             _e242898243207_
                             _hd242897243210_
                             _tl242896243212_
                             _e242901243215_
                             _hd242900243218_
                             _tl242899243220_
                             _e242904243223_
                             _hd242903243226_
                             _tl242902243228_
                             _e242907243231_
                             _hd242906243234_
                             _tl242905243236_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242899243220_))
                          (let ((_e242910243239_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242899243220_))))
                            (let ((_tl242908243244_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242910243239_)))
                                  (_hd242909243242_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242910243239_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242908243244_))
                                  (___match252114252115_
                                   _e242880243159_
                                   _hd242879243162_
                                   _tl242878243164_
                                   _e242883243167_
                                   _hd242882243170_
                                   _tl242881243172_
                                   _e242886243175_
                                   _hd242885243178_
                                   _tl242884243180_
                                   _e242889243183_
                                   _hd242888243186_
                                   _tl242887243188_
                                   _e242892243191_
                                   _hd242891243194_
                                   _tl242890243196_
                                   _e242895243199_
                                   _hd242894243202_
                                   _tl242893243204_
                                   _e242898243207_
                                   _hd242897243210_
                                   _tl242896243212_
                                   _e242901243215_
                                   _hd242900243218_
                                   _tl242899243220_
                                   _e242904243223_
                                   _hd242903243226_
                                   _tl242902243228_
                                   _e242907243231_
                                   _hd242906243234_
                                   _tl242905243236_
                                   _e242910243239_
                                   _hd242909243242_
                                   _tl242908243244_)
                                  (___kont251751251752_))))
                          (___match252230252231_
                           _e242880243159_
                           _hd242879243162_
                           _tl242878243164_
                           _e242883243167_
                           _hd242882243170_
                           _tl242881243172_
                           _e242886243175_
                           _hd242885243178_
                           _tl242884243180_
                           _e242889243183_
                           _hd242888243186_
                           _tl242887243188_
                           _e242892243191_
                           _hd242891243194_
                           _tl242890243196_
                           _e242895243199_
                           _hd242894243202_
                           _tl242893243204_
                           _e242898243207_
                           _hd242897243210_
                           _tl242896243212_
                           _e242901243215_
                           _hd242900243218_
                           _tl242899243220_))))
                   (___match252028252029_
                    (lambda (_e242846243290_
                             _hd242845243293_
                             _tl242844243295_
                             _e242849243298_
                             _hd242848243301_
                             _tl242847243303_
                             _e242852243306_
                             _hd242851243309_
                             _tl242850243311_
                             _e242855243314_
                             _hd242854243317_
                             _tl242853243319_
                             _e242858243322_
                             _hd242857243325_
                             _tl242856243327_
                             _e242861243330_
                             _hd242860243333_
                             _tl242859243335_
                             _e242864243338_
                             _hd242863243341_
                             _tl242862243343_
                             _e242867243346_
                             _hd242866243349_
                             _tl242865243351_
                             _e242870243354_
                             _hd242869243357_
                             _tl242868243359_
                             _e242873243362_
                             _hd242872243365_
                             _tl242871243367_)
                      (let ((_L243370_ _hd242872243365_)
                            (_L243371_ _hd242863243341_)
                            (_L243372_ _hd242854243317_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243372_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243372_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243371_
                                    _self242730_)))
                            (___kont251743251744_
                             _L243370_
                             _L243371_
                             _L243372_)
                            (___match252232252233_
                             _e242846243290_
                             _hd242845243293_
                             _tl242844243295_
                             _e242849243298_
                             _hd242848243301_
                             _tl242847243303_
                             _e242852243306_
                             _hd242851243309_
                             _tl242850243311_
                             _e242855243314_
                             _hd242854243317_
                             _tl242853243319_
                             _e242858243322_
                             _hd242857243325_
                             _tl242856243327_
                             _e242861243330_
                             _hd242860243333_
                             _tl242859243335_
                             _e242864243338_
                             _hd242863243341_
                             _tl242862243343_
                             _e242867243346_
                             _hd242866243349_
                             _tl242865243351_)))))
                   (___match252026252027_
                    (lambda (_e242846243290_
                             _hd242845243293_
                             _tl242844243295_
                             _e242849243298_
                             _hd242848243301_
                             _tl242847243303_
                             _e242852243306_
                             _hd242851243309_
                             _tl242850243311_
                             _e242855243314_
                             _hd242854243317_
                             _tl242853243319_
                             _e242858243322_
                             _hd242857243325_
                             _tl242856243327_
                             _e242861243330_
                             _hd242860243333_
                             _tl242859243335_
                             _e242864243338_
                             _hd242863243341_
                             _tl242862243343_
                             _e242867243346_
                             _hd242866243349_
                             _tl242865243351_
                             _e242870243354_
                             _hd242869243357_
                             _tl242868243359_
                             _e242873243362_
                             _hd242872243365_
                             _tl242871243367_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242865243351_))
                          (___match252028252029_
                           _e242846243290_
                           _hd242845243293_
                           _tl242844243295_
                           _e242849243298_
                           _hd242848243301_
                           _tl242847243303_
                           _e242852243306_
                           _hd242851243309_
                           _tl242850243311_
                           _e242855243314_
                           _hd242854243317_
                           _tl242853243319_
                           _e242858243322_
                           _hd242857243325_
                           _tl242856243327_
                           _e242861243330_
                           _hd242860243333_
                           _tl242859243335_
                           _e242864243338_
                           _hd242863243341_
                           _tl242862243343_
                           _e242867243346_
                           _hd242866243349_
                           _tl242865243351_
                           _e242870243354_
                           _hd242869243357_
                           _tl242868243359_
                           _e242873243362_
                           _hd242872243365_
                           _tl242871243367_)
                          (___match252106252107_
                           _e242846243290_
                           _hd242845243293_
                           _tl242844243295_
                           _e242849243298_
                           _hd242848243301_
                           _tl242847243303_
                           _e242852243306_
                           _hd242851243309_
                           _tl242850243311_
                           _e242855243314_
                           _hd242854243317_
                           _tl242853243319_
                           _e242858243322_
                           _hd242857243325_
                           _tl242856243327_
                           _e242861243330_
                           _hd242860243333_
                           _tl242859243335_
                           _e242864243338_
                           _hd242863243341_
                           _tl242862243343_
                           _e242867243346_
                           _hd242866243349_
                           _tl242865243351_
                           _e242870243354_
                           _hd242869243357_
                           _tl242868243359_
                           _e242873243362_
                           _hd242872243365_
                           _tl242871243367_))))
                   (___match252016252017_
                    (lambda (_e242846243290_
                             _hd242845243293_
                             _tl242844243295_
                             _e242849243298_
                             _hd242848243301_
                             _tl242847243303_
                             _e242852243306_
                             _hd242851243309_
                             _tl242850243311_
                             _e242855243314_
                             _hd242854243317_
                             _tl242853243319_
                             _e242858243322_
                             _hd242857243325_
                             _tl242856243327_
                             _e242861243330_
                             _hd242860243333_
                             _tl242859243335_
                             _e242864243338_
                             _hd242863243341_
                             _tl242862243343_
                             _e242867243346_
                             _hd242866243349_
                             _tl242865243351_
                             _e242870243354_
                             _hd242869243357_
                             _tl242868243359_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd242869243357_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242868243359_))
                              (let ((_e242873243362_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242868243359_))))
                                (let ((_tl242871243367_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242873243362_)))
                                      (_hd242872243365_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242873243362_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242871243367_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242865243351_))
                                          (___match252028252029_
                                           _e242846243290_
                                           _hd242845243293_
                                           _tl242844243295_
                                           _e242849243298_
                                           _hd242848243301_
                                           _tl242847243303_
                                           _e242852243306_
                                           _hd242851243309_
                                           _tl242850243311_
                                           _e242855243314_
                                           _hd242854243317_
                                           _tl242853243319_
                                           _e242858243322_
                                           _hd242857243325_
                                           _tl242856243327_
                                           _e242861243330_
                                           _hd242860243333_
                                           _tl242859243335_
                                           _e242864243338_
                                           _hd242863243341_
                                           _tl242862243343_
                                           _e242867243346_
                                           _hd242866243349_
                                           _tl242865243351_
                                           _e242870243354_
                                           _hd242869243357_
                                           _tl242868243359_
                                           _e242873243362_
                                           _hd242872243365_
                                           _tl242871243367_)
                                          (___match252106252107_
                                           _e242846243290_
                                           _hd242845243293_
                                           _tl242844243295_
                                           _e242849243298_
                                           _hd242848243301_
                                           _tl242847243303_
                                           _e242852243306_
                                           _hd242851243309_
                                           _tl242850243311_
                                           _e242855243314_
                                           _hd242854243317_
                                           _tl242853243319_
                                           _e242858243322_
                                           _hd242857243325_
                                           _tl242856243327_
                                           _e242861243330_
                                           _hd242860243333_
                                           _tl242859243335_
                                           _e242864243338_
                                           _hd242863243341_
                                           _tl242862243343_
                                           _e242867243346_
                                           _hd242866243349_
                                           _tl242865243351_
                                           _e242870243354_
                                           _hd242869243357_
                                           _tl242868243359_
                                           _e242873243362_
                                           _hd242872243365_
                                           _tl242871243367_))
                                      (___match252230252231_
                                       _e242846243290_
                                       _hd242845243293_
                                       _tl242844243295_
                                       _e242849243298_
                                       _hd242848243301_
                                       _tl242847243303_
                                       _e242852243306_
                                       _hd242851243309_
                                       _tl242850243311_
                                       _e242855243314_
                                       _hd242854243317_
                                       _tl242853243319_
                                       _e242858243322_
                                       _hd242857243325_
                                       _tl242856243327_
                                       _e242861243330_
                                       _hd242860243333_
                                       _tl242859243335_
                                       _e242864243338_
                                       _hd242863243341_
                                       _tl242862243343_
                                       _e242867243346_
                                       _hd242866243349_
                                       _tl242865243351_))))
                              (___match252230252231_
                               _e242846243290_
                               _hd242845243293_
                               _tl242844243295_
                               _e242849243298_
                               _hd242848243301_
                               _tl242847243303_
                               _e242852243306_
                               _hd242851243309_
                               _tl242850243311_
                               _e242855243314_
                               _hd242854243317_
                               _tl242853243319_
                               _e242858243322_
                               _hd242857243325_
                               _tl242856243327_
                               _e242861243330_
                               _hd242860243333_
                               _tl242859243335_
                               _e242864243338_
                               _hd242863243341_
                               _tl242862243343_
                               _e242867243346_
                               _hd242866243349_
                               _tl242865243351_))
                          (___match252230252231_
                           _e242846243290_
                           _hd242845243293_
                           _tl242844243295_
                           _e242849243298_
                           _hd242848243301_
                           _tl242847243303_
                           _e242852243306_
                           _hd242851243309_
                           _tl242850243311_
                           _e242855243314_
                           _hd242854243317_
                           _tl242853243319_
                           _e242858243322_
                           _hd242857243325_
                           _tl242856243327_
                           _e242861243330_
                           _hd242860243333_
                           _tl242859243335_
                           _e242864243338_
                           _hd242863243341_
                           _tl242862243343_
                           _e242867243346_
                           _hd242866243349_
                           _tl242865243351_))))
                   (___match251948251949_
                    (lambda (_e242795243409_
                             _hd242794243412_
                             _tl242793243414_
                             _e242798243417_
                             _hd242797243420_
                             _tl242796243422_
                             _e242801243425_
                             _hd242800243428_
                             _tl242799243430_
                             _e242804243433_
                             _hd242803243436_
                             _tl242802243438_
                             _e242807243441_
                             _hd242806243444_
                             _tl242805243446_
                             _e242810243449_
                             _hd242809243452_
                             _tl242808243454_
                             _e242813243457_
                             _hd242812243460_
                             _tl242811243462_
                             _e242816243465_
                             _hd242815243468_
                             _tl242814243470_
                             _e242819243473_
                             _hd242818243476_
                             _tl242817243478_
                             _e242822243481_
                             _hd242821243484_
                             _tl242820243486_
                             _e242825243489_
                             _hd242824243492_
                             _tl242823243494_
                             _e242828243497_
                             _hd242827243500_
                             _tl242826243502_
                             _e242831243505_
                             _hd242830243508_
                             _tl242829243510_
                             ___splice251741251742_
                             _target242832243513_
                             _tl242834243515_)
                      (letrec ((_loop242835243518_
                                (lambda (_hd242833243521_ _args242839243523_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242833243521_))
                                      (let ((_e242836243526_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242833243521_))))
                                        (let ((_lp-tl242838243531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242836243526_)))
                                              (_lp-hd242837243529_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242836243526_))))
                                          (let ((__tmp253104
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242837243529_
                                                         _args242839243523_))))
                                            (declare (not safe))
                                            (_loop242835243518_
                                             _lp-tl242838243531_
                                             __tmp253104))))
                                      (let ((_args242840243534_
                                             (reverse _args242839243523_)))
                                        (let ((_L243537_ _args242840243534_)
                                              (_L243538_ _hd242830243508_)
                                              (_L243539_ _hd242821243484_)
                                              (_L243540_ _hd242812243460_)
                                              (_L243541_ _hd242803243436_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243541_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243540_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243539_
                                                      _self242730_)))
                                              (___kont251739251740_
                                               _L243537_
                                               _L243538_
                                               _L243539_
                                               _L243540_
                                               _L243541_)
                                              (___kont251751251752_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242835243518_ _target242832243513_ '())))))
                   (___match251906251907_
                    (lambda (_e242795243409_
                             _hd242794243412_
                             _tl242793243414_
                             _e242798243417_
                             _hd242797243420_
                             _tl242796243422_
                             _e242801243425_
                             _hd242800243428_
                             _tl242799243430_
                             _e242804243433_
                             _hd242803243436_
                             _tl242802243438_
                             _e242807243441_
                             _hd242806243444_
                             _tl242805243446_
                             _e242810243449_
                             _hd242809243452_
                             _tl242808243454_
                             _e242813243457_
                             _hd242812243460_
                             _tl242811243462_
                             _e242816243465_
                             _hd242815243468_
                             _tl242814243470_
                             _e242819243473_
                             _hd242818243476_
                             _tl242817243478_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242818243476_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242817243478_))
                              (let ((_e242822243481_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242817243478_))))
                                (let ((_tl242820243486_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242822243481_)))
                                      (_hd242821243484_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242822243481_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242820243486_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242814243470_))
                                          (let ((_e242825243489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242814243470_))))
                                            (let ((_tl242823243494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242825243489_)))
                                                  (_hd242824243492_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242825243489_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242824243492_))
                                                  (let ((_e242828243497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242824243492_))))
                                                    (let ((_tl242826243502_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242828243497_)))
                                                          (_hd242827243500_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242828243497_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242827243500_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd242827243500_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242826243502_))
                          (let ((_e242831243505_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242826243502_))))
                            (let ((_tl242829243510_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242831243505_)))
                                  (_hd242830243508_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242831243505_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242829243510_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242823243494_))
                                      (let ((___splice251741251742_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242823243494_
                                                '0))))
                                        (let ((_tl242834243515_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251741251742_
                                                  '1)))
                                              (_target242832243513_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251741251742_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242834243515_))
                                              (___match251948251949_
                                               _e242795243409_
                                               _hd242794243412_
                                               _tl242793243414_
                                               _e242798243417_
                                               _hd242797243420_
                                               _tl242796243422_
                                               _e242801243425_
                                               _hd242800243428_
                                               _tl242799243430_
                                               _e242804243433_
                                               _hd242803243436_
                                               _tl242802243438_
                                               _e242807243441_
                                               _hd242806243444_
                                               _tl242805243446_
                                               _e242810243449_
                                               _hd242809243452_
                                               _tl242808243454_
                                               _e242813243457_
                                               _hd242812243460_
                                               _tl242811243462_
                                               _e242816243465_
                                               _hd242815243468_
                                               _tl242814243470_
                                               _e242819243473_
                                               _hd242818243476_
                                               _tl242817243478_
                                               _e242822243481_
                                               _hd242821243484_
                                               _tl242820243486_
                                               _e242825243489_
                                               _hd242824243492_
                                               _tl242823243494_
                                               _e242828243497_
                                               _hd242827243500_
                                               _tl242826243502_
                                               _e242831243505_
                                               _hd242830243508_
                                               _tl242829243510_
                                               ___splice251741251742_
                                               _target242832243513_
                                               _tl242834243515_)
                                              (___kont251751251752_))))
                                      (___kont251751251752_))
                                  (___kont251751251752_))))
                          (___kont251751251752_))
                      (___kont251751251752_))
                  (___kont251751251752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251751251752_))))
                                          (___match252230252231_
                                           _e242795243409_
                                           _hd242794243412_
                                           _tl242793243414_
                                           _e242798243417_
                                           _hd242797243420_
                                           _tl242796243422_
                                           _e242801243425_
                                           _hd242800243428_
                                           _tl242799243430_
                                           _e242804243433_
                                           _hd242803243436_
                                           _tl242802243438_
                                           _e242807243441_
                                           _hd242806243444_
                                           _tl242805243446_
                                           _e242810243449_
                                           _hd242809243452_
                                           _tl242808243454_
                                           _e242813243457_
                                           _hd242812243460_
                                           _tl242811243462_
                                           _e242816243465_
                                           _hd242815243468_
                                           _tl242814243470_))
                                      (___match252230252231_
                                       _e242795243409_
                                       _hd242794243412_
                                       _tl242793243414_
                                       _e242798243417_
                                       _hd242797243420_
                                       _tl242796243422_
                                       _e242801243425_
                                       _hd242800243428_
                                       _tl242799243430_
                                       _e242804243433_
                                       _hd242803243436_
                                       _tl242802243438_
                                       _e242807243441_
                                       _hd242806243444_
                                       _tl242805243446_
                                       _e242810243449_
                                       _hd242809243452_
                                       _tl242808243454_
                                       _e242813243457_
                                       _hd242812243460_
                                       _tl242811243462_
                                       _e242816243465_
                                       _hd242815243468_
                                       _tl242814243470_))))
                              (___match252230252231_
                               _e242795243409_
                               _hd242794243412_
                               _tl242793243414_
                               _e242798243417_
                               _hd242797243420_
                               _tl242796243422_
                               _e242801243425_
                               _hd242800243428_
                               _tl242799243430_
                               _e242804243433_
                               _hd242803243436_
                               _tl242802243438_
                               _e242807243441_
                               _hd242806243444_
                               _tl242805243446_
                               _e242810243449_
                               _hd242809243452_
                               _tl242808243454_
                               _e242813243457_
                               _hd242812243460_
                               _tl242811243462_
                               _e242816243465_
                               _hd242815243468_
                               _tl242814243470_))
                          (___match252016252017_
                           _e242795243409_
                           _hd242794243412_
                           _tl242793243414_
                           _e242798243417_
                           _hd242797243420_
                           _tl242796243422_
                           _e242801243425_
                           _hd242800243428_
                           _tl242799243430_
                           _e242804243433_
                           _hd242803243436_
                           _tl242802243438_
                           _e242807243441_
                           _hd242806243444_
                           _tl242805243446_
                           _e242810243449_
                           _hd242809243452_
                           _tl242808243454_
                           _e242813243457_
                           _hd242812243460_
                           _tl242811243462_
                           _e242816243465_
                           _hd242815243468_
                           _tl242814243470_
                           _e242819243473_
                           _hd242818243476_
                           _tl242817243478_))))
                   (___match251838251839_
                    (lambda (_e242751243598_
                             _hd242750243601_
                             _tl242749243603_
                             _e242754243606_
                             _hd242753243609_
                             _tl242752243611_
                             _e242757243614_
                             _hd242756243617_
                             _tl242755243619_
                             _e242760243622_
                             _hd242759243625_
                             _tl242758243627_
                             _e242763243630_
                             _hd242762243633_
                             _tl242761243635_
                             _e242766243638_
                             _hd242765243641_
                             _tl242764243643_
                             _e242769243646_
                             _hd242768243649_
                             _tl242767243651_
                             _e242772243654_
                             _hd242771243657_
                             _tl242770243659_
                             _e242775243662_
                             _hd242774243665_
                             _tl242773243667_
                             _e242778243670_
                             _hd242777243673_
                             _tl242776243675_
                             ___splice251737251738_
                             _target242779243678_
                             _tl242781243680_)
                      (letrec ((_loop242782243683_
                                (lambda (_hd242780243686_ _args242786243688_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242780243686_))
                                      (let ((_e242783243691_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242780243686_))))
                                        (let ((_lp-tl242785243696_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242783243691_)))
                                              (_lp-hd242784243694_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242783243691_))))
                                          (let ((__tmp253105
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242784243694_
                                                         _args242786243688_))))
                                            (declare (not safe))
                                            (_loop242782243683_
                                             _lp-tl242785243696_
                                             __tmp253105))))
                                      (let ((_args242787243699_
                                             (reverse _args242786243688_)))
                                        (let ((_L243702_ _args242787243699_)
                                              (_L243703_ _hd242777243673_)
                                              (_L243704_ _hd242768243649_)
                                              (_L243705_ _hd242759243625_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243705_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243704_
                                                      _self242730_)))
                                              (___kont251735251736_
                                               _L243702_
                                               _L243703_
                                               _L243704_
                                               _L243705_)
                                              (___match252026252027_
                                               _e242751243598_
                                               _hd242750243601_
                                               _tl242749243603_
                                               _e242754243606_
                                               _hd242753243609_
                                               _tl242752243611_
                                               _e242757243614_
                                               _hd242756243617_
                                               _tl242755243619_
                                               _e242760243622_
                                               _hd242759243625_
                                               _tl242758243627_
                                               _e242763243630_
                                               _hd242762243633_
                                               _tl242761243635_
                                               _e242766243638_
                                               _hd242765243641_
                                               _tl242764243643_
                                               _e242769243646_
                                               _hd242768243649_
                                               _tl242767243651_
                                               _e242772243654_
                                               _hd242771243657_
                                               _tl242770243659_
                                               _e242775243662_
                                               _hd242774243665_
                                               _tl242773243667_
                                               _e242778243670_
                                               _hd242777243673_
                                               _tl242776243675_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242782243683_ _target242779243678_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx251733251734_))
                  (let ((_e242751243598_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx251733251734_))))
                    (let ((_tl242749243603_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242751243598_)))
                          (_hd242750243601_
                           (let ()
                             (declare (not safe))
                             (##car _e242751243598_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242749243603_))
                          (let ((_e242754243606_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242749243603_))))
                            (let ((_tl242752243611_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242754243606_)))
                                  (_hd242753243609_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242754243606_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242753243609_))
                                  (let ((_e242757243614_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242753243609_))))
                                    (let ((_tl242755243619_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242757243614_)))
                                          (_hd242756243617_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242757243614_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242756243617_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242756243617_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242755243619_))
                                                  (let ((_e242760243622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242755243619_))))
                                                    (let ((_tl242758243627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242760243622_)))
                                                          (_hd242759243625_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242760243622_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242758243627_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242752243611_))
                      (let ((_e242763243630_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242752243611_))))
                        (let ((_tl242761243635_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242763243630_)))
                              (_hd242762243633_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242763243630_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242762243633_))
                              (let ((_e242766243638_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242762243633_))))
                                (let ((_tl242764243643_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242766243638_)))
                                      (_hd242765243641_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242766243638_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242765243641_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242765243641_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242764243643_))
                                              (let ((_e242769243646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242764243643_))))
                                                (let ((_tl242767243651_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242769243646_)))
                                                      (_hd242768243649_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242769243646_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242767243651_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242761243635_))
                                                          (let ((_e242772243654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242761243635_))))
                    (let ((_tl242770243659_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242772243654_)))
                          (_hd242771243657_
                           (let ()
                             (declare (not safe))
                             (##car _e242772243654_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242771243657_))
                          (let ((_e242775243662_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242771243657_))))
                            (let ((_tl242773243667_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242775243662_)))
                                  (_hd242774243665_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242775243662_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242774243665_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242774243665_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242773243667_))
                                          (let ((_e242778243670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242773243667_))))
                                            (let ((_tl242776243675_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242778243670_)))
                                                  (_hd242777243673_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242778243670_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242776243675_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242770243659_))
                                                      (let ((___splice251737251738_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242770243659_ '0))))
                (let ((_tl242781243680_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251737251738_ '1)))
                      (_target242779243678_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251737251738_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242781243680_))
                      (___match251838251839_
                       _e242751243598_
                       _hd242750243601_
                       _tl242749243603_
                       _e242754243606_
                       _hd242753243609_
                       _tl242752243611_
                       _e242757243614_
                       _hd242756243617_
                       _tl242755243619_
                       _e242760243622_
                       _hd242759243625_
                       _tl242758243627_
                       _e242763243630_
                       _hd242762243633_
                       _tl242761243635_
                       _e242766243638_
                       _hd242765243641_
                       _tl242764243643_
                       _e242769243646_
                       _hd242768243649_
                       _tl242767243651_
                       _e242772243654_
                       _hd242771243657_
                       _tl242770243659_
                       _e242775243662_
                       _hd242774243665_
                       _tl242773243667_
                       _e242778243670_
                       _hd242777243673_
                       _tl242776243675_
                       ___splice251737251738_
                       _target242779243678_
                       _tl242781243680_)
                      (___match252026252027_
                       _e242751243598_
                       _hd242750243601_
                       _tl242749243603_
                       _e242754243606_
                       _hd242753243609_
                       _tl242752243611_
                       _e242757243614_
                       _hd242756243617_
                       _tl242755243619_
                       _e242760243622_
                       _hd242759243625_
                       _tl242758243627_
                       _e242763243630_
                       _hd242762243633_
                       _tl242761243635_
                       _e242766243638_
                       _hd242765243641_
                       _tl242764243643_
                       _e242769243646_
                       _hd242768243649_
                       _tl242767243651_
                       _e242772243654_
                       _hd242771243657_
                       _tl242770243659_
                       _e242775243662_
                       _hd242774243665_
                       _tl242773243667_
                       _e242778243670_
                       _hd242777243673_
                       _tl242776243675_))))
              (___match252026252027_
               _e242751243598_
               _hd242750243601_
               _tl242749243603_
               _e242754243606_
               _hd242753243609_
               _tl242752243611_
               _e242757243614_
               _hd242756243617_
               _tl242755243619_
               _e242760243622_
               _hd242759243625_
               _tl242758243627_
               _e242763243630_
               _hd242762243633_
               _tl242761243635_
               _e242766243638_
               _hd242765243641_
               _tl242764243643_
               _e242769243646_
               _hd242768243649_
               _tl242767243651_
               _e242772243654_
               _hd242771243657_
               _tl242770243659_
               _e242775243662_
               _hd242774243665_
               _tl242773243667_
               _e242778243670_
               _hd242777243673_
               _tl242776243675_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match252230252231_
                                                   _e242751243598_
                                                   _hd242750243601_
                                                   _tl242749243603_
                                                   _e242754243606_
                                                   _hd242753243609_
                                                   _tl242752243611_
                                                   _e242757243614_
                                                   _hd242756243617_
                                                   _tl242755243619_
                                                   _e242760243622_
                                                   _hd242759243625_
                                                   _tl242758243627_
                                                   _e242763243630_
                                                   _hd242762243633_
                                                   _tl242761243635_
                                                   _e242766243638_
                                                   _hd242765243641_
                                                   _tl242764243643_
                                                   _e242769243646_
                                                   _hd242768243649_
                                                   _tl242767243651_
                                                   _e242772243654_
                                                   _hd242771243657_
                                                   _tl242770243659_))))
                                          (___match252230252231_
                                           _e242751243598_
                                           _hd242750243601_
                                           _tl242749243603_
                                           _e242754243606_
                                           _hd242753243609_
                                           _tl242752243611_
                                           _e242757243614_
                                           _hd242756243617_
                                           _tl242755243619_
                                           _e242760243622_
                                           _hd242759243625_
                                           _tl242758243627_
                                           _e242763243630_
                                           _hd242762243633_
                                           _tl242761243635_
                                           _e242766243638_
                                           _hd242765243641_
                                           _tl242764243643_
                                           _e242769243646_
                                           _hd242768243649_
                                           _tl242767243651_
                                           _e242772243654_
                                           _hd242771243657_
                                           _tl242770243659_))
                                      (___match251906251907_
                                       _e242751243598_
                                       _hd242750243601_
                                       _tl242749243603_
                                       _e242754243606_
                                       _hd242753243609_
                                       _tl242752243611_
                                       _e242757243614_
                                       _hd242756243617_
                                       _tl242755243619_
                                       _e242760243622_
                                       _hd242759243625_
                                       _tl242758243627_
                                       _e242763243630_
                                       _hd242762243633_
                                       _tl242761243635_
                                       _e242766243638_
                                       _hd242765243641_
                                       _tl242764243643_
                                       _e242769243646_
                                       _hd242768243649_
                                       _tl242767243651_
                                       _e242772243654_
                                       _hd242771243657_
                                       _tl242770243659_
                                       _e242775243662_
                                       _hd242774243665_
                                       _tl242773243667_))
                                  (___match252230252231_
                                   _e242751243598_
                                   _hd242750243601_
                                   _tl242749243603_
                                   _e242754243606_
                                   _hd242753243609_
                                   _tl242752243611_
                                   _e242757243614_
                                   _hd242756243617_
                                   _tl242755243619_
                                   _e242760243622_
                                   _hd242759243625_
                                   _tl242758243627_
                                   _e242763243630_
                                   _hd242762243633_
                                   _tl242761243635_
                                   _e242766243638_
                                   _hd242765243641_
                                   _tl242764243643_
                                   _e242769243646_
                                   _hd242768243649_
                                   _tl242767243651_
                                   _e242772243654_
                                   _hd242771243657_
                                   _tl242770243659_))))
                          (___match252230252231_
                           _e242751243598_
                           _hd242750243601_
                           _tl242749243603_
                           _e242754243606_
                           _hd242753243609_
                           _tl242752243611_
                           _e242757243614_
                           _hd242756243617_
                           _tl242755243619_
                           _e242760243622_
                           _hd242759243625_
                           _tl242758243627_
                           _e242763243630_
                           _hd242762243633_
                           _tl242761243635_
                           _e242766243638_
                           _hd242765243641_
                           _tl242764243643_
                           _e242769243646_
                           _hd242768243649_
                           _tl242767243651_
                           _e242772243654_
                           _hd242771243657_
                           _tl242770243659_))))
                  (___match252168252169_
                   _e242751243598_
                   _hd242750243601_
                   _tl242749243603_
                   _e242754243606_
                   _hd242753243609_
                   _tl242752243611_
                   _e242757243614_
                   _hd242756243617_
                   _tl242755243619_
                   _e242760243622_
                   _hd242759243625_
                   _tl242758243627_
                   _e242763243630_
                   _hd242762243633_
                   _tl242761243635_
                   _e242766243638_
                   _hd242765243641_
                   _tl242764243643_
                   _e242769243646_
                   _hd242768243649_
                   _tl242767243651_))
              (___kont251751251752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont251751251752_))
                                          (___kont251751251752_))
                                      (___kont251751251752_))))
                              (___kont251751251752_))))
                      (___kont251751251752_))
                  (___kont251751251752_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251751251752_))
                                              (___kont251751251752_))
                                          (___kont251751251752_))))
                                  (___kont251751251752_))))
                          (___kont251751251752_))))
                  (___kont251751251752_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx241675_
               _self241676_
               _$t241677_
               _methods241678_
               _slots241679_
               _class-check241680_
               _struct-check241681_
               _struct-assert241682_)
        (letrec ((_force-e241684_
                  (lambda (_what242727_)
                    (let ((__tmp253106
                           (let ((__tmp253110
                                  (let ((__tmp253111
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp253111)))
                                 (__tmp253107
                                  (let ((__tmp253108
                                         (let ((__tmp253109
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what242727_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp253109))))
                                    (declare (not safe))
                                    (cons __tmp253108 '()))))
                             (declare (not safe))
                             (cons __tmp253110 __tmp253107))))
                      (declare (not safe))
                      (cons '%#call __tmp253106)))))
          (let* ((___stx252235252236_ _stx241675_)
                 (_g241692241914_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx252235252236_)))))
            (let ((___kont252237252238_
                   (lambda (_L242673_ _L242674_ _L242675_ _L242676_)
                     (let ((_$method242721_
                            (let ((__tmp253112
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242674_))))
                              (declare (not safe))
                              (table-ref _methods241678_ __tmp253112)))
                           (_args242722_
                            (map (lambda (_g242709242711_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242709242711_
                                      _self241676_
                                      _$t241677_
                                      _methods241678_
                                      _slots241679_
                                      _class-check241680_
                                      _struct-check241681_
                                      _struct-assert241682_)))
                                 (let ((__tmp253113
                                        (lambda (_g242713242716_
                                                 _g242714242718_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242713242716_
                                                  _g242714242718_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253113 '() _L242673_)))))
                       (let ((__tmp253114
                              (let ((__tmp253115
                                     (let ((__tmp253119
                                            (let ()
                                              (declare (not safe))
                                              (_force-e241684_
                                               _$method242721_)))
                                           (__tmp253116
                                            (let ((__tmp253117
                                                   (let ((__tmp253118
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self241676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253118))))
                                              (declare (not safe))
                                              (cons __tmp253117
                                                    _args242722_))))
                                       (declare (not safe))
                                       (cons __tmp253119 __tmp253116))))
                                (declare (not safe))
                                (cons '%#call __tmp253115))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253114 _stx241675_)))))
                  (___kont252241252242_
                   (lambda (_L242505_ _L242506_ _L242507_ _L242508_ _L242509_)
                     (let ((_$method242561_
                            (let ((__tmp253120
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242506_))))
                              (declare (not safe))
                              (table-ref _methods241678_ __tmp253120)))
                           (_args242562_
                            (map (lambda (_g242549242551_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242549242551_
                                      _self241676_
                                      _$t241677_
                                      _methods241678_
                                      _slots241679_
                                      _class-check241680_
                                      _struct-check241681_
                                      _struct-assert241682_)))
                                 (let ((__tmp253121
                                        (lambda (_g242553242556_
                                                 _g242554242558_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242553242556_
                                                  _g242554242558_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253121 '() _L242505_)))))
                       (let ((__tmp253122
                              (let ((__tmp253123
                                     (let ((__tmp253129
                                            (let ((__tmp253130
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253130)))
                                           (__tmp253124
                                            (let ((__tmp253128
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e241684_
                                                      _$method242561_)))
                                                  (__tmp253125
                                                   (let ((__tmp253126
                                                          (let ((__tmp253127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241676_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253127))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253126
                                                           _args242562_))))
                                              (declare (not safe))
                                              (cons __tmp253128 __tmp253125))))
                                       (declare (not safe))
                                       (cons __tmp253129 __tmp253124))))
                                (declare (not safe))
                                (cons '%#call __tmp253123))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253122 _stx241675_)))))
                  (___kont252245252246_
                   (lambda (_L242336_ _L242337_ _L242338_)
                     (let* ((_$field242370_
                             (let ((__tmp253131
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L242336_))))
                               (declare (not safe))
                               (table-ref _slots241679_ __tmp253131)))
                            (__tmp253132
                             (let ((__tmp253133
                                    (let ((__tmp253140
                                           (let ((__tmp253141
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t241677_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp253141)))
                                          (__tmp253134
                                           (let ((__tmp253138
                                                  (let ((__tmp253139
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field242370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp253139)))
                                                 (__tmp253135
                                                  (let ((__tmp253136
                                                         (let ((__tmp253137
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self241676_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp253137))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253136 '()))))
                                             (declare (not safe))
                                             (cons __tmp253138 __tmp253135))))
                                      (declare (not safe))
                                      (cons __tmp253140 __tmp253134))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp253133))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp253132 _stx241675_))))
                  (___kont252247252248_
                   (lambda (_L242210_ _L242211_ _L242212_ _L242213_)
                     (let ((_$field242248_
                            (let ((__tmp253142
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242211_))))
                              (declare (not safe))
                              (table-ref _slots241679_ __tmp253142)))
                           (_expr242249_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L242210_
                               _self241676_
                               _$t241677_
                               _methods241678_
                               _slots241679_
                               _class-check241680_
                               _struct-check241681_
                               _struct-assert241682_))))
                       (let ((__tmp253143
                              (let ((__tmp253144
                                     (let ((__tmp253152
                                            (let ((__tmp253153
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241677_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253153)))
                                           (__tmp253145
                                            (let ((__tmp253150
                                                   (let ((__tmp253151
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253151)))
                                                  (__tmp253146
                                                   (let ((__tmp253148
                                                          (let ((__tmp253149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241676_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253149)))
                 (__tmp253147
                  (let () (declare (not safe)) (cons _expr242249_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253148
                                                           __tmp253147))))
                                              (declare (not safe))
                                              (cons __tmp253150 __tmp253146))))
                                       (declare (not safe))
                                       (cons __tmp253152 __tmp253145))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253144))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253143 _stx241675_)))))
                  (___kont252249252250_
                   (lambda (_L242089_ _L242090_)
                     (let* ((_slot242112_
                             (##structure-ref
                              (let ((__tmp253154
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L242090_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253154))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field242114_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241679_ _slot242112_))))
                       (let ((__tmp253155
                              (let ((__tmp253156
                                     (let ((__tmp253163
                                            (let ((__tmp253164
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241677_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253164)))
                                           (__tmp253157
                                            (let ((__tmp253161
                                                   (let ((__tmp253162
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253162)))
                                                  (__tmp253158
                                                   (let ((__tmp253159
                                                          (let ((__tmp253160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241676_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253159 '()))))
                                              (declare (not safe))
                                              (cons __tmp253161 __tmp253158))))
                                       (declare (not safe))
                                       (cons __tmp253163 __tmp253157))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp253156))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253155 _stx241675_)))))
                  (___kont252251252252_
                   (lambda (_L241990_ _L241991_ _L241992_)
                     (let* ((_slot242021_
                             (##structure-ref
                              (let ((__tmp253165
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241992_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253165))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field242023_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241679_ _slot242021_)))
                            (_expr242025_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L241990_
                                _self241676_
                                _$t241677_
                                _methods241678_
                                _slots241679_
                                _class-check241680_
                                _struct-check241681_
                                _struct-assert241682_))))
                       (let ((__tmp253166
                              (let ((__tmp253167
                                     (let ((__tmp253175
                                            (let ((__tmp253176
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241677_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253176)))
                                           (__tmp253168
                                            (let ((__tmp253173
                                                   (let ((__tmp253174
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253174)))
                                                  (__tmp253169
                                                   (let ((__tmp253171
                                                          (let ((__tmp253172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241676_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253172)))
                 (__tmp253170
                  (let () (declare (not safe)) (cons _expr242025_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253171
                                                           __tmp253170))))
                                              (declare (not safe))
                                              (cons __tmp253173 __tmp253169))))
                                       (declare (not safe))
                                       (cons __tmp253175 __tmp253168))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253167))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253166 _stx241675_)))))
                  (___kont252253252254_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx241675_
                        _self241676_
                        _$t241677_
                        _methods241678_
                        _slots241679_
                        _class-check241680_
                        _struct-check241681_
                        _struct-assert241682_)))))
              (let* ((___match252734252735_
                      (lambda (_e241888241926_
                               _hd241887241929_
                               _tl241886241931_
                               _e241891241934_
                               _hd241890241937_
                               _tl241889241939_
                               _e241894241942_
                               _hd241893241945_
                               _tl241892241947_
                               _e241897241950_
                               _hd241896241953_
                               _tl241895241955_
                               _e241900241958_
                               _hd241899241961_
                               _tl241898241963_
                               _e241903241966_
                               _hd241902241969_
                               _tl241901241971_
                               _e241906241974_
                               _hd241905241977_
                               _tl241904241979_
                               _e241909241982_
                               _hd241908241985_
                               _tl241907241987_)
                        (let ((_L241990_ _hd241908241985_)
                              (_L241991_ _hd241905241977_)
                              (_L241992_ _hd241896241953_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241991_
                                      _self241676_))
                                   (let ((__tmp253177
                                          (let ((__tmp253178
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241992_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253178))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253177
                                      'gxc#!mutator::t)))
                              (___kont252251252252_
                               _L241990_
                               _L241991_
                               _L241992_)
                              (___kont252253252254_)))))
                     (___match252732252733_
                      (lambda (_e241888241926_
                               _hd241887241929_
                               _tl241886241931_
                               _e241891241934_
                               _hd241890241937_
                               _tl241889241939_
                               _e241894241942_
                               _hd241893241945_
                               _tl241892241947_
                               _e241897241950_
                               _hd241896241953_
                               _tl241895241955_
                               _e241900241958_
                               _hd241899241961_
                               _tl241898241963_
                               _e241903241966_
                               _hd241902241969_
                               _tl241901241971_
                               _e241906241974_
                               _hd241905241977_
                               _tl241904241979_
                               _e241909241982_
                               _hd241908241985_
                               _tl241907241987_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241907241987_))
                            (___match252734252735_
                             _e241888241926_
                             _hd241887241929_
                             _tl241886241931_
                             _e241891241934_
                             _hd241890241937_
                             _tl241889241939_
                             _e241894241942_
                             _hd241893241945_
                             _tl241892241947_
                             _e241897241950_
                             _hd241896241953_
                             _tl241895241955_
                             _e241900241958_
                             _hd241899241961_
                             _tl241898241963_
                             _e241903241966_
                             _hd241902241969_
                             _tl241901241971_
                             _e241906241974_
                             _hd241905241977_
                             _tl241904241979_
                             _e241909241982_
                             _hd241908241985_
                             _tl241907241987_)
                            (___kont252253252254_))))
                     (___match252726252727_
                      (lambda (_e241888241926_
                               _hd241887241929_
                               _tl241886241931_
                               _e241891241934_
                               _hd241890241937_
                               _tl241889241939_
                               _e241894241942_
                               _hd241893241945_
                               _tl241892241947_
                               _e241897241950_
                               _hd241896241953_
                               _tl241895241955_
                               _e241900241958_
                               _hd241899241961_
                               _tl241898241963_
                               _e241903241966_
                               _hd241902241969_
                               _tl241901241971_
                               _e241906241974_
                               _hd241905241977_
                               _tl241904241979_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241898241963_))
                            (let ((_e241909241982_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241898241963_))))
                              (let ((_tl241907241987_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241909241982_)))
                                    (_hd241908241985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241909241982_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241907241987_))
                                    (___match252734252735_
                                     _e241888241926_
                                     _hd241887241929_
                                     _tl241886241931_
                                     _e241891241934_
                                     _hd241890241937_
                                     _tl241889241939_
                                     _e241894241942_
                                     _hd241893241945_
                                     _tl241892241947_
                                     _e241897241950_
                                     _hd241896241953_
                                     _tl241895241955_
                                     _e241900241958_
                                     _hd241899241961_
                                     _tl241898241963_
                                     _e241903241966_
                                     _hd241902241969_
                                     _tl241901241971_
                                     _e241906241974_
                                     _hd241905241977_
                                     _tl241904241979_
                                     _e241909241982_
                                     _hd241908241985_
                                     _tl241907241987_)
                                    (___kont252253252254_))))
                            (___kont252253252254_))))
                     (___match252672252673_
                      (lambda (_e241864242033_
                               _hd241863242036_
                               _tl241862242038_
                               _e241867242041_
                               _hd241866242044_
                               _tl241865242046_
                               _e241870242049_
                               _hd241869242052_
                               _tl241868242054_
                               _e241873242057_
                               _hd241872242060_
                               _tl241871242062_
                               _e241876242065_
                               _hd241875242068_
                               _tl241874242070_
                               _e241879242073_
                               _hd241878242076_
                               _tl241877242078_
                               _e241882242081_
                               _hd241881242084_
                               _tl241880242086_)
                        (let ((_L242089_ _hd241881242084_)
                              (_L242090_ _hd241872242060_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242089_
                                      _self241676_))
                                   (let ((__tmp253179
                                          (let ((__tmp253180
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L242090_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253180))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253179
                                      'gxc#!accessor::t)))
                              (___kont252249252250_ _L242089_ _L242090_)
                              (___kont252253252254_)))))
                     (___match252670252671_
                      (lambda (_e241864242033_
                               _hd241863242036_
                               _tl241862242038_
                               _e241867242041_
                               _hd241866242044_
                               _tl241865242046_
                               _e241870242049_
                               _hd241869242052_
                               _tl241868242054_
                               _e241873242057_
                               _hd241872242060_
                               _tl241871242062_
                               _e241876242065_
                               _hd241875242068_
                               _tl241874242070_
                               _e241879242073_
                               _hd241878242076_
                               _tl241877242078_
                               _e241882242081_
                               _hd241881242084_
                               _tl241880242086_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241874242070_))
                            (___match252672252673_
                             _e241864242033_
                             _hd241863242036_
                             _tl241862242038_
                             _e241867242041_
                             _hd241866242044_
                             _tl241865242046_
                             _e241870242049_
                             _hd241869242052_
                             _tl241868242054_
                             _e241873242057_
                             _hd241872242060_
                             _tl241871242062_
                             _e241876242065_
                             _hd241875242068_
                             _tl241874242070_
                             _e241879242073_
                             _hd241878242076_
                             _tl241877242078_
                             _e241882242081_
                             _hd241881242084_
                             _tl241880242086_)
                            (___match252726252727_
                             _e241864242033_
                             _hd241863242036_
                             _tl241862242038_
                             _e241867242041_
                             _hd241866242044_
                             _tl241865242046_
                             _e241870242049_
                             _hd241869242052_
                             _tl241868242054_
                             _e241873242057_
                             _hd241872242060_
                             _tl241871242062_
                             _e241876242065_
                             _hd241875242068_
                             _tl241874242070_
                             _e241879242073_
                             _hd241878242076_
                             _tl241877242078_
                             _e241882242081_
                             _hd241881242084_
                             _tl241880242086_))))
                     (___match252616252617_
                      (lambda (_e241829242122_
                               _hd241828242125_
                               _tl241827242127_
                               _e241832242130_
                               _hd241831242133_
                               _tl241830242135_
                               _e241835242138_
                               _hd241834242141_
                               _tl241833242143_
                               _e241838242146_
                               _hd241837242149_
                               _tl241836242151_
                               _e241841242154_
                               _hd241840242157_
                               _tl241839242159_
                               _e241844242162_
                               _hd241843242165_
                               _tl241842242167_
                               _e241847242170_
                               _hd241846242173_
                               _tl241845242175_
                               _e241850242178_
                               _hd241849242181_
                               _tl241848242183_
                               _e241853242186_
                               _hd241852242189_
                               _tl241851242191_
                               _e241856242194_
                               _hd241855242197_
                               _tl241854242199_
                               _e241859242202_
                               _hd241858242205_
                               _tl241857242207_)
                        (let ((_L242210_ _hd241858242205_)
                              (_L242211_ _hd241855242197_)
                              (_L242212_ _hd241846242173_)
                              (_L242213_ _hd241837242149_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242213_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242213_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242212_
                                      _self241676_)))
                              (___kont252247252248_
                               _L242210_
                               _L242211_
                               _L242212_
                               _L242213_)
                              (___kont252253252254_)))))
                     (___match252608252609_
                      (lambda (_e241829242122_
                               _hd241828242125_
                               _tl241827242127_
                               _e241832242130_
                               _hd241831242133_
                               _tl241830242135_
                               _e241835242138_
                               _hd241834242141_
                               _tl241833242143_
                               _e241838242146_
                               _hd241837242149_
                               _tl241836242151_
                               _e241841242154_
                               _hd241840242157_
                               _tl241839242159_
                               _e241844242162_
                               _hd241843242165_
                               _tl241842242167_
                               _e241847242170_
                               _hd241846242173_
                               _tl241845242175_
                               _e241850242178_
                               _hd241849242181_
                               _tl241848242183_
                               _e241853242186_
                               _hd241852242189_
                               _tl241851242191_
                               _e241856242194_
                               _hd241855242197_
                               _tl241854242199_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241848242183_))
                            (let ((_e241859242202_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241848242183_))))
                              (let ((_tl241857242207_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241859242202_)))
                                    (_hd241858242205_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241859242202_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241857242207_))
                                    (___match252616252617_
                                     _e241829242122_
                                     _hd241828242125_
                                     _tl241827242127_
                                     _e241832242130_
                                     _hd241831242133_
                                     _tl241830242135_
                                     _e241835242138_
                                     _hd241834242141_
                                     _tl241833242143_
                                     _e241838242146_
                                     _hd241837242149_
                                     _tl241836242151_
                                     _e241841242154_
                                     _hd241840242157_
                                     _tl241839242159_
                                     _e241844242162_
                                     _hd241843242165_
                                     _tl241842242167_
                                     _e241847242170_
                                     _hd241846242173_
                                     _tl241845242175_
                                     _e241850242178_
                                     _hd241849242181_
                                     _tl241848242183_
                                     _e241853242186_
                                     _hd241852242189_
                                     _tl241851242191_
                                     _e241856242194_
                                     _hd241855242197_
                                     _tl241854242199_
                                     _e241859242202_
                                     _hd241858242205_
                                     _tl241857242207_)
                                    (___kont252253252254_))))
                            (___match252732252733_
                             _e241829242122_
                             _hd241828242125_
                             _tl241827242127_
                             _e241832242130_
                             _hd241831242133_
                             _tl241830242135_
                             _e241835242138_
                             _hd241834242141_
                             _tl241833242143_
                             _e241838242146_
                             _hd241837242149_
                             _tl241836242151_
                             _e241841242154_
                             _hd241840242157_
                             _tl241839242159_
                             _e241844242162_
                             _hd241843242165_
                             _tl241842242167_
                             _e241847242170_
                             _hd241846242173_
                             _tl241845242175_
                             _e241850242178_
                             _hd241849242181_
                             _tl241848242183_))))
                     (___match252530252531_
                      (lambda (_e241795242256_
                               _hd241794242259_
                               _tl241793242261_
                               _e241798242264_
                               _hd241797242267_
                               _tl241796242269_
                               _e241801242272_
                               _hd241800242275_
                               _tl241799242277_
                               _e241804242280_
                               _hd241803242283_
                               _tl241802242285_
                               _e241807242288_
                               _hd241806242291_
                               _tl241805242293_
                               _e241810242296_
                               _hd241809242299_
                               _tl241808242301_
                               _e241813242304_
                               _hd241812242307_
                               _tl241811242309_
                               _e241816242312_
                               _hd241815242315_
                               _tl241814242317_
                               _e241819242320_
                               _hd241818242323_
                               _tl241817242325_
                               _e241822242328_
                               _hd241821242331_
                               _tl241820242333_)
                        (let ((_L242336_ _hd241821242331_)
                              (_L242337_ _hd241812242307_)
                              (_L242338_ _hd241803242283_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242338_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242338_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242337_
                                      _self241676_)))
                              (___kont252245252246_
                               _L242336_
                               _L242337_
                               _L242338_)
                              (___match252734252735_
                               _e241795242256_
                               _hd241794242259_
                               _tl241793242261_
                               _e241798242264_
                               _hd241797242267_
                               _tl241796242269_
                               _e241801242272_
                               _hd241800242275_
                               _tl241799242277_
                               _e241804242280_
                               _hd241803242283_
                               _tl241802242285_
                               _e241807242288_
                               _hd241806242291_
                               _tl241805242293_
                               _e241810242296_
                               _hd241809242299_
                               _tl241808242301_
                               _e241813242304_
                               _hd241812242307_
                               _tl241811242309_
                               _e241816242312_
                               _hd241815242315_
                               _tl241814242317_)))))
                     (___match252528252529_
                      (lambda (_e241795242256_
                               _hd241794242259_
                               _tl241793242261_
                               _e241798242264_
                               _hd241797242267_
                               _tl241796242269_
                               _e241801242272_
                               _hd241800242275_
                               _tl241799242277_
                               _e241804242280_
                               _hd241803242283_
                               _tl241802242285_
                               _e241807242288_
                               _hd241806242291_
                               _tl241805242293_
                               _e241810242296_
                               _hd241809242299_
                               _tl241808242301_
                               _e241813242304_
                               _hd241812242307_
                               _tl241811242309_
                               _e241816242312_
                               _hd241815242315_
                               _tl241814242317_
                               _e241819242320_
                               _hd241818242323_
                               _tl241817242325_
                               _e241822242328_
                               _hd241821242331_
                               _tl241820242333_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241814242317_))
                            (___match252530252531_
                             _e241795242256_
                             _hd241794242259_
                             _tl241793242261_
                             _e241798242264_
                             _hd241797242267_
                             _tl241796242269_
                             _e241801242272_
                             _hd241800242275_
                             _tl241799242277_
                             _e241804242280_
                             _hd241803242283_
                             _tl241802242285_
                             _e241807242288_
                             _hd241806242291_
                             _tl241805242293_
                             _e241810242296_
                             _hd241809242299_
                             _tl241808242301_
                             _e241813242304_
                             _hd241812242307_
                             _tl241811242309_
                             _e241816242312_
                             _hd241815242315_
                             _tl241814242317_
                             _e241819242320_
                             _hd241818242323_
                             _tl241817242325_
                             _e241822242328_
                             _hd241821242331_
                             _tl241820242333_)
                            (___match252608252609_
                             _e241795242256_
                             _hd241794242259_
                             _tl241793242261_
                             _e241798242264_
                             _hd241797242267_
                             _tl241796242269_
                             _e241801242272_
                             _hd241800242275_
                             _tl241799242277_
                             _e241804242280_
                             _hd241803242283_
                             _tl241802242285_
                             _e241807242288_
                             _hd241806242291_
                             _tl241805242293_
                             _e241810242296_
                             _hd241809242299_
                             _tl241808242301_
                             _e241813242304_
                             _hd241812242307_
                             _tl241811242309_
                             _e241816242312_
                             _hd241815242315_
                             _tl241814242317_
                             _e241819242320_
                             _hd241818242323_
                             _tl241817242325_
                             _e241822242328_
                             _hd241821242331_
                             _tl241820242333_))))
                     (___match252518252519_
                      (lambda (_e241795242256_
                               _hd241794242259_
                               _tl241793242261_
                               _e241798242264_
                               _hd241797242267_
                               _tl241796242269_
                               _e241801242272_
                               _hd241800242275_
                               _tl241799242277_
                               _e241804242280_
                               _hd241803242283_
                               _tl241802242285_
                               _e241807242288_
                               _hd241806242291_
                               _tl241805242293_
                               _e241810242296_
                               _hd241809242299_
                               _tl241808242301_
                               _e241813242304_
                               _hd241812242307_
                               _tl241811242309_
                               _e241816242312_
                               _hd241815242315_
                               _tl241814242317_
                               _e241819242320_
                               _hd241818242323_
                               _tl241817242325_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd241818242323_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241817242325_))
                                (let ((_e241822242328_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241817242325_))))
                                  (let ((_tl241820242333_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241822242328_)))
                                        (_hd241821242331_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241822242328_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241820242333_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241814242317_))
                                            (___match252530252531_
                                             _e241795242256_
                                             _hd241794242259_
                                             _tl241793242261_
                                             _e241798242264_
                                             _hd241797242267_
                                             _tl241796242269_
                                             _e241801242272_
                                             _hd241800242275_
                                             _tl241799242277_
                                             _e241804242280_
                                             _hd241803242283_
                                             _tl241802242285_
                                             _e241807242288_
                                             _hd241806242291_
                                             _tl241805242293_
                                             _e241810242296_
                                             _hd241809242299_
                                             _tl241808242301_
                                             _e241813242304_
                                             _hd241812242307_
                                             _tl241811242309_
                                             _e241816242312_
                                             _hd241815242315_
                                             _tl241814242317_
                                             _e241819242320_
                                             _hd241818242323_
                                             _tl241817242325_
                                             _e241822242328_
                                             _hd241821242331_
                                             _tl241820242333_)
                                            (___match252608252609_
                                             _e241795242256_
                                             _hd241794242259_
                                             _tl241793242261_
                                             _e241798242264_
                                             _hd241797242267_
                                             _tl241796242269_
                                             _e241801242272_
                                             _hd241800242275_
                                             _tl241799242277_
                                             _e241804242280_
                                             _hd241803242283_
                                             _tl241802242285_
                                             _e241807242288_
                                             _hd241806242291_
                                             _tl241805242293_
                                             _e241810242296_
                                             _hd241809242299_
                                             _tl241808242301_
                                             _e241813242304_
                                             _hd241812242307_
                                             _tl241811242309_
                                             _e241816242312_
                                             _hd241815242315_
                                             _tl241814242317_
                                             _e241819242320_
                                             _hd241818242323_
                                             _tl241817242325_
                                             _e241822242328_
                                             _hd241821242331_
                                             _tl241820242333_))
                                        (___match252732252733_
                                         _e241795242256_
                                         _hd241794242259_
                                         _tl241793242261_
                                         _e241798242264_
                                         _hd241797242267_
                                         _tl241796242269_
                                         _e241801242272_
                                         _hd241800242275_
                                         _tl241799242277_
                                         _e241804242280_
                                         _hd241803242283_
                                         _tl241802242285_
                                         _e241807242288_
                                         _hd241806242291_
                                         _tl241805242293_
                                         _e241810242296_
                                         _hd241809242299_
                                         _tl241808242301_
                                         _e241813242304_
                                         _hd241812242307_
                                         _tl241811242309_
                                         _e241816242312_
                                         _hd241815242315_
                                         _tl241814242317_))))
                                (___match252732252733_
                                 _e241795242256_
                                 _hd241794242259_
                                 _tl241793242261_
                                 _e241798242264_
                                 _hd241797242267_
                                 _tl241796242269_
                                 _e241801242272_
                                 _hd241800242275_
                                 _tl241799242277_
                                 _e241804242280_
                                 _hd241803242283_
                                 _tl241802242285_
                                 _e241807242288_
                                 _hd241806242291_
                                 _tl241805242293_
                                 _e241810242296_
                                 _hd241809242299_
                                 _tl241808242301_
                                 _e241813242304_
                                 _hd241812242307_
                                 _tl241811242309_
                                 _e241816242312_
                                 _hd241815242315_
                                 _tl241814242317_))
                            (___match252732252733_
                             _e241795242256_
                             _hd241794242259_
                             _tl241793242261_
                             _e241798242264_
                             _hd241797242267_
                             _tl241796242269_
                             _e241801242272_
                             _hd241800242275_
                             _tl241799242277_
                             _e241804242280_
                             _hd241803242283_
                             _tl241802242285_
                             _e241807242288_
                             _hd241806242291_
                             _tl241805242293_
                             _e241810242296_
                             _hd241809242299_
                             _tl241808242301_
                             _e241813242304_
                             _hd241812242307_
                             _tl241811242309_
                             _e241816242312_
                             _hd241815242315_
                             _tl241814242317_))))
                     (___match252450252451_
                      (lambda (_e241744242377_
                               _hd241743242380_
                               _tl241742242382_
                               _e241747242385_
                               _hd241746242388_
                               _tl241745242390_
                               _e241750242393_
                               _hd241749242396_
                               _tl241748242398_
                               _e241753242401_
                               _hd241752242404_
                               _tl241751242406_
                               _e241756242409_
                               _hd241755242412_
                               _tl241754242414_
                               _e241759242417_
                               _hd241758242420_
                               _tl241757242422_
                               _e241762242425_
                               _hd241761242428_
                               _tl241760242430_
                               _e241765242433_
                               _hd241764242436_
                               _tl241763242438_
                               _e241768242441_
                               _hd241767242444_
                               _tl241766242446_
                               _e241771242449_
                               _hd241770242452_
                               _tl241769242454_
                               _e241774242457_
                               _hd241773242460_
                               _tl241772242462_
                               _e241777242465_
                               _hd241776242468_
                               _tl241775242470_
                               _e241780242473_
                               _hd241779242476_
                               _tl241778242478_
                               ___splice252243252244_
                               _target241781242481_
                               _tl241783242483_)
                        (letrec ((_loop241784242486_
                                  (lambda (_hd241782242489_ _args241788242491_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241782242489_))
                                        (let ((_e241785242494_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241782242489_))))
                                          (let ((_lp-tl241787242499_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241785242494_)))
                                                (_lp-hd241786242497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241785242494_))))
                                            (let ((__tmp253181
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241786242497_
                                                           _args241788242491_))))
                                              (declare (not safe))
                                              (_loop241784242486_
                                               _lp-tl241787242499_
                                               __tmp253181))))
                                        (let ((_args241789242502_
                                               (reverse _args241788242491_)))
                                          (let ((_L242505_ _args241789242502_)
                                                (_L242506_ _hd241779242476_)
                                                (_L242507_ _hd241770242452_)
                                                (_L242508_ _hd241761242428_)
                                                (_L242509_ _hd241752242404_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242509_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242508_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242507_
                                                        _self241676_)))
                                                (___kont252241252242_
                                                 _L242505_
                                                 _L242506_
                                                 _L242507_
                                                 _L242508_
                                                 _L242509_)
                                                (___kont252253252254_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241784242486_ _target241781242481_ '())))))
                     (___match252408252409_
                      (lambda (_e241744242377_
                               _hd241743242380_
                               _tl241742242382_
                               _e241747242385_
                               _hd241746242388_
                               _tl241745242390_
                               _e241750242393_
                               _hd241749242396_
                               _tl241748242398_
                               _e241753242401_
                               _hd241752242404_
                               _tl241751242406_
                               _e241756242409_
                               _hd241755242412_
                               _tl241754242414_
                               _e241759242417_
                               _hd241758242420_
                               _tl241757242422_
                               _e241762242425_
                               _hd241761242428_
                               _tl241760242430_
                               _e241765242433_
                               _hd241764242436_
                               _tl241763242438_
                               _e241768242441_
                               _hd241767242444_
                               _tl241766242446_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241767242444_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241766242446_))
                                (let ((_e241771242449_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241766242446_))))
                                  (let ((_tl241769242454_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241771242449_)))
                                        (_hd241770242452_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241771242449_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241769242454_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241763242438_))
                                            (let ((_e241774242457_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241763242438_))))
                                              (let ((_tl241772242462_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241774242457_)))
                                                    (_hd241773242460_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241774242457_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241773242460_))
                                                    (let ((_e241777242465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241773242460_))))
                                                      (let ((_tl241775242470_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241777242465_)))
                    (_hd241776242468_
                     (let () (declare (not safe)) (##car _e241777242465_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241776242468_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd241776242468_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241775242470_))
                            (let ((_e241780242473_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241775242470_))))
                              (let ((_tl241778242478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241780242473_)))
                                    (_hd241779242476_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241780242473_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241778242478_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl241772242462_))
                                        (let ((___splice252243252244_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl241772242462_
                                                  '0))))
                                          (let ((_tl241783242483_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252243252244_
                                                    '1)))
                                                (_target241781242481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252243252244_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241783242483_))
                                                (___match252450252451_
                                                 _e241744242377_
                                                 _hd241743242380_
                                                 _tl241742242382_
                                                 _e241747242385_
                                                 _hd241746242388_
                                                 _tl241745242390_
                                                 _e241750242393_
                                                 _hd241749242396_
                                                 _tl241748242398_
                                                 _e241753242401_
                                                 _hd241752242404_
                                                 _tl241751242406_
                                                 _e241756242409_
                                                 _hd241755242412_
                                                 _tl241754242414_
                                                 _e241759242417_
                                                 _hd241758242420_
                                                 _tl241757242422_
                                                 _e241762242425_
                                                 _hd241761242428_
                                                 _tl241760242430_
                                                 _e241765242433_
                                                 _hd241764242436_
                                                 _tl241763242438_
                                                 _e241768242441_
                                                 _hd241767242444_
                                                 _tl241766242446_
                                                 _e241771242449_
                                                 _hd241770242452_
                                                 _tl241769242454_
                                                 _e241774242457_
                                                 _hd241773242460_
                                                 _tl241772242462_
                                                 _e241777242465_
                                                 _hd241776242468_
                                                 _tl241775242470_
                                                 _e241780242473_
                                                 _hd241779242476_
                                                 _tl241778242478_
                                                 ___splice252243252244_
                                                 _target241781242481_
                                                 _tl241783242483_)
                                                (___kont252253252254_))))
                                        (___kont252253252254_))
                                    (___kont252253252254_))))
                            (___kont252253252254_))
                        (___kont252253252254_))
                    (___kont252253252254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252253252254_))))
                                            (___match252732252733_
                                             _e241744242377_
                                             _hd241743242380_
                                             _tl241742242382_
                                             _e241747242385_
                                             _hd241746242388_
                                             _tl241745242390_
                                             _e241750242393_
                                             _hd241749242396_
                                             _tl241748242398_
                                             _e241753242401_
                                             _hd241752242404_
                                             _tl241751242406_
                                             _e241756242409_
                                             _hd241755242412_
                                             _tl241754242414_
                                             _e241759242417_
                                             _hd241758242420_
                                             _tl241757242422_
                                             _e241762242425_
                                             _hd241761242428_
                                             _tl241760242430_
                                             _e241765242433_
                                             _hd241764242436_
                                             _tl241763242438_))
                                        (___match252732252733_
                                         _e241744242377_
                                         _hd241743242380_
                                         _tl241742242382_
                                         _e241747242385_
                                         _hd241746242388_
                                         _tl241745242390_
                                         _e241750242393_
                                         _hd241749242396_
                                         _tl241748242398_
                                         _e241753242401_
                                         _hd241752242404_
                                         _tl241751242406_
                                         _e241756242409_
                                         _hd241755242412_
                                         _tl241754242414_
                                         _e241759242417_
                                         _hd241758242420_
                                         _tl241757242422_
                                         _e241762242425_
                                         _hd241761242428_
                                         _tl241760242430_
                                         _e241765242433_
                                         _hd241764242436_
                                         _tl241763242438_))))
                                (___match252732252733_
                                 _e241744242377_
                                 _hd241743242380_
                                 _tl241742242382_
                                 _e241747242385_
                                 _hd241746242388_
                                 _tl241745242390_
                                 _e241750242393_
                                 _hd241749242396_
                                 _tl241748242398_
                                 _e241753242401_
                                 _hd241752242404_
                                 _tl241751242406_
                                 _e241756242409_
                                 _hd241755242412_
                                 _tl241754242414_
                                 _e241759242417_
                                 _hd241758242420_
                                 _tl241757242422_
                                 _e241762242425_
                                 _hd241761242428_
                                 _tl241760242430_
                                 _e241765242433_
                                 _hd241764242436_
                                 _tl241763242438_))
                            (___match252518252519_
                             _e241744242377_
                             _hd241743242380_
                             _tl241742242382_
                             _e241747242385_
                             _hd241746242388_
                             _tl241745242390_
                             _e241750242393_
                             _hd241749242396_
                             _tl241748242398_
                             _e241753242401_
                             _hd241752242404_
                             _tl241751242406_
                             _e241756242409_
                             _hd241755242412_
                             _tl241754242414_
                             _e241759242417_
                             _hd241758242420_
                             _tl241757242422_
                             _e241762242425_
                             _hd241761242428_
                             _tl241760242430_
                             _e241765242433_
                             _hd241764242436_
                             _tl241763242438_
                             _e241768242441_
                             _hd241767242444_
                             _tl241766242446_))))
                     (___match252340252341_
                      (lambda (_e241700242569_
                               _hd241699242572_
                               _tl241698242574_
                               _e241703242577_
                               _hd241702242580_
                               _tl241701242582_
                               _e241706242585_
                               _hd241705242588_
                               _tl241704242590_
                               _e241709242593_
                               _hd241708242596_
                               _tl241707242598_
                               _e241712242601_
                               _hd241711242604_
                               _tl241710242606_
                               _e241715242609_
                               _hd241714242612_
                               _tl241713242614_
                               _e241718242617_
                               _hd241717242620_
                               _tl241716242622_
                               _e241721242625_
                               _hd241720242628_
                               _tl241719242630_
                               _e241724242633_
                               _hd241723242636_
                               _tl241722242638_
                               _e241727242641_
                               _hd241726242644_
                               _tl241725242646_
                               ___splice252239252240_
                               _target241728242649_
                               _tl241730242651_)
                        (letrec ((_loop241731242654_
                                  (lambda (_hd241729242657_ _args241735242659_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241729242657_))
                                        (let ((_e241732242662_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241729242657_))))
                                          (let ((_lp-tl241734242667_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241732242662_)))
                                                (_lp-hd241733242665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241732242662_))))
                                            (let ((__tmp253182
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241733242665_
                                                           _args241735242659_))))
                                              (declare (not safe))
                                              (_loop241731242654_
                                               _lp-tl241734242667_
                                               __tmp253182))))
                                        (let ((_args241736242670_
                                               (reverse _args241735242659_)))
                                          (let ((_L242673_ _args241736242670_)
                                                (_L242674_ _hd241726242644_)
                                                (_L242675_ _hd241717242620_)
                                                (_L242676_ _hd241708242596_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242676_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242675_
                                                        _self241676_)))
                                                (___kont252237252238_
                                                 _L242673_
                                                 _L242674_
                                                 _L242675_
                                                 _L242676_)
                                                (___match252528252529_
                                                 _e241700242569_
                                                 _hd241699242572_
                                                 _tl241698242574_
                                                 _e241703242577_
                                                 _hd241702242580_
                                                 _tl241701242582_
                                                 _e241706242585_
                                                 _hd241705242588_
                                                 _tl241704242590_
                                                 _e241709242593_
                                                 _hd241708242596_
                                                 _tl241707242598_
                                                 _e241712242601_
                                                 _hd241711242604_
                                                 _tl241710242606_
                                                 _e241715242609_
                                                 _hd241714242612_
                                                 _tl241713242614_
                                                 _e241718242617_
                                                 _hd241717242620_
                                                 _tl241716242622_
                                                 _e241721242625_
                                                 _hd241720242628_
                                                 _tl241719242630_
                                                 _e241724242633_
                                                 _hd241723242636_
                                                 _tl241722242638_
                                                 _e241727242641_
                                                 _hd241726242644_
                                                 _tl241725242646_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241731242654_ _target241728242649_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx252235252236_))
                    (let ((_e241700242569_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx252235252236_))))
                      (let ((_tl241698242574_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241700242569_)))
                            (_hd241699242572_
                             (let ()
                               (declare (not safe))
                               (##car _e241700242569_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241698242574_))
                            (let ((_e241703242577_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241698242574_))))
                              (let ((_tl241701242582_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241703242577_)))
                                    (_hd241702242580_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241703242577_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241702242580_))
                                    (let ((_e241706242585_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241702242580_))))
                                      (let ((_tl241704242590_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241706242585_)))
                                            (_hd241705242588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241706242585_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241705242588_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241705242588_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241704242590_))
                                                    (let ((_e241709242593_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241704242590_))))
                                                      (let ((_tl241707242598_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241709242593_)))
                    (_hd241708242596_
                     (let () (declare (not safe)) (##car _e241709242593_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241707242598_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241701242582_))
                        (let ((_e241712242601_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241701242582_))))
                          (let ((_tl241710242606_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241712242601_)))
                                (_hd241711242604_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241712242601_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241711242604_))
                                (let ((_e241715242609_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241711242604_))))
                                  (let ((_tl241713242614_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241715242609_)))
                                        (_hd241714242612_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241715242609_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241714242612_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241714242612_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241713242614_))
                                                (let ((_e241718242617_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241713242614_))))
                                                  (let ((_tl241716242622_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241718242617_)))
                                                        (_hd241717242620_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241718242617_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241716242622_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241710242606_))
                                                            (let ((_e241721242625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241710242606_))))
                      (let ((_tl241719242630_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241721242625_)))
                            (_hd241720242628_
                             (let ()
                               (declare (not safe))
                               (##car _e241721242625_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd241720242628_))
                            (let ((_e241724242633_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd241720242628_))))
                              (let ((_tl241722242638_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241724242633_)))
                                    (_hd241723242636_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241724242633_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241723242636_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd241723242636_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241722242638_))
                                            (let ((_e241727242641_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241722242638_))))
                                              (let ((_tl241725242646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241727242641_)))
                                                    (_hd241726242644_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241727242641_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl241725242646_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl241719242630_))
                                                        (let ((___splice252239252240_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl241719242630_ '0))))
                  (let ((_tl241730242651_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252239252240_ '1)))
                        (_target241728242649_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252239252240_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241730242651_))
                        (___match252340252341_
                         _e241700242569_
                         _hd241699242572_
                         _tl241698242574_
                         _e241703242577_
                         _hd241702242580_
                         _tl241701242582_
                         _e241706242585_
                         _hd241705242588_
                         _tl241704242590_
                         _e241709242593_
                         _hd241708242596_
                         _tl241707242598_
                         _e241712242601_
                         _hd241711242604_
                         _tl241710242606_
                         _e241715242609_
                         _hd241714242612_
                         _tl241713242614_
                         _e241718242617_
                         _hd241717242620_
                         _tl241716242622_
                         _e241721242625_
                         _hd241720242628_
                         _tl241719242630_
                         _e241724242633_
                         _hd241723242636_
                         _tl241722242638_
                         _e241727242641_
                         _hd241726242644_
                         _tl241725242646_
                         ___splice252239252240_
                         _target241728242649_
                         _tl241730242651_)
                        (___match252528252529_
                         _e241700242569_
                         _hd241699242572_
                         _tl241698242574_
                         _e241703242577_
                         _hd241702242580_
                         _tl241701242582_
                         _e241706242585_
                         _hd241705242588_
                         _tl241704242590_
                         _e241709242593_
                         _hd241708242596_
                         _tl241707242598_
                         _e241712242601_
                         _hd241711242604_
                         _tl241710242606_
                         _e241715242609_
                         _hd241714242612_
                         _tl241713242614_
                         _e241718242617_
                         _hd241717242620_
                         _tl241716242622_
                         _e241721242625_
                         _hd241720242628_
                         _tl241719242630_
                         _e241724242633_
                         _hd241723242636_
                         _tl241722242638_
                         _e241727242641_
                         _hd241726242644_
                         _tl241725242646_))))
                (___match252528252529_
                 _e241700242569_
                 _hd241699242572_
                 _tl241698242574_
                 _e241703242577_
                 _hd241702242580_
                 _tl241701242582_
                 _e241706242585_
                 _hd241705242588_
                 _tl241704242590_
                 _e241709242593_
                 _hd241708242596_
                 _tl241707242598_
                 _e241712242601_
                 _hd241711242604_
                 _tl241710242606_
                 _e241715242609_
                 _hd241714242612_
                 _tl241713242614_
                 _e241718242617_
                 _hd241717242620_
                 _tl241716242622_
                 _e241721242625_
                 _hd241720242628_
                 _tl241719242630_
                 _e241724242633_
                 _hd241723242636_
                 _tl241722242638_
                 _e241727242641_
                 _hd241726242644_
                 _tl241725242646_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match252732252733_
                                                     _e241700242569_
                                                     _hd241699242572_
                                                     _tl241698242574_
                                                     _e241703242577_
                                                     _hd241702242580_
                                                     _tl241701242582_
                                                     _e241706242585_
                                                     _hd241705242588_
                                                     _tl241704242590_
                                                     _e241709242593_
                                                     _hd241708242596_
                                                     _tl241707242598_
                                                     _e241712242601_
                                                     _hd241711242604_
                                                     _tl241710242606_
                                                     _e241715242609_
                                                     _hd241714242612_
                                                     _tl241713242614_
                                                     _e241718242617_
                                                     _hd241717242620_
                                                     _tl241716242622_
                                                     _e241721242625_
                                                     _hd241720242628_
                                                     _tl241719242630_))))
                                            (___match252732252733_
                                             _e241700242569_
                                             _hd241699242572_
                                             _tl241698242574_
                                             _e241703242577_
                                             _hd241702242580_
                                             _tl241701242582_
                                             _e241706242585_
                                             _hd241705242588_
                                             _tl241704242590_
                                             _e241709242593_
                                             _hd241708242596_
                                             _tl241707242598_
                                             _e241712242601_
                                             _hd241711242604_
                                             _tl241710242606_
                                             _e241715242609_
                                             _hd241714242612_
                                             _tl241713242614_
                                             _e241718242617_
                                             _hd241717242620_
                                             _tl241716242622_
                                             _e241721242625_
                                             _hd241720242628_
                                             _tl241719242630_))
                                        (___match252408252409_
                                         _e241700242569_
                                         _hd241699242572_
                                         _tl241698242574_
                                         _e241703242577_
                                         _hd241702242580_
                                         _tl241701242582_
                                         _e241706242585_
                                         _hd241705242588_
                                         _tl241704242590_
                                         _e241709242593_
                                         _hd241708242596_
                                         _tl241707242598_
                                         _e241712242601_
                                         _hd241711242604_
                                         _tl241710242606_
                                         _e241715242609_
                                         _hd241714242612_
                                         _tl241713242614_
                                         _e241718242617_
                                         _hd241717242620_
                                         _tl241716242622_
                                         _e241721242625_
                                         _hd241720242628_
                                         _tl241719242630_
                                         _e241724242633_
                                         _hd241723242636_
                                         _tl241722242638_))
                                    (___match252732252733_
                                     _e241700242569_
                                     _hd241699242572_
                                     _tl241698242574_
                                     _e241703242577_
                                     _hd241702242580_
                                     _tl241701242582_
                                     _e241706242585_
                                     _hd241705242588_
                                     _tl241704242590_
                                     _e241709242593_
                                     _hd241708242596_
                                     _tl241707242598_
                                     _e241712242601_
                                     _hd241711242604_
                                     _tl241710242606_
                                     _e241715242609_
                                     _hd241714242612_
                                     _tl241713242614_
                                     _e241718242617_
                                     _hd241717242620_
                                     _tl241716242622_
                                     _e241721242625_
                                     _hd241720242628_
                                     _tl241719242630_))))
                            (___match252732252733_
                             _e241700242569_
                             _hd241699242572_
                             _tl241698242574_
                             _e241703242577_
                             _hd241702242580_
                             _tl241701242582_
                             _e241706242585_
                             _hd241705242588_
                             _tl241704242590_
                             _e241709242593_
                             _hd241708242596_
                             _tl241707242598_
                             _e241712242601_
                             _hd241711242604_
                             _tl241710242606_
                             _e241715242609_
                             _hd241714242612_
                             _tl241713242614_
                             _e241718242617_
                             _hd241717242620_
                             _tl241716242622_
                             _e241721242625_
                             _hd241720242628_
                             _tl241719242630_))))
                    (___match252670252671_
                     _e241700242569_
                     _hd241699242572_
                     _tl241698242574_
                     _e241703242577_
                     _hd241702242580_
                     _tl241701242582_
                     _e241706242585_
                     _hd241705242588_
                     _tl241704242590_
                     _e241709242593_
                     _hd241708242596_
                     _tl241707242598_
                     _e241712242601_
                     _hd241711242604_
                     _tl241710242606_
                     _e241715242609_
                     _hd241714242612_
                     _tl241713242614_
                     _e241718242617_
                     _hd241717242620_
                     _tl241716242622_))
                (___kont252253252254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont252253252254_))
                                            (___kont252253252254_))
                                        (___kont252253252254_))))
                                (___kont252253252254_))))
                        (___kont252253252254_))
                    (___kont252253252254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252253252254_))
                                                (___kont252253252254_))
                                            (___kont252253252254_))))
                                    (___kont252253252254_))))
                            (___kont252253252254_))))
                    (___kont252253252254_))))))))))
