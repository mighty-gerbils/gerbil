(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1707610217)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl247136_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252732 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl247136_ __tmp252732))
           (let ()
             (declare (not safe))
             (table-set! _tbl247136_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247136_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247136_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247136_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl247136_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx247119_ . _args247121_)
        (let ((__tmp252734
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247121_)
                     (gxc#compile-e__0 _stx247119_)
                     (let ((_arg1247126_ (car _args247121_))
                           (_rest247128_ (cdr _args247121_)))
                       (if (null? _rest247128_)
                           (gxc#compile-e__1 _stx247119_ _arg1247126_)
                           (let ((_arg2247131_ (car _rest247128_))
                                 (_rest247133_ (cdr _rest247128_)))
                             (if (null? _rest247133_)
                                 (gxc#compile-e__2
                                  _stx247119_
                                  _arg1247126_
                                  _arg2247131_)
                                 (apply gxc#compile-e
                                        _stx247119_
                                        _arg1247126_
                                        _arg2247131_
                                        _rest247133_))))))))
              (__tmp252733 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp252734
           gxc#current-compile-methods
           __tmp252733))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl247116_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252735 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl247116_ __tmp252735))
           (let ()
             (declare (not safe))
             (table-set! _tbl247116_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247116_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247116_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247116_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl247116_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247116_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl247116_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#struct-direct-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl247116_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl247116_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx247099_ . _args247101_)
        (let ((__tmp252737
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247101_)
                     (gxc#compile-e__0 _stx247099_)
                     (let ((_arg1247106_ (car _args247101_))
                           (_rest247108_ (cdr _args247101_)))
                       (if (null? _rest247108_)
                           (gxc#compile-e__1 _stx247099_ _arg1247106_)
                           (let ((_arg2247111_ (car _rest247108_))
                                 (_rest247113_ (cdr _rest247108_)))
                             (if (null? _rest247113_)
                                 (gxc#compile-e__2
                                  _stx247099_
                                  _arg1247106_
                                  _arg2247111_)
                                 (apply gxc#compile-e
                                        _stx247099_
                                        _arg1247106_
                                        _arg2247111_
                                        _rest247113_))))))))
              (__tmp252736 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252737
           gxc#current-compile-methods
           __tmp252736))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl247096_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp252738 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl247096_ __tmp252738))
           (let ()
             (declare (not safe))
             (table-set! _tbl247096_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl247096_ '%#call gxc#subst-object-refs-call%))
           _tbl247096_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx247079_ . _args247081_)
        (let ((__tmp252740
               (lambda ()
                 (declare (not safe))
                 (if (null? _args247081_)
                     (gxc#compile-e__0 _stx247079_)
                     (let ((_arg1247086_ (car _args247081_))
                           (_rest247088_ (cdr _args247081_)))
                       (if (null? _rest247088_)
                           (gxc#compile-e__1 _stx247079_ _arg1247086_)
                           (let ((_arg2247091_ (car _rest247088_))
                                 (_rest247093_ (cdr _rest247088_)))
                             (if (null? _rest247093_)
                                 (gxc#compile-e__2
                                  _stx247079_
                                  _arg1247086_
                                  _arg2247091_)
                                 (apply gxc#compile-e
                                        _stx247079_
                                        _arg1247086_
                                        _arg2247091_
                                        _rest247093_))))))))
              (__tmp252739 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp252740
           gxc#current-compile-methods
           __tmp252739))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx243749_)
        (letrec ((_generate-method-bind243751_
                  (lambda (_$t247073_ _id247074_ _$id247075_)
                    (let ((_$tmp247077_
                           (let ((__tmp252741 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252741))))
                      (let ((__tmp252786
                             (let ()
                               (declare (not safe))
                               (cons _$id247075_ '())))
                            (__tmp252742
                             (let ((__tmp252743
                                    (let ((__tmp252744
                                           (let ((__tmp252784
                                                  (let ((__tmp252785
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252785)))
                                                 (__tmp252745
                                                  (let ((__tmp252746
                                                         (let ((__tmp252747
                                                                (let ((__tmp252748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252749
                                      (let ((__tmp252750
                                             (let ((__tmp252770
                                                    (let ((__tmp252771
                                                           (let ((__tmp252783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp247077_ '())))
                         (__tmp252772
                          (let ((__tmp252773
                                 (let ((__tmp252774
                                        (let ((__tmp252781
                                               (let ((__tmp252782
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp252782)))
                                              (__tmp252775
                                               (let ((__tmp252779
                                                      (let ((__tmp252780
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t247073_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp252780)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp252776
                                                      (let ((__tmp252777
                                                             (let ((__tmp252778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id247074_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp252778))))
                (declare (not safe))
                (cons __tmp252777 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp252779
                                                       __tmp252776))))
                                          (declare (not safe))
                                          (cons __tmp252781 __tmp252775))))
                                   (declare (not safe))
                                   (cons '%#call __tmp252774))))
                            (declare (not safe))
                            (cons __tmp252773 '()))))
                     (declare (not safe))
                     (cons __tmp252783 __tmp252772))))
              (declare (not safe))
              (cons __tmp252771 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252751
                                                    (let ((__tmp252752
                                                           (let ((__tmp252753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252768
                                 (let ((__tmp252769
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp247077_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp252769)))
                                (__tmp252754
                                 (let ((__tmp252766
                                        (let ((__tmp252767
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp247077_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp252767)))
                                       (__tmp252755
                                        (let ((__tmp252756
                                               (let ((__tmp252757
                                                      (let ((__tmp252764
                                                             (let ((__tmp252765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp252765)))
                    (__tmp252758
                     (let ((__tmp252762
                            (let ((__tmp252763
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp252763)))
                           (__tmp252759
                            (let ((__tmp252760
                                   (let ((__tmp252761
                                          (let ()
                                            (declare (not safe))
                                            (cons _id247074_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp252761))))
                              (declare (not safe))
                              (cons __tmp252760 '()))))
                       (declare (not safe))
                       (cons __tmp252762 __tmp252759))))
                (declare (not safe))
                (cons __tmp252764 __tmp252758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp252757))))
                                          (declare (not safe))
                                          (cons __tmp252756 '()))))
                                   (declare (not safe))
                                   (cons __tmp252766 __tmp252755))))
                            (declare (not safe))
                            (cons __tmp252768 __tmp252754))))
                     (declare (not safe))
                     (cons '%#if __tmp252753))))
              (declare (not safe))
              (cons __tmp252752 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252770
                                                     __tmp252751))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp252750))))
                                 (declare (not safe))
                                 (cons __tmp252749 '()))))
                          (declare (not safe))
                          (cons '() __tmp252748))))
                   (declare (not safe))
                   (cons '%#lambda __tmp252747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252746 '()))))
                                             (declare (not safe))
                                             (cons __tmp252784 __tmp252745))))
                                      (declare (not safe))
                                      (cons '%#call __tmp252744))))
                               (declare (not safe))
                               (cons __tmp252743 '()))))
                        (declare (not safe))
                        (cons __tmp252786 __tmp252742)))))
                 (_generate-slot-bind243752_
                  (lambda (_$t247067_ _id247068_ _$id247069_)
                    (let ((_$tmp247071_
                           (let ((__tmp252787 (gensym '__tmp)))
                             (declare (not safe))
                             (make-symbol__0 __tmp252787))))
                      (let ((__tmp252824
                             (let ()
                               (declare (not safe))
                               (cons _$id247069_ '())))
                            (__tmp252788
                             (let ((__tmp252789
                                    (let ((__tmp252790
                                           (let ((__tmp252810
                                                  (let ((__tmp252811
                                                         (let ((__tmp252823
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp247071_ '())))
                       (__tmp252812
                        (let ((__tmp252813
                               (let ((__tmp252814
                                      (let ((__tmp252821
                                             (let ((__tmp252822
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp252822)))
                                            (__tmp252815
                                             (let ((__tmp252819
                                                    (let ((__tmp252820
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t247067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp252820)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp252816
                                                    (let ((__tmp252817
                                                           (let ((__tmp252818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id247068_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp252818))))
              (declare (not safe))
              (cons __tmp252817 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp252819
                                                     __tmp252816))))
                                        (declare (not safe))
                                        (cons __tmp252821 __tmp252815))))
                                 (declare (not safe))
                                 (cons '%#call __tmp252814))))
                          (declare (not safe))
                          (cons __tmp252813 '()))))
                   (declare (not safe))
                   (cons __tmp252823 __tmp252812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252811 '())))
                                                 (__tmp252791
                                                  (let ((__tmp252792
                                                         (let ((__tmp252793
                                                                (let ((__tmp252808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252809
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp247071_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252809)))
                              (__tmp252794
                               (let ((__tmp252806
                                      (let ((__tmp252807
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp247071_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp252807)))
                                     (__tmp252795
                                      (let ((__tmp252796
                                             (let ((__tmp252797
                                                    (let ((__tmp252804
                                                           (let ((__tmp252805
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp252805)))
                  (__tmp252798
                   (let ((__tmp252802
                          (let ((__tmp252803
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp252803)))
                         (__tmp252799
                          (let ((__tmp252800
                                 (let ((__tmp252801
                                        (let ()
                                          (declare (not safe))
                                          (cons _id247068_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp252801))))
                            (declare (not safe))
                            (cons __tmp252800 '()))))
                     (declare (not safe))
                     (cons __tmp252802 __tmp252799))))
              (declare (not safe))
              (cons __tmp252804 __tmp252798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp252797))))
                                        (declare (not safe))
                                        (cons __tmp252796 '()))))
                                 (declare (not safe))
                                 (cons __tmp252806 __tmp252795))))
                          (declare (not safe))
                          (cons __tmp252808 __tmp252794))))
                   (declare (not safe))
                   (cons '%#if __tmp252793))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252792 '()))))
                                             (declare (not safe))
                                             (cons __tmp252810 __tmp252791))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp252790))))
                               (declare (not safe))
                               (cons __tmp252789 '()))))
                        (declare (not safe))
                        (cons __tmp252824 __tmp252788)))))
                 (_generate-class-check-bind243753_
                  (lambda (_$t247063_ _class-type247064_ _$class-type247065_)
                    (let ((__tmp252836
                           (let ()
                             (declare (not safe))
                             (cons _$class-type247065_ '())))
                          (__tmp252825
                           (let ((__tmp252826
                                  (let ((__tmp252827
                                         (let ((__tmp252834
                                                (let ((__tmp252835
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'subclass?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252835)))
                                               (__tmp252828
                                                (let ((__tmp252832
                                                       (let ((__tmp252833
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t247063_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252833)))
              (__tmp252829
               (let ((__tmp252830
                      (let ((__tmp252831
                             (let ()
                               (declare (not safe))
                               (cons _class-type247064_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252831))))
                 (declare (not safe))
                 (cons __tmp252830 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252832
                                                        __tmp252829))))
                                           (declare (not safe))
                                           (cons __tmp252834 __tmp252828))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252827))))
                             (declare (not safe))
                             (cons __tmp252826 '()))))
                      (declare (not safe))
                      (cons __tmp252836 __tmp252825))))
                 (_generate-struct-check-bind243754_
                  (lambda (_$t247059_ _class-type247060_ _$class-type247061_)
                    (let ((__tmp252848
                           (let ()
                             (declare (not safe))
                             (cons _$class-type247061_ '())))
                          (__tmp252837
                           (let ((__tmp252838
                                  (let ((__tmp252839
                                         (let ((__tmp252846
                                                (let ((__tmp252847
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'substruct?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp252847)))
                                               (__tmp252840
                                                (let ((__tmp252844
                                                       (let ((__tmp252845
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$t247059_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252845)))
              (__tmp252841
               (let ((__tmp252842
                      (let ((__tmp252843
                             (let ()
                               (declare (not safe))
                               (cons _class-type247060_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp252843))))
                 (declare (not safe))
                 (cons __tmp252842 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252844
                                                        __tmp252841))))
                                           (declare (not safe))
                                           (cons __tmp252846 __tmp252840))))
                                    (declare (not safe))
                                    (cons '%#call __tmp252839))))
                             (declare (not safe))
                             (cons __tmp252838 '()))))
                      (declare (not safe))
                      (cons __tmp252848 __tmp252837))))
                 (_generate-specializer-impl243755_
                  (lambda (_$t247008_
                           _methods-bind247009_
                           _slots-bind247010_
                           _class-check-bind247011_
                           _struct-check-bind247012_
                           _specializer-impl247013_
                           _lifted-specializer-id247014_
                           _unchecked-specializer-impl247015_)
                    (let ((__tmp252849
                           (let ((__tmp252850
                                  (let ((__tmp252876
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t247008_ '())))
                                        (__tmp252851
                                         (let ((__tmp252852
                                                (let ((__tmp252853
                                                       (let ((__tmp252873
                                                              (let ((__tmp252874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252875
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind247012_
                                              _class-check-bind247011_))))
                               (declare (not safe))
                               (foldr1 cons __tmp252875 _slots-bind247010_))))
                        (declare (not safe))
                        (foldr1 cons __tmp252874 _methods-bind247009_)))
                     (__tmp252854
                      (let ((__tmp252855
                             (if (or _lifted-specializer-id247014_
                                     _unchecked-specializer-impl247015_)
                                 (let* ((_$specializer247020_
                                         (let ((__tmp252856
                                                (gensym '__specializer)))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp252856)))
                                        (__tmp252857
                                         (let ((__tmp252869
                                                (let ((__tmp252870
                                                       (let ((__tmp252872
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer247020_ '())))
                     (__tmp252871
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl247013_ '()))))
                 (declare (not safe))
                 (cons __tmp252872 __tmp252871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252870 '())))
                                               (__tmp252858
                                                (let ((__tmp252859
                                                       (let _recur247022_ ((_rest247024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (map caar _struct-check-bind247012_)))
                 (let* ((_rest247025247033_ _rest247024_)
                        (_else247027247041_
                         (lambda ()
                           (if _lifted-specializer-id247014_
                               (let ((__tmp252860
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id247014_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp252860))
                               _unchecked-specializer-impl247015_)))
                        (_K247029247047_
                         (lambda (_rest247044_ _checkq247045_)
                           (let ((__tmp252861
                                  (let ((__tmp252867
                                         (let ((__tmp252868
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq247045_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp252868)))
                                        (__tmp252862
                                         (let ((__tmp252866
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur247022_
                                                   _rest247044_)))
                                               (__tmp252863
                                                (let ((__tmp252864
                                                       (let ((__tmp252865
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer247020_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp252865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252864 '()))))
                                           (declare (not safe))
                                           (cons __tmp252866 __tmp252863))))
                                    (declare (not safe))
                                    (cons __tmp252867 __tmp252862))))
                             (declare (not safe))
                             (cons '%#if __tmp252861)))))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _rest247025247033_))
                       (let ((_hd247030247050_
                              (let ()
                                (declare (not safe))
                                (##car _rest247025247033_)))
                             (_tl247031247052_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest247025247033_))))
                         (let* ((_checkq247055_ _hd247030247050_)
                                (_rest247057_ _tl247031247052_))
                           (declare (not safe))
                           (_K247029247047_ _rest247057_ _checkq247055_)))
                       (let () (declare (not safe)) (_else247027247041_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252859 '()))))
                                           (declare (not safe))
                                           (cons __tmp252869 __tmp252858))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp252857))
                                 _specializer-impl247013_)))
                        (declare (not safe))
                        (cons __tmp252855 '()))))
                 (declare (not safe))
                 (cons __tmp252873 __tmp252854))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp252853))))
                                           (declare (not safe))
                                           (cons __tmp252852 '()))))
                                    (declare (not safe))
                                    (cons __tmp252876 __tmp252851))))
                             (declare (not safe))
                             (cons '%#lambda __tmp252850))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252849 _stx243749_))))
                 (_generate-specializer-def243756_
                  (lambda (_id247002_
                           _specializer-id247003_
                           _specializer-impl247004_
                           _lifted-specializer-id247005_
                           _unchecked-specializer-impl247006_)
                    (let ((__tmp252877
                           (let ((__tmp252878
                                  (let ((__tmp252879
                                         (let ((__tmp252899
                                                (let ((__tmp252900
                                                       (let ((__tmp252901
                                                              (let ((__tmp252903
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id247003_ '())))
                            (__tmp252902
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl247004_ '()))))
                        (declare (not safe))
                        (cons __tmp252903 __tmp252902))))
                 (declare (not safe))
                 (cons '%#define-values __tmp252901))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp252900
                                                   _stx243749_)))
                                               (__tmp252880
                                                (let ((__tmp252887
                                                       (let ((__tmp252888
                                                              (let ((__tmp252889
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252890
                                    (let ((__tmp252897
                                           (let ((__tmp252898
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp252898)))
                                          (__tmp252891
                                           (let ((__tmp252895
                                                  (let ((__tmp252896
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id247002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp252896)))
                                                 (__tmp252892
                                                  (let ((__tmp252893
                                                         (let ((__tmp252894
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id247003_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp252894))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252893 '()))))
                                             (declare (not safe))
                                             (cons __tmp252895 __tmp252892))))
                                      (declare (not safe))
                                      (cons __tmp252897 __tmp252891))))
                               (declare (not safe))
                               (cons '%#call __tmp252890))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp252889 _stx243749_))))
                 (declare (not safe))
                 (cons __tmp252888 '())))
              (__tmp252881
               (if _lifted-specializer-id247005_
                   (let ((__tmp252882
                          (let ((__tmp252883
                                 (let ((__tmp252884
                                        (let ((__tmp252886
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id247005_
                                                       '())))
                                              (__tmp252885
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl247006_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp252886 __tmp252885))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp252884))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp252883 _stx243749_))))
                     (declare (not safe))
                     (cons __tmp252882 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp252887
                                                          __tmp252881))))
                                           (declare (not safe))
                                           (cons __tmp252899 __tmp252880))))
                                    (declare (not safe))
                                    (cons _stx243749_ __tmp252879))))
                             (declare (not safe))
                             (cons '%#begin __tmp252878))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252877 _stx243749_)))))
          (let* ((___stx251693251694_ _stx243749_)
                 (_g243759243779_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx251693251694_)))))
            (let ((___kont251695251696_
                   (lambda (_L243823_ _L243824_)
                     (let ((_method-calls243843_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs243844_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check243845_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check243846_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert243847_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty243848_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?243850_
                                 (lambda ()
                                   (if (let ((__tmp252908
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243843_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252908))
                                       (if (let ((__tmp252907
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243844_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252907))
                                           (if (let ((__tmp252906
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check243845_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp252906))
                                               (if (let ((__tmp252905
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check243846_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252905))
                                                   (let ((__tmp252904
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert243847_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp252904))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?243851_
                                 (lambda ()
                                   (let ((_$e246995_
                                          (let ((__tmp252909
                                                 (let ((__tmp252910
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check243846_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp252910))))
                                            (declare (not safe))
                                            (not __tmp252909))))
                                     (if _$e246995_
                                         _$e246995_
                                         (let ((__tmp252911
                                                (let ((__tmp252912
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert243847_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp252912))))
                                           (declare (not safe))
                                           (not __tmp252911))))))
                                (_lift-unchecked-specializer?243852_
                                 (lambda ()
                                   (if (let ((__tmp252915
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls243843_))))
                                         (declare (not safe))
                                         (fxzero? __tmp252915))
                                       (if (let ((__tmp252914
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs243844_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252914))
                                           (let ((__tmp252913
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check243845_))))
                                             (declare (not safe))
                                             (fxzero? __tmp252913))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L243823_))
                             (let* ((___stx251607251608_ _L243823_)
                                    (_g244365244383_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx251607251608_)))))
                               (let ((___kont251609251610_
                                      (lambda (_L244419_ _L244420_ _L244421_)
                                        (for-each
                                         (lambda (_g244436244438_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g244436244438_
                                              _L244421_
                                              _method-calls243843_
                                              _slot-refs243844_
                                              _class-type-check243845_
                                              _struct-type-check243846_
                                              _struct-type-assert243847_)))
                                         _L244419_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?243850_))
                                            _stx243749_
                                            (let* ((_specializer-id244447_
                                                    (let* ((_id244441_
                                                            (let ((__tmp253065
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L243824_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp253065 '"::specialize")))
                   (_specializer-id244444_
                    (let ((__tmp253066
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx243749_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id244441_ __tmp253066))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id244444_))
              _specializer-id244444_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id244454_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?243852_))
                                                        (let* ((_id244449_
                                                                (let ((__tmp253067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L243824_))))
                          (declare (not safe))
                          (make-symbol__1
                           __tmp253067
                           '"::specialize::unchecked")))
                       (_lifted-specializer-id244451_
                        (let ((__tmp253068
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx243749_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id244449_ __tmp253068))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id244451_))
                  _lifted-specializer-id244451_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t244456_
                                                    (let ((__tmp253069
                                                           (gensym '__t)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp253069)))
                                                   (_methods244458_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls243843_)))
                                                   (_$methods244462_
                                                    (map (lambda (_id244460_)
                                                           (let ((__tmp253070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244460_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253070)))
                 _methods244458_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253071_
                                                    (for-each
                                                     (lambda (_g244463244466_
                                                              _g244464244468_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls243843_
                                                          _g244463244466_
                                                          _g244464244468_)))
                                                     _methods244458_
                                                     _$methods244462_))
                                                   (_methods-bind244479_
                                                    (map (lambda (_g244471244474_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244472244476_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind243751_
                      _$t244456_
                      _g244471244474_
                      _g244472244476_)))
                 _methods244458_
                 _$methods244462_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots244481_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs243844_)))
                                                   (_$slots244485_
                                                    (map (lambda (_id244483_)
                                                           (let ((__tmp253072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id244483_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp253072)))
                 _slots244481_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253073_
                                                    (for-each
                                                     (lambda (_g244486244489_
                                                              _g244487244491_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs243844_
                                                          _g244486244489_
                                                          _g244487244491_)))
                                                     _slots244481_
                                                     _$slots244485_))
                                                   (_slots-bind244502_
                                                    (map (lambda (_g244494244497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244495244499_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind243752_
                      _$t244456_
                      _g244494244497_
                      _g244495244499_)))
                 _slots244481_
                 _$slots244485_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check244504_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check243845_)))
                                                   (_$class-check244507_
                                                    (map (lambda (_g253074_)
                                                           (let ((__tmp253075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253075)))
                 _class-check244504_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253076_
                                                    (for-each
                                                     (lambda (_g244508244511_
                                                              _g244509244513_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check243845_
                                                          _g244508244511_
                                                          _g244509244513_)))
                                                     _class-check244504_
                                                     _$class-check244507_))
                                                   (_class-check-bind244524_
                                                    (map (lambda (_g244516244519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244517244521_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind243753_
                      _$t244456_
                      _g244516244519_
                      _g244517244521_)))
                 _class-check244504_
                 _$class-check244507_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all244526_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check243846_
                                                       _struct-type-assert243847_)))
                                                   (_struct-check244528_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all244526_)))
                                                   (_$struct-check244531_
                                                    (map (lambda (_g253077_)
                                                           (let ((__tmp253078
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__class)))
                     (declare (not safe))
                     (make-symbol__0 __tmp253078)))
                 _struct-check244528_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g253079_
                                                    (for-each
                                                     (lambda (_g244532244535_
                                                              _g244533244537_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all244526_
                                                          _g244532244535_
                                                          _g244533244537_)))
                                                     _struct-check244528_
                                                     _$struct-check244531_))
                                                   (_struct-check-bind244548_
                                                    (map (lambda (_g244540244543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g244541244545_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind243754_
                      _$t244456_
                      _g244540244543_
                      _g244541244545_)))
                 _struct-check244528_
                 _$struct-check244531_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl244559_
                                                    (lambda (_struct-type-check1244550_
                                                             _struct-type-check2244551_)
                                                      (let* ((_specializer-body244557_
                                                              (map (lambda (_g244552244554_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g244552244554_
                                _L244421_
                                _$t244456_
                                _method-calls243843_
                                _slot-refs243844_
                                _class-type-check243845_
                                _struct-type-check1244550_
                                _struct-type-check2244551_)))
                           _L244419_))
                     (__tmp253080
                      (let ((__tmp253081
                             (let ((__tmp253082
                                    (let ()
                                      (declare (not safe))
                                      (cons _L244421_ _L244420_))))
                               (declare (not safe))
                               (cons __tmp253082 _specializer-body244557_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp253081))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp253080 _stx243749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl244561_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl244559_
                                                       _struct-check-all244526_
                                                       _empty243848_)))
                                                   (_unchecked-specializer-impl244563_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?243851_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl244559_
                                                           _empty243848_
                                                           _struct-check-all244526_))
                                                        '#f))
                                                   (_specializer-impl244565_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl243755_
                                                       _$t244456_
                                                       _methods-bind244479_
                                                       _slots-bind244502_
                                                       _class-check-bind244524_
                                                       _struct-check-bind244548_
                                                       _specializer-impl244561_
                                                       _lifted-specializer-id244454_
                                                       _unchecked-specializer-impl244563_))))
                                              (let ((__tmp253084
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L243824_)))
                                                    (__tmp253083
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id244447_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp253084
                                                 '" => "
                                                 __tmp253083))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def243756_
                                                 _L243824_
                                                 _specializer-id244447_
                                                 _specializer-impl244565_
                                                 _lifted-specializer-id244454_
                                                 _unchecked-specializer-impl244563_))))))
                                     (___kont251611251612_
                                      (lambda () _stx243749_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx251607251608_))
                                     (let ((_e244372244395_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx251607251608_))))
                                       (let ((_tl244370244400_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e244372244395_)))
                                             (_hd244371244398_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e244372244395_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl244370244400_))
                                             (let ((_e244375244403_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl244370244400_))))
                                               (let ((_tl244373244408_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e244375244403_)))
                                                     (_hd244374244406_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e244375244403_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd244374244406_))
                                                     (let ((_e244378244411_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd244374244406_))))
                                                       (let ((_tl244376244416_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e244378244411_)))
                     (_hd244377244414_
                      (let () (declare (not safe)) (##car _e244378244411_))))
                 (___kont251609251610_
                  _tl244373244408_
                  _tl244376244416_
                  _hd244377244414_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont251611251612_))))
                                             (___kont251611251612_))))
                                     (___kont251611251612_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L243823_))
                                 (let* ((_g244571244590_
                                         (lambda (_g244572244587_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g244572244587_))))
                                        (_g244570244941_
                                         (lambda (_g244572244593_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g244572244593_))
                                               (let ((_e244576244595_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g244572244593_))))
                                                 (let ((_hd244575244598_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e244576244595_)))
                                                       (_tl244574244600_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e244576244595_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl244574244600_))
                                                       (let ((_g253041_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl244574244600_ '0))))
                 (begin
                   (let ((_g253042_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g253041_)
                                (##vector-length _g253041_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g253042_ 2)))
                         (error "Context expects 2 values" _g253042_)))
                   (let ((_target244577244603_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253041_ 0)))
                         (_tl244579244605_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g253041_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl244579244605_))
                         (letrec ((_loop244580244608_
                                   (lambda (_hd244578244611_
                                            _clause244584244613_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd244578244611_))
                                         (let ((_e244581244616_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd244578244611_))))
                                           (let ((_lp-hd244582244619_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e244581244616_)))
                                                 (_lp-tl244583244621_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e244581244616_))))
                                             (let ((__tmp253064
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd244582244619_
                                                            _clause244584244613_))))
                                               (declare (not safe))
                                               (_loop244580244608_
                                                _lp-tl244583244621_
                                                __tmp253064))))
                                         (let ((_clause244585244624_
                                                (reverse _clause244584244613_)))
                                           ((lambda (_L244627_)
                                              (for-each
                                               (lambda (_clause244640_)
                                                 (let* ((___stx251633251634_
                                                         _clause244640_)
                                                        (_g244643244658_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx251633251634_)))))
                                                   (let ((___kont251635251636_
                                                          (lambda (_L244686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L244687_
                           _L244688_)
                    (for-each
                     (lambda (_g244703244705_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g244703244705_
                          _L244688_
                          _method-calls243843_
                          _slot-refs243844_
                          _class-type-check243845_
                          _struct-type-check243846_
                          _struct-type-assert243847_)))
                     _L244686_)))
                 (___kont251637251638_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx251633251634_))
                                                         (let ((_e244650244670_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx251633251634_))))
                   (let ((_tl244648244675_
                          (let ()
                            (declare (not safe))
                            (##cdr _e244650244670_)))
                         (_hd244649244673_
                          (let ()
                            (declare (not safe))
                            (##car _e244650244670_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd244649244673_))
                         (let ((_e244653244678_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd244649244673_))))
                           (let ((_tl244651244683_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e244653244678_)))
                                 (_hd244652244681_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e244653244678_))))
                             (___kont251635251636_
                              _tl244648244675_
                              _tl244651244683_
                              _hd244652244681_)))
                         (___kont251637251638_))))
                 (___kont251637251638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp253043
                                                      (lambda (_g244710244713_
                                                               _g244711244715_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g244710244713_
                                                                _g244711244715_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp253043
                                                         '()
                                                         _L244627_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243850_))
                                                  _stx243749_
                                                  (let* ((_specializer-id244724_
                                                          (let* ((_id244718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253044
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243824_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp253044 '"::specialize")))
                         (_specializer-id244721_
                          (let ((__tmp253045
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243749_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id244718_ __tmp253045))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id244721_))
                    _specializer-id244721_))
                 (_lifted-specializer-id244731_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243852_))
                      (let* ((_id244726_
                              (let ((__tmp253046
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243824_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp253046
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id244728_
                              (let ((__tmp253047
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243749_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id244726_
                                 __tmp253047))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id244728_))
                        _lifted-specializer-id244728_)
                      '#f))
                 (_$t244733_
                  (let ((__tmp253048 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp253048)))
                 (_methods244735_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243843_)))
                 (_$methods244739_
                  (map (lambda (_id244737_)
                         (let ((__tmp253049 (gensym _id244737_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253049)))
                       _methods244735_))
                 (_g253050_
                  (for-each
                   (lambda (_g244740244743_ _g244741244745_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243843_
                        _g244740244743_
                        _g244741244745_)))
                   _methods244735_
                   _$methods244739_))
                 (_methods-bind244756_
                  (map (lambda (_g244748244751_ _g244749244753_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243751_
                            _$t244733_
                            _g244748244751_
                            _g244749244753_)))
                       _methods244735_
                       _$methods244739_))
                 (_slots244758_
                  (let () (declare (not safe)) (hash-keys _slot-refs243844_)))
                 (_$slots244762_
                  (map (lambda (_id244760_)
                         (let ((__tmp253051 (gensym _id244760_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp253051)))
                       _slots244758_))
                 (_g253052_
                  (for-each
                   (lambda (_g244763244766_ _g244764244768_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243844_
                        _g244763244766_
                        _g244764244768_)))
                   _slots244758_
                   _$slots244762_))
                 (_slots-bind244779_
                  (map (lambda (_g244771244774_ _g244772244776_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243752_
                            _$t244733_
                            _g244771244774_
                            _g244772244776_)))
                       _slots244758_
                       _$slots244762_))
                 (_class-check244781_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243845_)))
                 (_$class-check244784_
                  (map (lambda (_g253053_)
                         (let ((__tmp253054 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253054)))
                       _class-check244781_))
                 (_g253055_
                  (for-each
                   (lambda (_g244785244788_ _g244786244790_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243845_
                        _g244785244788_
                        _g244786244790_)))
                   _class-check244781_
                   _$class-check244784_))
                 (_class-check-bind244801_
                  (map (lambda (_g244793244796_ _g244794244798_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243753_
                            _$t244733_
                            _g244793244796_
                            _g244794244798_)))
                       _class-check244781_
                       _$class-check244784_))
                 (_struct-check-all244803_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243846_
                     _struct-type-assert243847_)))
                 (_struct-check244805_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all244803_)))
                 (_$struct-check244808_
                  (map (lambda (_g253056_)
                         (let ((__tmp253057 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp253057)))
                       _struct-check244805_))
                 (_g253058_
                  (for-each
                   (lambda (_g244809244812_ _g244810244814_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all244803_
                        _g244809244812_
                        _g244810244814_)))
                   _struct-check244805_
                   _$struct-check244808_))
                 (_struct-check-bind244825_
                  (map (lambda (_g244817244820_ _g244818244822_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243754_
                            _$t244733_
                            _g244817244820_
                            _g244818244822_)))
                       _struct-check244805_
                       _$struct-check244808_))
                 (_make-specializer-impl244932_
                  (lambda (_struct-type-check1244827_
                           _struct-type-check2244828_)
                    (let* ((_specializer-clauses244930_
                            (map (lambda (_clause244830_)
                                   (let* ((___stx251653251654_ _clause244830_)
                                          (_g244833244848_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx251653251654_)))))
                                     (let ((___kont251655251656_
                                            (lambda (_L244876_
                                                     _L244877_
                                                     _L244878_)
                                              (let* ((_body244918_
                                                      (map (lambda (_g244913244915_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g244913244915_
                        _L244878_
                        _$t244733_
                        _method-calls243843_
                        _slot-refs243844_
                        _class-type-check243845_
                        _struct-type-check1244827_
                        _struct-type-check2244828_)))
                   _L244876_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp253059
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L244878_
                                                              _L244877_))))
                                                (declare (not safe))
                                                (cons __tmp253059
                                                      _body244918_))))
                                           (___kont251657251658_
                                            (lambda () _clause244830_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              ___stx251653251654_))
                                           (let ((_e244840244860_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx251653251654_))))
                                             (let ((_tl244838244865_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244840244860_)))
                                                   (_hd244839244863_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244840244860_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd244839244863_))
                                                   (let ((_e244843244868_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd244839244863_))))
                                                     (let ((_tl244841244873_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244843244868_)))
                                                           (_hd244842244871_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244843244868_))))
                                                       (___kont251655251656_
                                                        _tl244838244865_
                                                        _tl244841244873_
                                                        _hd244842244871_)))
                                                   (___kont251657251658_))))
                                           (___kont251657251658_)))))
                                 (let ((__tmp253060
                                        (lambda (_g244922244925_
                                                 _g244923244927_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g244922244925_
                                                  _g244923244927_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253060 '() _L244627_))))
                           (__tmp253061
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses244930_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp253061 _stx243749_))))
                 (_specializer-impl244934_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl244932_
                     _struct-check-all244803_
                     _empty243848_)))
                 (_unchecked-specializer-impl244936_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243851_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl244932_
                         _empty243848_
                         _struct-check-all244803_))
                      '#f))
                 (_specializer-impl244938_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243755_
                     _$t244733_
                     _methods-bind244756_
                     _slots-bind244779_
                     _class-check-bind244801_
                     _struct-check-bind244825_
                     _specializer-impl244934_
                     _lifted-specializer-id244731_
                     _unchecked-specializer-impl244936_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp253063
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243824_)))
                                                          (__tmp253062
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id244724_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp253063
                                                       '" => "
                                                       __tmp253062))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243756_
                                                       _L243824_
                                                       _specializer-id244724_
                                                       _specializer-impl244938_
                                                       _lifted-specializer-id244731_
                                                       _unchecked-specializer-impl244936_)))))
                                            _clause244585244624_))))))
                           (let ()
                             (declare (not safe))
                             (_loop244580244608_ _target244577244603_ '())))
                         (let ()
                           (declare (not safe))
                           (_g244571244590_ _g244572244593_))))))
               (let ()
                 (declare (not safe))
                 (_g244571244590_ _g244572244593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g244571244590_
                                                  _g244572244593_))))))
                                   (declare (not safe))
                                   (_g244570244941_ _L243823_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L243823_))
                                     (let* ((_g244944244974_
                                             (lambda (_g244945244971_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g244945244971_))))
                                            (_g244943245662_
                                             (lambda (_g244945244977_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g244945244977_))
                                                   (let ((_e244951244979_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g244945244977_))))
                                                     (let ((_hd244950244982_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e244951244979_)))
                                                           (_tl244949244984_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e244951244979_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl244949244984_))
                                                           (let ((_e244954244987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl244949244984_))))
                     (let ((_hd244953244990_
                            (let ()
                              (declare (not safe))
                              (##car _e244954244987_)))
                           (_tl244952244992_
                            (let ()
                              (declare (not safe))
                              (##cdr _e244954244987_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd244953244990_))
                           (let ((_e244957244995_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd244953244990_))))
                             (let ((_hd244956244998_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e244957244995_)))
                                   (_tl244955245000_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e244957244995_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd244956244998_))
                                   (let ((_e244960245003_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd244956244998_))))
                                     (let ((_hd244959245006_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e244960245003_)))
                                           (_tl244958245008_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e244960245003_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd244959245006_))
                                           (let ((_e244963245011_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd244959245006_))))
                                             (let ((_hd244962245014_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e244963245011_)))
                                                   (_tl244961245016_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e244963245011_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl244961245016_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl244958245008_))
                                                       (let ((_e244966245019_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl244958245008_))))
                 (let ((_hd244965245022_
                        (let () (declare (not safe)) (##car _e244966245019_)))
                       (_tl244964245024_
                        (let () (declare (not safe)) (##cdr _e244966245019_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl244964245024_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl244955245000_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl244952244992_))
                               (let ((_e244969245027_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl244952244992_))))
                                 (let ((_hd244968245030_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e244969245027_)))
                                       (_tl244967245032_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e244969245027_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl244967245032_))
                                       ((lambda (_L245035_ _L245036_ _L245037_)
                                          (let* ((_g245060245078_
                                                  (lambda (_g245061245075_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g245061245075_))))
                                                 (_g245059245129_
                                                  (lambda (_g245061245081_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g245061245081_))
                                                        (let ((_e245067245083_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g245061245081_))))
                  (let ((_hd245066245086_
                         (let () (declare (not safe)) (##car _e245067245083_)))
                        (_tl245065245088_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245067245083_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl245065245088_))
                        (let ((_e245070245091_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl245065245088_))))
                          (let ((_hd245069245094_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245070245091_)))
                                (_tl245068245096_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245070245091_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd245069245094_))
                                (let ((_e245073245099_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd245069245094_))))
                                  (let ((_hd245072245102_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245073245099_)))
                                        (_tl245071245104_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245073245099_))))
                                    ((lambda (_L245107_ _L245108_ _L245109_)
                                       (for-each
                                        (lambda (_g245124245126_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g245124245126_
                                             _L245109_
                                             _method-calls243843_
                                             _slot-refs243844_
                                             _class-type-check243845_
                                             _struct-type-check243846_
                                             _struct-type-assert243847_)))
                                        _L245107_))
                                     _tl245068245096_
                                     _tl245071245104_
                                     _hd245072245102_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245060245078_ _g245061245081_)))))
                        (let ()
                          (declare (not safe))
                          (_g245060245078_ _g245061245081_)))))
                (let ()
                  (declare (not safe))
                  (_g245060245078_ _g245061245081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g245059245129_ _L245036_))
                                          (let* ((_g245132245151_
                                                  (lambda (_g245133245148_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g245133245148_))))
                                                 (_g245131245270_
                                                  (lambda (_g245133245154_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g245133245154_))
                                                        (let ((_e245137245156_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g245133245154_))))
                  (let ((_hd245136245159_
                         (let () (declare (not safe)) (##car _e245137245156_)))
                        (_tl245135245161_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245137245156_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245135245161_))
                        (let ((_g253004_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl245135245161_
                                  '0))))
                          (begin
                            (let ((_g253005_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g253004_)
                                         (##vector-length _g253004_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g253005_ 2)))
                                  (error "Context expects 2 values"
                                         _g253005_)))
                            (let ((_target245138245164_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g253004_ 0)))
                                  (_tl245140245166_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g253004_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl245140245166_))
                                  (letrec ((_loop245141245169_
                                            (lambda (_hd245139245172_
                                                     _clause245145245174_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd245139245172_))
                                                  (let ((_e245142245177_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd245139245172_))))
                                                    (let ((_lp-hd245143245180_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e245142245177_)))
                                                          (_lp-tl245144245182_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e245142245177_))))
                                                      (let ((__tmp253007
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd245143245180_ _clause245145245174_))))
                (declare (not safe))
                (_loop245141245169_ _lp-tl245144245182_ __tmp253007))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause245146245185_
                                                         (reverse _clause245145245174_)))
                                                    ((lambda (_L245188_)
                                                       (for-each
                                                        (lambda (_clause245201_)
                                                          (let* ((_g245203245218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g245204245215_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g245204245215_))))
                         (_g245202245260_
                          (lambda (_g245204245221_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g245204245221_))
                                (let ((_e245210245223_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g245204245221_))))
                                  (let ((_hd245209245226_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245210245223_)))
                                        (_tl245208245228_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245210245223_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245209245226_))
                                        (let ((_e245213245231_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245209245226_))))
                                          (let ((_hd245212245234_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245213245231_)))
                                                (_tl245211245236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245213245231_))))
                                            ((lambda (_L245239_
                                                      _L245240_
                                                      _L245241_)
                                               (for-each
                                                (lambda (_g245255245257_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g245255245257_
                                                     _L245241_
                                                     _method-calls243843_
                                                     _slot-refs243844_
                                                     _class-type-check243845_
                                                     _struct-type-check243846_
                                                     _struct-type-assert243847_)))
                                                _L245239_))
                                             _tl245208245228_
                                             _tl245211245236_
                                             _hd245212245234_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245203245218_ _g245204245221_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245203245218_ _g245204245221_))))))
                    (declare (not safe))
                    (_g245202245260_ _clause245201_)))
                (let ((__tmp253006
                       (lambda (_g245262245265_ _g245263245267_)
                         (let ()
                           (declare (not safe))
                           (cons _g245262245265_ _g245263245267_)))))
                  (declare (not safe))
                  (foldr1 __tmp253006 '() _L245188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause245146245185_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop245141245169_
                                       _target245138245164_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g245132245151_ _g245133245154_))))))
                        (let ()
                          (declare (not safe))
                          (_g245132245151_ _g245133245154_)))))
                (let ()
                  (declare (not safe))
                  (_g245132245151_ _g245133245154_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g245131245270_ _L245035_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?243850_))
                                              _stx243749_
                                              (let* ((_specializer-id245279_
                                                      (let* ((_id245273_
                                                              (let ((__tmp253008
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L243824_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp253008 '"::specialize")))
                     (_specializer-id245276_
                      (let ((__tmp253009
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx243749_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id245273_ __tmp253009))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id245276_))
                _specializer-id245276_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id245286_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?243852_))
                                                          (let* ((_id245281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp253010
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243824_))))
                            (declare (not safe))
                            (make-symbol__1
                             __tmp253010
                             '"::specialize::unchecked")))
                         (_lifted-specializer-id245283_
                          (let ((__tmp253011
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243749_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id245281_ __tmp253011))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id245283_))
                    _lifted-specializer-id245283_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t245288_
                                                      (let ((__tmp253012
                                                             (gensym '__t)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp253012)))
                                                     (_methods245290_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls243843_)))
                                                     (_$methods245294_
                                                      (map (lambda (_id245292_)
                                                             (let ((__tmp253013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245292_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp253013)))
                   _methods245290_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253014_
                                                      (for-each
                                                       (lambda (_g245295245298_
                                                                _g245296245300_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls243843_
                                                            _g245295245298_
                                                            _g245296245300_)))
                                                       _methods245290_
                                                       _$methods245294_))
                                                     (_methods-bind245311_
                                                      (map (lambda (_g245303245306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245304245308_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind243751_
                        _$t245288_
                        _g245303245306_
                        _g245304245308_)))
                   _methods245290_
                   _$methods245294_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots245313_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs243844_)))
                                                     (_$slots245317_
                                                      (map (lambda (_id245315_)
                                                             (let ((__tmp253015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id245315_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp253015)))
                   _slots245313_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253016_
                                                      (for-each
                                                       (lambda (_g245318245321_
                                                                _g245319245323_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs243844_
                                                            _g245318245321_
                                                            _g245319245323_)))
                                                       _slots245313_
                                                       _$slots245317_))
                                                     (_slots-bind245334_
                                                      (map (lambda (_g245326245329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245327245331_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind243752_
                        _$t245288_
                        _g245326245329_
                        _g245327245331_)))
                   _slots245313_
                   _$slots245317_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check245336_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check243845_)))
                                                     (_$class-check245339_
                                                      (map (lambda (_g253017_)
                                                             (let ((__tmp253018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp253018)))
                   _class-check245336_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253019_
                                                      (for-each
                                                       (lambda (_g245340245343_
                                                                _g245341245345_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check243845_
                                                            _g245340245343_
                                                            _g245341245345_)))
                                                       _class-check245336_
                                                       _$class-check245339_))
                                                     (_class-check-bind245356_
                                                      (map (lambda (_g245348245351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245349245353_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind243753_
                        _$t245288_
                        _g245348245351_
                        _g245349245353_)))
                   _class-check245336_
                   _$class-check245339_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all245358_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check243846_
                                                         _struct-type-assert243847_)))
                                                     (_struct-check245360_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all245358_)))
                                                     (_$struct-check245363_
                                                      (map (lambda (_g253020_)
                                                             (let ((__tmp253021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym '__class)))
                       (declare (not safe))
                       (make-symbol__0 __tmp253021)))
                   _struct-check245360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g253022_
                                                      (for-each
                                                       (lambda (_g245364245367_
                                                                _g245365245369_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all245358_
                                                            _g245364245367_
                                                            _g245365245369_)))
                                                       _struct-check245360_
                                                       _$struct-check245363_))
                                                     (_struct-check-bind245380_
                                                      (map (lambda (_g245372245375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g245373245377_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind243754_
                        _$t245288_
                        _g245372245375_
                        _g245373245377_)))
                   _struct-check245360_
                   _$struct-check245363_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr245479_
                                                      (lambda (_struct-type-check1245382_
                                                               _struct-type-check2245383_)
                                                        (let* ((_g245385245403_
                                                                (lambda (_g245386245400_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245386245400_))))
                       (_g245384245476_
                        (lambda (_g245386245406_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245386245406_))
                              (let ((_e245392245408_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245386245406_))))
                                (let ((_hd245391245411_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245392245408_)))
                                      (_tl245390245413_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245392245408_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245390245413_))
                                      (let ((_e245395245416_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245390245413_))))
                                        (let ((_hd245394245419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245395245416_)))
                                              (_tl245393245421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245395245416_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd245394245419_))
                                              (let ((_e245398245424_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd245394245419_))))
                                                (let ((_hd245397245427_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e245398245424_)))
                                                      (_tl245396245429_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e245398245424_))))
                                                  ((lambda (_L245432_
                                                            _L245433_
                                                            _L245434_)
                                                     (let* ((_body245474_
                                                             (map (lambda (_g245469245471_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g245469245471_
                               _L245434_
                               _$t245288_
                               _method-calls243843_
                               _slot-refs243844_
                               _class-type-check243845_
                               _struct-type-check1245382_
                               _struct-type-check2245383_)))
                          _L245432_))
                    (__tmp253023
                     (let ((__tmp253024
                            (let ((__tmp253025
                                   (let ()
                                     (declare (not safe))
                                     (cons _L245434_ _L245433_))))
                              (declare (not safe))
                              (cons __tmp253025 _body245474_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp253024))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp253023 _L245036_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl245393245421_
                                                   _tl245396245429_
                                                   _hd245397245427_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g245385245403_
                                                 _g245386245406_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245385245403_ _g245386245406_)))))
                              (let ()
                                (declare (not safe))
                                (_g245385245403_ _g245386245406_))))))
                  (declare (not safe))
                  (_g245384245476_ _L245036_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr245640_
                                                      (lambda (_struct-type-check1245481_
                                                               _struct-type-check2245482_)
                                                        (let* ((_g245484245503_
                                                                (lambda (_g245485245500_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _g245485245500_))))
                       (_g245483245637_
                        (lambda (_g245485245506_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g245485245506_))
                              (let ((_e245489245508_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g245485245506_))))
                                (let ((_hd245488245511_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e245489245508_)))
                                      (_tl245487245513_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e245489245508_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl245487245513_))
                                      (let ((_g253026_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl245487245513_
                                                '0))))
                                        (begin
                                          (let ((_g253027_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g253026_)
                                                       (##vector-length
                                                        _g253026_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g253027_ 2)))
                                                (error "Context expects 2 values"
                                                       _g253027_)))
                                          (let ((_target245490245516_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g253026_ 0)))
                                                (_tl245492245518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g253026_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl245492245518_))
                                                (letrec ((_loop245493245521_
                                                          (lambda (_hd245491245524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause245497245526_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd245491245524_))
                        (let ((_e245494245529_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd245491245524_))))
                          (let ((_lp-hd245495245532_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e245494245529_)))
                                (_lp-tl245496245534_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e245494245529_))))
                            (let ((__tmp253031
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd245495245532_
                                           _clause245497245526_))))
                              (declare (not safe))
                              (_loop245493245521_
                               _lp-tl245496245534_
                               __tmp253031))))
                        (let ((_clause245498245537_
                               (reverse _clause245497245526_)))
                          ((lambda (_L245540_)
                             (let* ((_clauses245635_
                                     (map (lambda (_clause245555_)
                                            (let* ((___stx251673251674_
                                                    _clause245555_)
                                                   (_g245558245573_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         ___stx251673251674_)))))
                                              (let ((___kont251675251676_
                                                     (lambda (_L245601_
                                                              _L245602_
                                                              _L245603_)
                                                       (let* ((_body245623_
                                                               (map (lambda (_g245618245620_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g245618245620_
                                 _L245603_
                                 _$t245288_
                                 _method-calls243843_
                                 _slot-refs243844_
                                 _class-type-check243845_
                                 _struct-type-check1245481_
                                 _struct-type-check2245482_)))
                            _L245601_))
                      (__tmp253028
                       (let ()
                         (declare (not safe))
                         (cons _L245603_ _L245602_))))
                 (declare (not safe))
                 (cons __tmp253028 _body245623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251677251678_
                                                     (lambda ()
                                                       _clause245555_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx251673251674_))
                                                    (let ((_e245565245585_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx251673251674_))))
                                                      (let ((_tl245563245590_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e245565245585_)))
                    (_hd245564245588_
                     (let () (declare (not safe)) (##car _e245565245585_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245564245588_))
                    (let ((_e245568245593_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245564245588_))))
                      (let ((_tl245566245598_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245568245593_)))
                            (_hd245567245596_
                             (let ()
                               (declare (not safe))
                               (##car _e245568245593_))))
                        (___kont251675251676_
                         _tl245563245590_
                         _tl245566245598_
                         _hd245567245596_)))
                    (___kont251677251678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont251677251678_)))))
                                          (let ((__tmp253029
                                                 (lambda (_g245627245630_
                                                          _g245628245632_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g245627245630_
                                                           _g245628245632_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp253029
                                                    '()
                                                    _L245540_))))
                                    (__tmp253030
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses245635_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp253030 _L245035_)))
                           _clause245498245537_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop245493245521_
                                                     _target245490245516_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245484245503_
                                                   _g245485245506_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245484245503_ _g245485245506_)))))
                              (let ()
                                (declare (not safe))
                                (_g245484245503_ _g245485245506_))))))
                  (declare (not safe))
                  (_g245483245637_ _L245035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl245645_
                                                      (lambda (_specializer-lambda-expr245642_
                                                               _specializer-case-lambda-expr245643_)
                                                        (let ((__tmp253032
                                                               (let ((__tmp253033
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp253035
                                     (let ((__tmp253036
                                            (let ((__tmp253038
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L245037_ '())))
                                                  (__tmp253037
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr245642_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp253038 __tmp253037))))
                                       (declare (not safe))
                                       (cons __tmp253036 '())))
                                    (__tmp253034
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr245643_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp253035 __tmp253034))))
                         (declare (not safe))
                         (cons '%#let-values __tmp253033))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp253032 _stx243749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr245647_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr245479_
                                                         _struct-check-all245358_
                                                         _empty243848_)))
                                                     (_specializer-case-lambda-expr245649_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr245640_
                                                         _struct-check-all245358_
                                                         _empty243848_)))
                                                     (_specializer-impl245651_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl245645_
                                                         _specializer-lambda-expr245647_
                                                         _specializer-case-lambda-expr245649_)))
                                                     (_unchecked-specializer-lambda-expr245653_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243851_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr245479_
                                                             _empty243848_
                                                             _struct-check-all245358_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr245655_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243851_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr245640_
                                                             _empty243848_
                                                             _struct-check-all245358_))
                                                          '#f))
                                                     (_unchecked-specializer-impl245657_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?243851_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl245645_
                                                             _unchecked-specializer-lambda-expr245653_
                                                             _unchecked-specializer-case-lambda-expr245655_))
                                                          '#f))
                                                     (_specializer-impl245659_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl243755_
                                                         _$t245288_
                                                         _methods-bind245311_
                                                         _slots-bind245334_
                                                         _class-check-bind245356_
                                                         _struct-check-bind245380_
                                                         _specializer-impl245651_
                                                         _lifted-specializer-id245286_
                                                         _unchecked-specializer-impl245657_))))
                                                (let ((__tmp253040
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L243824_)))
                                                      (__tmp253039
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id245279_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp253040
                                                   '" => "
                                                   __tmp253039))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def243756_
                                                   _L243824_
                                                   _specializer-id245279_
                                                   _specializer-impl245659_
                                                   _lifted-specializer-id245286_
                                                   _unchecked-specializer-impl245657_)))))
                                        _hd244968245030_
                                        _hd244965245022_
                                        _hd244962245014_)
                                       (let ()
                                         (declare (not safe))
                                         (_g244944244974_ _g244945244977_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g244944244974_ _g244945244977_)))
                           (let ()
                             (declare (not safe))
                             (_g244944244974_ _g244945244977_)))
                       (let ()
                         (declare (not safe))
                         (_g244944244974_ _g244945244977_)))))
               (let () (declare (not safe)) (_g244944244974_ _g244945244977_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244944244974_
                                                      _g244945244977_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g244944244974_
                                              _g244945244977_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g244944244974_ _g244945244977_)))))
                           (let ()
                             (declare (not safe))
                             (_g244944244974_ _g244945244977_)))))
                   (let ()
                     (declare (not safe))
                     (_g244944244974_ _g244945244977_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g244944244974_
                                                      _g244945244977_))))))
                                       (declare (not safe))
                                       (_g244943245662_ _L243823_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L243823_))
                                         (let* ((_g245665245718_
                                                 (lambda (_g245666245715_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g245666245715_))))
                                                (_g245664246990_
                                                 (lambda (_g245666245721_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g245666245721_))
                                                       (let ((_e245674245723_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g245666245721_))))
                 (let ((_hd245673245726_
                        (let () (declare (not safe)) (##car _e245674245723_)))
                       (_tl245672245728_
                        (let () (declare (not safe)) (##cdr _e245674245723_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd245673245726_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd245673245726_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl245672245728_))
                               (let ((_e245677245731_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl245672245728_))))
                                 (let ((_hd245676245734_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e245677245731_)))
                                       (_tl245675245736_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e245677245731_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd245676245734_))
                                       (let ((_e245680245739_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd245676245734_))))
                                         (let ((_hd245679245742_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e245680245739_)))
                                               (_tl245678245744_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e245680245739_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd245679245742_))
                                               (let ((_e245683245747_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd245679245742_))))
                                                 (let ((_hd245682245750_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245683245747_)))
                                                       (_tl245681245752_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245683245747_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd245682245750_))
                                                       (let ((_e245686245755_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd245682245750_))))
                 (let ((_hd245685245758_
                        (let () (declare (not safe)) (##car _e245686245755_)))
                       (_tl245684245760_
                        (let () (declare (not safe)) (##cdr _e245686245755_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl245684245760_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl245681245752_))
                           (let ((_e245689245763_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl245681245752_))))
                             (let ((_hd245688245766_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245689245763_)))
                                   (_tl245687245768_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245689245763_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245688245766_))
                                   (let ((_e245692245771_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245688245766_))))
                                     (let ((_hd245691245774_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245692245771_)))
                                           (_tl245690245776_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245692245771_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd245691245774_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd245691245774_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl245690245776_))
                                                   (let ((_e245695245779_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl245690245776_))))
                                                     (let ((_hd245694245782_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e245695245779_)))
                                                           (_tl245693245784_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e245695245779_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd245694245782_))
                                                           (let ((_e245698245787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd245694245782_))))
                     (let ((_hd245697245790_
                            (let ()
                              (declare (not safe))
                              (##car _e245698245787_)))
                           (_tl245696245792_
                            (let ()
                              (declare (not safe))
                              (##cdr _e245698245787_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd245697245790_))
                           (let ((_e245701245795_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd245697245790_))))
                             (let ((_hd245700245798_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e245701245795_)))
                                   (_tl245699245800_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e245701245795_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd245700245798_))
                                   (let ((_e245704245803_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd245700245798_))))
                                     (let ((_hd245703245806_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e245704245803_)))
                                           (_tl245702245808_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e245704245803_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl245702245808_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl245699245800_))
                                               (let ((_e245707245811_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl245699245800_))))
                                                 (let ((_hd245706245814_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e245707245811_)))
                                                       (_tl245705245816_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e245707245811_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl245705245816_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl245696245792_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl245693245784_))
                       (let ((_e245710245819_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl245693245784_))))
                         (let ((_hd245709245822_
                                (let ()
                                  (declare (not safe))
                                  (##car _e245710245819_)))
                               (_tl245708245824_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e245710245819_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl245708245824_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl245687245768_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl245678245744_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl245675245736_))
                                           (let ((_e245713245827_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl245675245736_))))
                                             (let ((_hd245712245830_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e245713245827_)))
                                                   (_tl245711245832_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e245713245827_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl245711245832_))
                                                   ((lambda (_L245835_
                                                             _L245836_
                                                             _L245837_
                                                             _L245838_
                                                             _L245839_)
                                                      (let* ((_g245878245940_
                                                              (lambda (_g245879245937_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g245879245937_))))
                     (_g245877246987_
                      (lambda (_g245879245943_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g245879245943_))
                            (let ((_e245887245945_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g245879245943_))))
                              (let ((_hd245886245948_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245887245945_)))
                                    (_tl245885245950_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245887245945_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd245886245948_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd245886245948_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl245885245950_))
                                            (let ((_e245890245953_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl245885245950_))))
                                              (let ((_hd245889245956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245890245953_)))
                                                    (_tl245888245958_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245890245953_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245888245958_))
                                                    (let ((_e245893245961_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245888245958_))))
                                                      (let ((_hd245892245964_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245893245961_)))
                    (_tl245891245966_
                     (let () (declare (not safe)) (##cdr _e245893245961_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd245892245964_))
                    (let ((_e245896245969_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd245892245964_))))
                      (let ((_hd245895245972_
                             (let ()
                               (declare (not safe))
                               (##car _e245896245969_)))
                            (_tl245894245974_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245896245969_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd245895245972_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd245895245972_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl245894245974_))
                                    (let ((_e245899245977_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl245894245974_))))
                                      (let ((_hd245898245980_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245899245977_)))
                                            (_tl245897245982_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245899245977_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd245898245980_))
                                            (let ((_e245902245985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd245898245980_))))
                                              (let ((_hd245901245988_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e245902245985_)))
                                                    (_tl245900245990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e245902245985_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd245901245988_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd245901245988_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl245900245990_))
                                                            (let ((_e245905245993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl245900245990_))))
                      (let ((_hd245904245996_
                             (let ()
                               (declare (not safe))
                               (##car _e245905245993_)))
                            (_tl245903245998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e245905245993_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245903245998_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl245897245982_))
                                (let ((_e245908246001_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl245897245982_))))
                                  (let ((_hd245907246004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e245908246001_)))
                                        (_tl245906246006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e245908246001_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd245907246004_))
                                        (let ((_e245911246009_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd245907246004_))))
                                          (let ((_hd245910246012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e245911246009_)))
                                                (_tl245909246014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e245911246009_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd245910246012_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd245910246012_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl245909246014_))
                                                        (let ((_e245914246017_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl245909246014_))))
                  (let ((_hd245913246020_
                         (let () (declare (not safe)) (##car _e245914246017_)))
                        (_tl245912246022_
                         (let ()
                           (declare (not safe))
                           (##cdr _e245914246017_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl245912246022_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl245906246006_))
                            (let ((_e245917246025_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl245906246006_))))
                              (let ((_hd245916246028_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e245917246025_)))
                                    (_tl245915246030_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e245917246025_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd245916246028_))
                                    (let ((_e245920246033_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd245916246028_))))
                                      (let ((_hd245919246036_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e245920246033_)))
                                            (_tl245918246038_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e245920246033_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd245919246036_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd245919246036_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl245918246038_))
                                                    (let ((_e245923246041_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl245918246038_))))
                                                      (let ((_hd245922246044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e245923246041_)))
                    (_tl245921246046_
                     (let () (declare (not safe)) (##cdr _e245923246041_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl245921246046_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl245915246030_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl245915246030_))
                                  '1)
                            (let ((_g252916_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl245915246030_
                                      '1))))
                              (begin
                                (let ((_g252917_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252916_)
                                             (##vector-length _g252916_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252917_ 2)))
                                      (error "Context expects 2 values"
                                             _g252917_)))
                                (let ((_target245924246049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252916_ 0)))
                                      (_tl245926246051_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252916_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl245926246051_))
                                      (let ((_e245935246054_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl245926246051_))))
                                        (let ((_hd245934246057_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e245935246054_)))
                                              (_tl245933246059_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e245935246054_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl245933246059_))
                                              (letrec ((_loop245927246062_
                                                        (lambda (_hd245925246065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref245931246067_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd245925246065_))
                      (let ((_e245928246070_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd245925246065_))))
                        (let ((_lp-hd245929246073_
                               (let ()
                                 (declare (not safe))
                                 (##car _e245928246070_)))
                              (_lp-tl245930246075_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e245928246070_))))
                          (let ((__tmp253003
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd245929246073_
                                         _kw-ref245931246067_))))
                            (declare (not safe))
                            (_loop245927246062_
                             _lp-tl245930246075_
                             __tmp253003))))
                      (let ((_kw-ref245932246078_
                             (reverse _kw-ref245931246067_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl245891245966_))
                            ((lambda (_L246081_
                                      _L246082_
                                      _L246083_
                                      _L246084_
                                      _L246085_)
                               (let* ((_kw-count246136_
                                       (length (let ((__tmp252918
                                                      (lambda (_g246128246131_
                                                               _g246129246133_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g246128246131_
                                                                _g246129246133_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp252918
                                                         '()
                                                         _L246082_))))
                                      (_self-index246138_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count246136_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L245837_))
                                     (let* ((_g246141246155_
                                             (lambda (_g246142246152_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g246142246152_))))
                                            (_g246140246326_
                                             (lambda (_g246142246158_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g246142246158_))
                                                   (let ((_e246147246160_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g246142246158_))))
                                                     (let ((_hd246146246163_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e246147246160_)))
                                                           (_tl246145246165_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e246147246160_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246145246165_))
                                                           (let ((_e246150246168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246145246165_))))
                     (let ((_hd246149246171_
                            (let ()
                              (declare (not safe))
                              (##car _e246150246168_)))
                           (_tl246148246173_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246150246168_))))
                       ((lambda (_L246176_ _L246177_)
                          (let ((_self246193_
                                 (list-ref _L246177_ _self-index246138_)))
                            (for-each
                             (lambda (_g246194246196_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g246194246196_
                                  _self246193_
                                  _method-calls243843_
                                  _slot-refs243844_
                                  _class-type-check243845_
                                  _struct-type-check243846_
                                  _struct-type-assert243847_)))
                             _L246176_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?243850_))
                                _stx243749_
                                (let* ((_specializer-id246205_
                                        (let* ((_id246199_
                                                (let ((__tmp252969
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L243824_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp252969
                                                   '"::specialize")))
                                               (_specializer-id246202_
                                                (let ((__tmp252970
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx243749_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id246199_
                                                   __tmp252970))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id246202_))
                                          _specializer-id246202_))
                                       (_lifted-specializer-id246212_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?243852_))
                                            (let* ((_id246207_
                                                    (let ((__tmp252971
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243824_))))
                                                      (declare (not safe))
                                                      (make-symbol__1
                                                       __tmp252971
                                                       '"::specialize::unchecked")))
                                                   (_lifted-specializer-id246209_
                                                    (let ((__tmp252972
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx243749_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id246207_
                                                       __tmp252972))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id246209_))
                                              _lifted-specializer-id246209_)
                                            '#f))
                                       (_$t246214_
                                        (let ((__tmp252973 (gensym '__t)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp252973)))
                                       (_methods246216_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls243843_)))
                                       (_$methods246220_
                                        (map (lambda (_id246218_)
                                               (let ((__tmp252974
                                                      (gensym _id246218_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252974)))
                                             _methods246216_))
                                       (_g252975_
                                        (for-each
                                         (lambda (_g246221246224_
                                                  _g246222246226_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls243843_
                                              _g246221246224_
                                              _g246222246226_)))
                                         _methods246216_
                                         _$methods246220_))
                                       (_methods-bind246237_
                                        (map (lambda (_g246229246232_
                                                      _g246230246234_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind243751_
                                                  _$t246214_
                                                  _g246229246232_
                                                  _g246230246234_)))
                                             _methods246216_
                                             _$methods246220_))
                                       (_slots246239_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs243844_)))
                                       (_$slots246243_
                                        (map (lambda (_id246241_)
                                               (let ((__tmp252976
                                                      (gensym _id246241_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp252976)))
                                             _slots246239_))
                                       (_g252977_
                                        (for-each
                                         (lambda (_g246244246247_
                                                  _g246245246249_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs243844_
                                              _g246244246247_
                                              _g246245246249_)))
                                         _slots246239_
                                         _$slots246243_))
                                       (_slots-bind246260_
                                        (map (lambda (_g246252246255_
                                                      _g246253246257_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind243752_
                                                  _$t246214_
                                                  _g246252246255_
                                                  _g246253246257_)))
                                             _slots246239_
                                             _$slots246243_))
                                       (_class-check246262_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _class-type-check243845_)))
                                       (_$class-check246265_
                                        (map (lambda (_g252978_)
                                               (let ((__tmp252979
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252979)))
                                             _class-check246262_))
                                       (_g252980_
                                        (for-each
                                         (lambda (_g246266246269_
                                                  _g246267246271_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check243845_
                                              _g246266246269_
                                              _g246267246271_)))
                                         _class-check246262_
                                         _$class-check246265_))
                                       (_class-check-bind246282_
                                        (map (lambda (_g246274246277_
                                                      _g246275246279_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind243753_
                                                  _$t246214_
                                                  _g246274246277_
                                                  _g246275246279_)))
                                             _class-check246262_
                                             _$class-check246265_))
                                       (_struct-check-all246284_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check243846_
                                           _struct-type-assert243847_)))
                                       (_struct-check246286_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys
                                           _struct-check-all246284_)))
                                       (_$struct-check246289_
                                        (map (lambda (_g252981_)
                                               (let ((__tmp252982
                                                      (gensym '__class)))
                                                 (declare (not safe))
                                                 (make-symbol__0 __tmp252982)))
                                             _struct-check246286_))
                                       (_g252983_
                                        (for-each
                                         (lambda (_g246290246293_
                                                  _g246291246295_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all246284_
                                              _g246290246293_
                                              _g246291246295_)))
                                         _struct-check246286_
                                         _$struct-check246289_))
                                       (_struct-check-bind246306_
                                        (map (lambda (_g246298246301_
                                                      _g246299246303_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind243754_
                                                  _$t246214_
                                                  _g246298246301_
                                                  _g246299246303_)))
                                             _struct-check246286_
                                             _$struct-check246289_))
                                       (_make-specializer-impl246317_
                                        (lambda (_struct-type-check1246308_
                                                 _struct-type-check2246309_)
                                          (let* ((_specializer-body246315_
                                                  (map (lambda (_g246310246312_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g246310246312_
                                                            _self246193_
                                                            _$t246214_
                                                            _method-calls243843_
                                                            _slot-refs243844_
                                                            _class-type-check243845_
                                                            _struct-type-check1246308_
                                                            _struct-type-check2246309_)))
                                                       _L246176_))
                                                 (__tmp252984
                                                  (let ((__tmp252985
                                                         (let ((__tmp252987
                                                                (let ((__tmp252988
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp253000
                                      (let ()
                                        (declare (not safe))
                                        (cons _L245839_ '())))
                                     (__tmp252989
                                      (let ((__tmp252990
                                             (let ((__tmp252991
                                                    (let ((__tmp252993
                                                           (let ((__tmp252994
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252999
                                 (let ()
                                   (declare (not safe))
                                   (cons _L245838_ '())))
                                (__tmp252995
                                 (let ((__tmp252996
                                        (let ((__tmp252997
                                               (let ((__tmp252998
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L246177_
                                                              _specializer-body246315_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda
                                                       __tmp252998))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp252997
                                           _L245837_))))
                                   (declare (not safe))
                                   (cons __tmp252996 '()))))
                            (declare (not safe))
                            (cons __tmp252999 __tmp252995))))
                     (declare (not safe))
                     (cons __tmp252994 '())))
                  (__tmp252992
                   (let () (declare (not safe)) (cons _L245836_ '()))))
              (declare (not safe))
              (cons __tmp252993 __tmp252992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp252991))))
                                        (declare (not safe))
                                        (cons __tmp252990 '()))))
                                 (declare (not safe))
                                 (cons __tmp253000 __tmp252989))))
                          (declare (not safe))
                          (cons __tmp252988 '())))
                       (__tmp252986
                        (let () (declare (not safe)) (cons _L245835_ '()))))
                   (declare (not safe))
                   (cons __tmp252987 __tmp252986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp252985))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp252984
                                             _stx243749_))))
                                       (_specializer-impl246319_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl246317_
                                           _struct-check-all246284_
                                           _empty243848_)))
                                       (_unchecked-specializer-impl246321_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?243851_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl246317_
                                               _empty243848_
                                               _struct-check-all246284_))
                                            '#f))
                                       (_specializer-impl246323_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl243755_
                                           _$t246214_
                                           _methods-bind246237_
                                           _slots-bind246260_
                                           _class-check-bind246282_
                                           _struct-check-bind246306_
                                           _specializer-impl246319_
                                           _lifted-specializer-id246212_
                                           _unchecked-specializer-impl246321_))))
                                  (let ((__tmp253002
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L243824_)))
                                        (__tmp253001
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id246205_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp253002
                                     '" => "
                                     __tmp253001))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def243756_
                                     _L243824_
                                     _specializer-id246205_
                                     _specializer-impl246323_
                                     _lifted-specializer-id246212_
                                     _unchecked-specializer-impl246321_))))))
                        _tl246148246173_
                        _hd246149246171_)))
                   (let ()
                     (declare (not safe))
                     (_g246141246155_ _g246142246158_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g246141246155_
                                                      _g246142246158_))))))
                                       (declare (not safe))
                                       (_g246140246326_ _L245837_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L245837_))
                                         (let* ((_g246329246359_
                                                 (lambda (_g246330246356_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g246330246356_))))
                                                (_g246328246984_
                                                 (lambda (_g246330246362_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g246330246362_))
                                                       (let ((_e246336246364_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g246330246362_))))
                 (let ((_hd246335246367_
                        (let () (declare (not safe)) (##car _e246336246364_)))
                       (_tl246334246369_
                        (let () (declare (not safe)) (##cdr _e246336246364_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl246334246369_))
                       (let ((_e246339246372_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl246334246369_))))
                         (let ((_hd246338246375_
                                (let ()
                                  (declare (not safe))
                                  (##car _e246339246372_)))
                               (_tl246337246377_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e246339246372_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd246338246375_))
                               (let ((_e246342246380_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd246338246375_))))
                                 (let ((_hd246341246383_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e246342246380_)))
                                       (_tl246340246385_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e246342246380_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd246341246383_))
                                       (let ((_e246345246388_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd246341246383_))))
                                         (let ((_hd246344246391_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e246345246388_)))
                                               (_tl246343246393_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e246345246388_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd246344246391_))
                                               (let ((_e246348246396_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd246344246391_))))
                                                 (let ((_hd246347246399_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e246348246396_)))
                                                       (_tl246346246401_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e246348246396_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl246346246401_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl246343246393_))
                                                           (let ((_e246351246404_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl246343246393_))))
                     (let ((_hd246350246407_
                            (let ()
                              (declare (not safe))
                              (##car _e246351246404_)))
                           (_tl246349246409_
                            (let ()
                              (declare (not safe))
                              (##cdr _e246351246404_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl246349246409_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl246340246385_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl246337246377_))
                                   (let ((_e246354246412_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl246337246377_))))
                                     (let ((_hd246353246415_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e246354246412_)))
                                           (_tl246352246417_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e246354246412_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl246352246417_))
                                           ((lambda (_L246420_
                                                     _L246421_
                                                     _L246422_)
                                              (let* ((_g246445246459_
                                                      (lambda (_g246446246456_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246446246456_))))
                                                     (_g246444246500_
                                                      (lambda (_g246446246462_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246446246462_))
                                                            (let ((_e246451246464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246446246462_))))
                      (let ((_hd246450246467_
                             (let ()
                               (declare (not safe))
                               (##car _e246451246464_)))
                            (_tl246449246469_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246451246464_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl246449246469_))
                            (let ((_e246454246472_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl246449246469_))))
                              (let ((_hd246453246475_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246454246472_)))
                                    (_tl246452246477_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246454246472_))))
                                ((lambda (_L246480_ _L246481_)
                                   (let ((_self246494_
                                          (list-ref
                                           _L246481_
                                           _self-index246138_)))
                                     (for-each
                                      (lambda (_g246495246497_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g246495246497_
                                           _self246494_
                                           _method-calls243843_
                                           _slot-refs243844_
                                           _class-type-check243845_
                                           _struct-type-check243846_
                                           _struct-type-assert243847_)))
                                      _L246480_)))
                                 _tl246452246477_
                                 _hd246453246475_)))
                            (let ()
                              (declare (not safe))
                              (_g246445246459_ _g246446246462_)))))
                    (let ()
                      (declare (not safe))
                      (_g246445246459_ _g246446246462_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246444246500_ _L246421_))
                                              (let* ((_g246503246522_
                                                      (lambda (_g246504246519_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g246504246519_))))
                                                     (_g246502246627_
                                                      (lambda (_g246504246525_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g246504246525_))
                                                            (let ((_e246508246527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g246504246525_))))
                      (let ((_hd246507246530_
                             (let ()
                               (declare (not safe))
                               (##car _e246508246527_)))
                            (_tl246506246532_
                             (let ()
                               (declare (not safe))
                               (##cdr _e246508246527_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl246506246532_))
                            (let ((_g252919_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl246506246532_
                                      '0))))
                              (begin
                                (let ((_g252920_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g252919_)
                                             (##vector-length _g252919_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g252920_ 2)))
                                      (error "Context expects 2 values"
                                             _g252920_)))
                                (let ((_target246509246535_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252919_ 0)))
                                      (_tl246511246537_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g252919_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl246511246537_))
                                      (letrec ((_loop246512246540_
                                                (lambda (_hd246510246543_
                                                         _clause246516246545_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd246510246543_))
                                                      (let ((_e246513246548_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd246510246543_))))
                (let ((_lp-hd246514246551_
                       (let () (declare (not safe)) (##car _e246513246548_)))
                      (_lp-tl246515246553_
                       (let () (declare (not safe)) (##cdr _e246513246548_))))
                  (let ((__tmp252922
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd246514246551_ _clause246516246545_))))
                    (declare (not safe))
                    (_loop246512246540_ _lp-tl246515246553_ __tmp252922))))
              (let ((_clause246517246556_ (reverse _clause246516246545_)))
                ((lambda (_L246559_)
                   (for-each
                    (lambda (_clause246572_)
                      (let* ((_g246574246585_
                              (lambda (_g246575246582_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g246575246582_))))
                             (_g246573246617_
                              (lambda (_g246575246588_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g246575246588_))
                                    (let ((_e246580246590_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g246575246588_))))
                                      (let ((_hd246579246593_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e246580246590_)))
                                            (_tl246578246595_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e246580246590_))))
                                        ((lambda (_L246598_ _L246599_)
                                           (let ((_self246611_
                                                  (list-ref
                                                   _L246599_
                                                   _self-index246138_)))
                                             (for-each
                                              (lambda (_g246612246614_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g246612246614_
                                                   _self246611_
                                                   _method-calls243843_
                                                   _slot-refs243844_
                                                   _class-type-check243845_
                                                   _struct-type-check243846_
                                                   _struct-type-assert243847_)))
                                              _L246598_)))
                                         _tl246578246595_
                                         _hd246579246593_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g246574246585_ _g246575246588_))))))
                        (declare (not safe))
                        (_g246573246617_ _clause246572_)))
                    (let ((__tmp252921
                           (lambda (_g246619246622_ _g246620246624_)
                             (let ()
                               (declare (not safe))
                               (cons _g246619246622_ _g246620246624_)))))
                      (declare (not safe))
                      (foldr1 __tmp252921 '() _L246559_))))
                 _clause246517246556_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop246512246540_
                                           _target246509246535_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g246503246522_ _g246504246525_))))))
                            (let ()
                              (declare (not safe))
                              (_g246503246522_ _g246504246525_)))))
                    (let ()
                      (declare (not safe))
                      (_g246503246522_ _g246504246525_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g246502246627_ _L246420_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?243850_))
                                                  _stx243749_
                                                  (let* ((_specializer-id246636_
                                                          (let* ((_id246630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp252923
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L243824_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp252923 '"::specialize")))
                         (_specializer-id246633_
                          (let ((__tmp252924
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx243749_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id246630_ __tmp252924))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id246633_))
                    _specializer-id246633_))
                 (_lifted-specializer-id246643_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?243852_))
                      (let* ((_id246638_
                              (let ((__tmp252925
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _L243824_))))
                                (declare (not safe))
                                (make-symbol__1
                                 __tmp252925
                                 '"::specialize::unchecked")))
                             (_lifted-specializer-id246640_
                              (let ((__tmp252926
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx243749_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id246638_
                                 __tmp252926))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id246640_))
                        _lifted-specializer-id246640_)
                      '#f))
                 (_$t246645_
                  (let ((__tmp252927 (gensym '__t)))
                    (declare (not safe))
                    (make-symbol__0 __tmp252927)))
                 (_methods246647_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls243843_)))
                 (_$methods246651_
                  (map (lambda (_id246649_)
                         (let ((__tmp252928 (gensym _id246649_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252928)))
                       _methods246647_))
                 (_g252929_
                  (for-each
                   (lambda (_g246652246655_ _g246653246657_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls243843_
                        _g246652246655_
                        _g246653246657_)))
                   _methods246647_
                   _$methods246651_))
                 (_methods-bind246668_
                  (map (lambda (_g246660246663_ _g246661246665_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind243751_
                            _$t246645_
                            _g246660246663_
                            _g246661246665_)))
                       _methods246647_
                       _$methods246651_))
                 (_slots246670_
                  (let () (declare (not safe)) (hash-keys _slot-refs243844_)))
                 (_$slots246674_
                  (map (lambda (_id246672_)
                         (let ((__tmp252930 (gensym _id246672_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp252930)))
                       _slots246670_))
                 (_g252931_
                  (for-each
                   (lambda (_g246675246678_ _g246676246680_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs243844_
                        _g246675246678_
                        _g246676246680_)))
                   _slots246670_
                   _$slots246674_))
                 (_slots-bind246691_
                  (map (lambda (_g246683246686_ _g246684246688_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind243752_
                            _$t246645_
                            _g246683246686_
                            _g246684246688_)))
                       _slots246670_
                       _$slots246674_))
                 (_class-check246693_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check243845_)))
                 (_$class-check246696_
                  (map (lambda (_g252932_)
                         (let ((__tmp252933 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252933)))
                       _class-check246693_))
                 (_g252934_
                  (for-each
                   (lambda (_g246697246700_ _g246698246702_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check243845_
                        _g246697246700_
                        _g246698246702_)))
                   _class-check246693_
                   _$class-check246696_))
                 (_class-check-bind246713_
                  (map (lambda (_g246705246708_ _g246706246710_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind243753_
                            _$t246645_
                            _g246705246708_
                            _g246706246710_)))
                       _class-check246693_
                       _$class-check246696_))
                 (_struct-check-all246715_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check243846_
                     _struct-type-assert243847_)))
                 (_struct-check246717_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all246715_)))
                 (_$struct-check246720_
                  (map (lambda (_g252935_)
                         (let ((__tmp252936 (gensym '__class)))
                           (declare (not safe))
                           (make-symbol__0 __tmp252936)))
                       _struct-check246717_))
                 (_g252937_
                  (for-each
                   (lambda (_g246721246724_ _g246722246726_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all246715_
                        _g246721246724_
                        _g246722246726_)))
                   _struct-check246717_
                   _$struct-check246720_))
                 (_struct-check-bind246737_
                  (map (lambda (_g246729246732_ _g246730246734_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind243754_
                            _$t246645_
                            _g246729246732_
                            _g246730246734_)))
                       _struct-check246717_
                       _$struct-check246720_))
                 (_make-specializer-lambda-expr246823_
                  (lambda (_struct-type-check1246739_
                           _struct-type-check2246740_)
                    (let* ((_g246742246756_
                            (lambda (_g246743246753_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246743246753_))))
                           (_g246741246820_
                            (lambda (_g246743246759_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246743246759_))
                                  (let ((_e246748246761_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246743246759_))))
                                    (let ((_hd246747246764_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246748246761_)))
                                          (_tl246746246766_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246748246761_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl246746246766_))
                                          (let ((_e246751246769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl246746246766_))))
                                            (let ((_hd246750246772_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e246751246769_)))
                                                  (_tl246749246774_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e246751246769_))))
                                              ((lambda (_L246777_ _L246778_)
                                                 (let* ((_self246811_
                                                         (list-ref
                                                          _L246778_
                                                          _self-index246138_))
                                                        (_body246817_
                                                         (map (lambda (_g246812246814_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g246812246814_
                           _self246811_
                           _$t246645_
                           _method-calls243843_
                           _slot-refs243844_
                           _class-type-check243845_
                           _struct-type-check1246739_
                           _struct-type-check2246740_)))
                      _L246777_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp252938
                                                          (let ((__tmp252939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L246778_ _body246817_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp252939))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp252938
                                                      _L246421_))))
                                               _tl246749246774_
                                               _hd246750246772_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g246742246756_
                                             _g246743246759_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246742246756_ _g246743246759_))))))
                      (declare (not safe))
                      (_g246741246820_ _L246421_))))
                 (_make-specializer-case-lambda-expr246962_
                  (lambda (_struct-type-check1246825_
                           _struct-type-check2246826_)
                    (let* ((_g246828246847_
                            (lambda (_g246829246844_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g246829246844_))))
                           (_g246827246959_
                            (lambda (_g246829246850_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g246829246850_))
                                  (let ((_e246833246852_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g246829246850_))))
                                    (let ((_hd246832246855_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e246833246852_)))
                                          (_tl246831246857_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e246833246852_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl246831246857_))
                                          (let ((_g252940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl246831246857_
                                                    '0))))
                                            (begin
                                              (let ((_g252941_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g252940_)
                                                           (##vector-length
                                                            _g252940_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g252941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g252941_)))
                                              (let ((_target246834246860_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252940_
                                                        0)))
                                                    (_tl246836246862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g252940_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl246836246862_))
                                                    (letrec ((_loop246837246865_
                                                              (lambda (_hd246835246868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause246841246870_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd246835246868_))
                            (let ((_e246838246873_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd246835246868_))))
                              (let ((_lp-hd246839246876_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e246838246873_)))
                                    (_lp-tl246840246878_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e246838246873_))))
                                (let ((__tmp252944
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd246839246876_
                                               _clause246841246870_))))
                                  (declare (not safe))
                                  (_loop246837246865_
                                   _lp-tl246840246878_
                                   __tmp252944))))
                            (let ((_clause246842246881_
                                   (reverse _clause246841246870_)))
                              ((lambda (_L246884_)
                                 (let* ((_clauses246957_
                                         (map (lambda (_clause246899_)
                                                (let* ((_g246901246912_
                                                        (lambda (_g246902246909_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g246902246909_))))
                                                       (_g246900246947_
                                                        (lambda (_g246902246915_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g246902246915_))
                      (let ((_e246907246917_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g246902246915_))))
                        (let ((_hd246906246920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e246907246917_)))
                              (_tl246905246922_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e246907246917_))))
                          ((lambda (_L246925_ _L246926_)
                             (let* ((_self246938_
                                     (list-ref _L246926_ _self-index246138_))
                                    (_body246944_
                                     (map (lambda (_g246939246941_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g246939246941_
                                               _self246938_
                                               _$t246645_
                                               _method-calls243843_
                                               _slot-refs243844_
                                               _class-type-check243845_
                                               _struct-type-check1246825_
                                               _struct-type-check2246826_)))
                                          _L246925_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L246926_ _body246944_))))
                           _tl246905246922_
                           _hd246906246920_)))
                      (let ()
                        (declare (not safe))
                        (_g246901246912_ _g246902246915_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g246900246947_
                                                   _clause246899_)))
                                              (let ((__tmp252942
                                                     (lambda (_g246949246952_
                                                              _g246950246954_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g246949246952_
                                                               _g246950246954_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp252942
                                                        '()
                                                        _L246884_))))
                                        (__tmp252943
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses246957_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp252943
                                    _L246420_)))
                               _clause246842246881_))))))
              (let ()
                (declare (not safe))
                (_loop246837246865_ _target246834246860_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g246828246847_
                                                       _g246829246850_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g246828246847_
                                             _g246829246850_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g246828246847_ _g246829246850_))))))
                      (declare (not safe))
                      (_g246827246959_ _L246420_))))
                 (_make-specializer-impl246967_
                  (lambda (_specializer-lambda-expr246964_
                           _specializer-case-lambda-expr246965_)
                    (let ((__tmp252945
                           (let ((__tmp252946
                                  (let ((__tmp252948
                                         (let ((__tmp252949
                                                (let ((__tmp252966
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L245839_ '())))
                                                      (__tmp252950
                                                       (let ((__tmp252951
                                                              (let ((__tmp252952
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp252954
                                    (let ((__tmp252955
                                           (let ((__tmp252965
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L245838_ '())))
                                                 (__tmp252956
                                                  (let ((__tmp252957
                                                         (let ((__tmp252958
                                                                (let ((__tmp252959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp252961
                                      (let ((__tmp252962
                                             (let ((__tmp252964
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L246422_ '())))
                                                   (__tmp252963
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr246964_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp252964
                                                     __tmp252963))))
                                        (declare (not safe))
                                        (cons __tmp252962 '())))
                                     (__tmp252960
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr246965_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp252961 __tmp252960))))
                          (declare (not safe))
                          (cons '%#let-values __tmp252959))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp252958 _stx243749_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp252957 '()))))
                                             (declare (not safe))
                                             (cons __tmp252965 __tmp252956))))
                                      (declare (not safe))
                                      (cons __tmp252955 '())))
                                   (__tmp252953
                                    (let ()
                                      (declare (not safe))
                                      (cons _L245836_ '()))))
                               (declare (not safe))
                               (cons __tmp252954 __tmp252953))))
                        (declare (not safe))
                        (cons '%#let-values __tmp252952))))
                 (declare (not safe))
                 (cons __tmp252951 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp252966
                                                        __tmp252950))))
                                           (declare (not safe))
                                           (cons __tmp252949 '())))
                                        (__tmp252947
                                         (let ()
                                           (declare (not safe))
                                           (cons _L245835_ '()))))
                                    (declare (not safe))
                                    (cons __tmp252948 __tmp252947))))
                             (declare (not safe))
                             (cons '%#let-values __tmp252946))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp252945 _stx243749_))))
                 (_specializer-lambda-expr246969_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr246823_
                     _struct-check-all246715_
                     _empty243848_)))
                 (_specializer-case-lambda-expr246971_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr246962_
                     _struct-check-all246715_
                     _empty243848_)))
                 (_specializer-impl246973_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl246967_
                     _specializer-lambda-expr246969_
                     _specializer-case-lambda-expr246971_)))
                 (_unchecked-specializer-lambda-expr246975_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243851_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr246823_
                         _empty243848_
                         _struct-check-all246715_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr246977_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243851_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr246962_
                         _empty243848_
                         _struct-check-all246715_))
                      '#f))
                 (_unchecked-specializer-impl246979_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?243851_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl246967_
                         _unchecked-specializer-lambda-expr246975_
                         _unchecked-specializer-case-lambda-expr246977_))
                      '#f))
                 (_specializer-impl246981_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl243755_
                     _$t246645_
                     _methods-bind246668_
                     _slots-bind246691_
                     _class-check-bind246713_
                     _struct-check-bind246737_
                     _specializer-impl246973_
                     _lifted-specializer-id246643_
                     _unchecked-specializer-impl246979_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp252968
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L243824_)))
                                                          (__tmp252967
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id246636_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp252968
                                                       '" => "
                                                       __tmp252967))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def243756_
                                                       _L243824_
                                                       _specializer-id246636_
                                                       _specializer-impl246981_
                                                       _lifted-specializer-id246643_
                                                       _unchecked-specializer-impl246979_)))))
                                            _hd246353246415_
                                            _hd246350246407_
                                            _hd246347246399_)
                                           (let ()
                                             (declare (not safe))
                                             (_g246329246359_
                                              _g246330246362_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g246329246359_ _g246330246362_)))
                               (let ()
                                 (declare (not safe))
                                 (_g246329246359_ _g246330246362_)))
                           (let ()
                             (declare (not safe))
                             (_g246329246359_ _g246330246362_)))))
                   (let ()
                     (declare (not safe))
                     (_g246329246359_ _g246330246362_)))
               (let ()
                 (declare (not safe))
                 (_g246329246359_ _g246330246362_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g246329246359_
                                                  _g246330246362_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g246329246359_ _g246330246362_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g246329246359_ _g246330246362_)))))
                       (let ()
                         (declare (not safe))
                         (_g246329246359_ _g246330246362_)))))
               (let ()
                 (declare (not safe))
                 (_g246329246359_ _g246330246362_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g246328246984_ _L245837_))
                                         _stx243749_))))
                             _hd245934246057_
                             _kw-ref245932246078_
                             _hd245922246044_
                             _hd245913246020_
                             _hd245904245996_)
                            (let ()
                              (declare (not safe))
                              (_g245878245940_ _g245879245943_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop245927246062_
                                                   _target245924246049_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g245878245940_
                                                 _g245879245943_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g245878245940_ _g245879245943_))))))
                            (let ()
                              (declare (not safe))
                              (_g245878245940_ _g245879245943_)))
                        (let ()
                          (declare (not safe))
                          (_g245878245940_ _g245879245943_)))
                    (let ()
                      (declare (not safe))
                      (_g245878245940_ _g245879245943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245878245940_
                                                       _g245879245943_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245878245940_
                                                   _g245879245943_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g245878245940_
                                               _g245879245943_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245878245940_ _g245879245943_)))))
                            (let ()
                              (declare (not safe))
                              (_g245878245940_ _g245879245943_)))
                        (let ()
                          (declare (not safe))
                          (_g245878245940_ _g245879245943_)))))
                (let ()
                  (declare (not safe))
                  (_g245878245940_ _g245879245943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245878245940_
                                                       _g245879245943_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g245878245940_
                                                   _g245879245943_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g245878245940_ _g245879245943_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g245878245940_ _g245879245943_)))
                            (let ()
                              (declare (not safe))
                              (_g245878245940_ _g245879245943_)))))
                    (let ()
                      (declare (not safe))
                      (_g245878245940_ _g245879245943_)))
                (let ()
                  (declare (not safe))
                  (_g245878245940_ _g245879245943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245878245940_
                                                       _g245879245943_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245878245940_
                                               _g245879245943_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g245878245940_ _g245879245943_)))
                                (let ()
                                  (declare (not safe))
                                  (_g245878245940_ _g245879245943_)))
                            (let ()
                              (declare (not safe))
                              (_g245878245940_ _g245879245943_)))))
                    (let ()
                      (declare (not safe))
                      (_g245878245940_ _g245879245943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g245878245940_
                                                       _g245879245943_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g245878245940_
                                               _g245879245943_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g245878245940_ _g245879245943_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g245878245940_ _g245879245943_)))))
                            (let ()
                              (declare (not safe))
                              (_g245878245940_ _g245879245943_))))))
                (declare (not safe))
                (_g245877246987_ _L245836_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd245712245830_
                                                    _hd245709245822_
                                                    _hd245706245814_
                                                    _hd245703245806_
                                                    _hd245685245758_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245665245718_
                                                      _g245666245721_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g245665245718_
                                              _g245666245721_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g245665245718_ _g245666245721_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g245665245718_ _g245666245721_)))
                               (let ()
                                 (declare (not safe))
                                 (_g245665245718_ _g245666245721_)))))
                       (let ()
                         (declare (not safe))
                         (_g245665245718_ _g245666245721_)))
                   (let ()
                     (declare (not safe))
                     (_g245665245718_ _g245666245721_)))
               (let ()
                 (declare (not safe))
                 (_g245665245718_ _g245666245721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245665245718_
                                                  _g245666245721_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245665245718_
                                              _g245666245721_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245665245718_ _g245666245721_)))))
                           (let ()
                             (declare (not safe))
                             (_g245665245718_ _g245666245721_)))))
                   (let ()
                     (declare (not safe))
                     (_g245665245718_ _g245666245721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g245665245718_
                                                      _g245666245721_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245665245718_
                                                  _g245666245721_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g245665245718_
                                              _g245666245721_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g245665245718_ _g245666245721_)))))
                           (let ()
                             (declare (not safe))
                             (_g245665245718_ _g245666245721_)))
                       (let ()
                         (declare (not safe))
                         (_g245665245718_ _g245666245721_)))))
               (let ()
                 (declare (not safe))
                 (_g245665245718_ _g245666245721_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g245665245718_
                                                  _g245666245721_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g245665245718_ _g245666245721_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g245665245718_ _g245666245721_)))
                           (let ()
                             (declare (not safe))
                             (_g245665245718_ _g245666245721_)))
                       (let ()
                         (declare (not safe))
                         (_g245665245718_ _g245666245721_)))))
               (let ()
                 (declare (not safe))
                 (_g245665245718_ _g245666245721_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g245664246990_ _L243823_))
                                         _stx243749_))))))))
                  (___kont251697251698_ (lambda () _stx243749_)))
              (let ((___match251726251727_
                     (lambda (_e243765243791_
                              _hd243764243794_
                              _tl243763243796_
                              _e243768243799_
                              _hd243767243802_
                              _tl243766243804_
                              _e243771243807_
                              _hd243770243810_
                              _tl243769243812_
                              _e243774243815_
                              _hd243773243818_
                              _tl243772243820_)
                       (let ((_L243823_ _hd243773243818_)
                             (_L243824_ _hd243770243810_))
                         (if (let ((__tmp253085
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L243824_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp253085))
                             (___kont251695251696_ _L243823_ _L243824_)
                             (___kont251697251698_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx251693251694_))
                    (let ((_e243765243791_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx251693251694_))))
                      (let ((_tl243763243796_
                             (let ()
                               (declare (not safe))
                               (##cdr _e243765243791_)))
                            (_hd243764243794_
                             (let ()
                               (declare (not safe))
                               (##car _e243765243791_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl243763243796_))
                            (let ((_e243768243799_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl243763243796_))))
                              (let ((_tl243766243804_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e243768243799_)))
                                    (_hd243767243802_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e243768243799_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd243767243802_))
                                    (let ((_e243771243807_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd243767243802_))))
                                      (let ((_tl243769243812_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e243771243807_)))
                                            (_hd243770243810_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e243771243807_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl243769243812_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl243766243804_))
                                                (let ((_e243774243815_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl243766243804_))))
                                                  (let ((_tl243772243820_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e243774243815_)))
                                                        (_hd243773243818_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e243774243815_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl243772243820_))
                                                        (___match251726251727_
                                                         _e243765243791_
                                                         _hd243764243794_
                                                         _tl243763243796_
                                                         _e243768243799_
                                                         _hd243767243802_
                                                         _tl243766243804_
                                                         _e243771243807_
                                                         _hd243770243810_
                                                         _tl243769243812_
                                                         _e243774243815_
                                                         _hd243773243818_
                                                         _tl243772243820_)
                                                        (___kont251697251698_))))
                                                (___kont251697251698_))
                                            (___kont251697251698_))))
                                    (___kont251697251698_))))
                            (___kont251697251698_))))
                    (___kont251697251698_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx242725_
               _self242726_
               _methods242727_
               _slots242728_
               _class-check242729_
               _struct-check242730_
               _struct-assert242731_)
        (let* ((___stx251729251730_ _stx242725_)
               (_g242739242961_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx251729251730_)))))
          (let ((___kont251731251732_
                 (lambda (_L243698_ _L243699_ _L243700_ _L243701_)
                   (let ((__tmp253086
                          (let () (declare (not safe)) (gx#stx-e _L243699_))))
                     (declare (not safe))
                     (table-set! _methods242727_ __tmp253086 '#t))
                   (for-each
                    (lambda (_g243734243736_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243734243736_
                         _self242726_
                         _methods242727_
                         _slots242728_
                         _class-check242729_
                         _struct-check242730_
                         _struct-assert242731_)))
                    (let ((__tmp253087
                           (lambda (_g243738243741_ _g243739243743_)
                             (let ()
                               (declare (not safe))
                               (cons _g243738243741_ _g243739243743_)))))
                      (declare (not safe))
                      (foldr1 __tmp253087 '() _L243698_)))))
                (___kont251735251736_
                 (lambda (_L243533_ _L243534_ _L243535_ _L243536_ _L243537_)
                   (let ((__tmp253088
                          (let () (declare (not safe)) (gx#stx-e _L243534_))))
                     (declare (not safe))
                     (table-set! _methods242727_ __tmp253088 '#t))
                   (for-each
                    (lambda (_g243577243579_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g243577243579_
                         _self242726_
                         _methods242727_
                         _slots242728_
                         _class-check242729_
                         _struct-check242730_
                         _struct-assert242731_)))
                    (let ((__tmp253089
                           (lambda (_g243581243584_ _g243582243586_)
                             (let ()
                               (declare (not safe))
                               (cons _g243581243584_ _g243582243586_)))))
                      (declare (not safe))
                      (foldr1 __tmp253089 '() _L243533_)))))
                (___kont251739251740_
                 (lambda (_L243366_ _L243367_ _L243368_)
                   (let ((__tmp253090
                          (let () (declare (not safe)) (gx#stx-e _L243366_))))
                     (declare (not safe))
                     (table-set! _slots242728_ __tmp253090 '#t))))
                (___kont251741251742_
                 (lambda (_L243243_ _L243244_ _L243245_ _L243246_)
                   (let ((__tmp253091
                          (let () (declare (not safe)) (gx#stx-e _L243244_))))
                     (declare (not safe))
                     (table-set! _slots242728_ __tmp253091 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L243243_
                      _self242726_
                      _methods242727_
                      _slots242728_
                      _class-check242729_
                      _struct-check242730_
                      _struct-assert242731_))))
                (___kont251743251744_
                 (lambda (_L243127_ _L243128_)
                   (let ((__tmp253092
                          (##structure-ref
                           (let ((__tmp253093
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L243128_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253093))
                           '2
                           gxc#!accessor::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242728_ __tmp253092 '#t))))
                (___kont251745251746_
                 (lambda (_L243037_ _L243038_ _L243039_)
                   (let ((__tmp253094
                          (##structure-ref
                           (let ((__tmp253095
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L243039_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp253095))
                           '2
                           gxc#!mutator::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots242728_ __tmp253094 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L243037_
                      _self242726_
                      _methods242727_
                      _slots242728_
                      _class-check242729_
                      _struct-check242730_
                      _struct-assert242731_))))
                (___kont251747251748_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx242725_
                      _self242726_
                      _methods242727_
                      _slots242728_
                      _class-check242729_
                      _struct-check242730_
                      _struct-assert242731_)))))
            (let* ((___match252228252229_
                    (lambda (_e242935242973_
                             _hd242934242976_
                             _tl242933242978_
                             _e242938242981_
                             _hd242937242984_
                             _tl242936242986_
                             _e242941242989_
                             _hd242940242992_
                             _tl242939242994_
                             _e242944242997_
                             _hd242943243000_
                             _tl242942243002_
                             _e242947243005_
                             _hd242946243008_
                             _tl242945243010_
                             _e242950243013_
                             _hd242949243016_
                             _tl242948243018_
                             _e242953243021_
                             _hd242952243024_
                             _tl242951243026_
                             _e242956243029_
                             _hd242955243032_
                             _tl242954243034_)
                      (let ((_L243037_ _hd242955243032_)
                            (_L243038_ _hd242952243024_)
                            (_L243039_ _hd242943243000_))
                        (if (and (let ((__tmp253096
                                        (let ((__tmp253097
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L243039_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253097))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253096
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243038_
                                    _self242726_)))
                            (___kont251745251746_
                             _L243037_
                             _L243038_
                             _L243039_)
                            (___kont251747251748_)))))
                   (___match252226252227_
                    (lambda (_e242935242973_
                             _hd242934242976_
                             _tl242933242978_
                             _e242938242981_
                             _hd242937242984_
                             _tl242936242986_
                             _e242941242989_
                             _hd242940242992_
                             _tl242939242994_
                             _e242944242997_
                             _hd242943243000_
                             _tl242942243002_
                             _e242947243005_
                             _hd242946243008_
                             _tl242945243010_
                             _e242950243013_
                             _hd242949243016_
                             _tl242948243018_
                             _e242953243021_
                             _hd242952243024_
                             _tl242951243026_
                             _e242956243029_
                             _hd242955243032_
                             _tl242954243034_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242954243034_))
                          (___match252228252229_
                           _e242935242973_
                           _hd242934242976_
                           _tl242933242978_
                           _e242938242981_
                           _hd242937242984_
                           _tl242936242986_
                           _e242941242989_
                           _hd242940242992_
                           _tl242939242994_
                           _e242944242997_
                           _hd242943243000_
                           _tl242942243002_
                           _e242947243005_
                           _hd242946243008_
                           _tl242945243010_
                           _e242950243013_
                           _hd242949243016_
                           _tl242948243018_
                           _e242953243021_
                           _hd242952243024_
                           _tl242951243026_
                           _e242956243029_
                           _hd242955243032_
                           _tl242954243034_)
                          (___kont251747251748_))))
                   (___match252220252221_
                    (lambda (_e242935242973_
                             _hd242934242976_
                             _tl242933242978_
                             _e242938242981_
                             _hd242937242984_
                             _tl242936242986_
                             _e242941242989_
                             _hd242940242992_
                             _tl242939242994_
                             _e242944242997_
                             _hd242943243000_
                             _tl242942243002_
                             _e242947243005_
                             _hd242946243008_
                             _tl242945243010_
                             _e242950243013_
                             _hd242949243016_
                             _tl242948243018_
                             _e242953243021_
                             _hd242952243024_
                             _tl242951243026_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242945243010_))
                          (let ((_e242956243029_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242945243010_))))
                            (let ((_tl242954243034_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242956243029_)))
                                  (_hd242955243032_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242956243029_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242954243034_))
                                  (___match252228252229_
                                   _e242935242973_
                                   _hd242934242976_
                                   _tl242933242978_
                                   _e242938242981_
                                   _hd242937242984_
                                   _tl242936242986_
                                   _e242941242989_
                                   _hd242940242992_
                                   _tl242939242994_
                                   _e242944242997_
                                   _hd242943243000_
                                   _tl242942243002_
                                   _e242947243005_
                                   _hd242946243008_
                                   _tl242945243010_
                                   _e242950243013_
                                   _hd242949243016_
                                   _tl242948243018_
                                   _e242953243021_
                                   _hd242952243024_
                                   _tl242951243026_
                                   _e242956243029_
                                   _hd242955243032_
                                   _tl242954243034_)
                                  (___kont251747251748_))))
                          (___kont251747251748_))))
                   (___match252166252167_
                    (lambda (_e242911243071_
                             _hd242910243074_
                             _tl242909243076_
                             _e242914243079_
                             _hd242913243082_
                             _tl242912243084_
                             _e242917243087_
                             _hd242916243090_
                             _tl242915243092_
                             _e242920243095_
                             _hd242919243098_
                             _tl242918243100_
                             _e242923243103_
                             _hd242922243106_
                             _tl242921243108_
                             _e242926243111_
                             _hd242925243114_
                             _tl242924243116_
                             _e242929243119_
                             _hd242928243122_
                             _tl242927243124_)
                      (let ((_L243127_ _hd242928243122_)
                            (_L243128_ _hd242919243098_))
                        (if (and (let ((__tmp253098
                                        (let ((__tmp253099
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L243128_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp253099))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp253098
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243127_
                                    _self242726_)))
                            (___kont251743251744_ _L243127_ _L243128_)
                            (___kont251747251748_)))))
                   (___match252164252165_
                    (lambda (_e242911243071_
                             _hd242910243074_
                             _tl242909243076_
                             _e242914243079_
                             _hd242913243082_
                             _tl242912243084_
                             _e242917243087_
                             _hd242916243090_
                             _tl242915243092_
                             _e242920243095_
                             _hd242919243098_
                             _tl242918243100_
                             _e242923243103_
                             _hd242922243106_
                             _tl242921243108_
                             _e242926243111_
                             _hd242925243114_
                             _tl242924243116_
                             _e242929243119_
                             _hd242928243122_
                             _tl242927243124_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242921243108_))
                          (___match252166252167_
                           _e242911243071_
                           _hd242910243074_
                           _tl242909243076_
                           _e242914243079_
                           _hd242913243082_
                           _tl242912243084_
                           _e242917243087_
                           _hd242916243090_
                           _tl242915243092_
                           _e242920243095_
                           _hd242919243098_
                           _tl242918243100_
                           _e242923243103_
                           _hd242922243106_
                           _tl242921243108_
                           _e242926243111_
                           _hd242925243114_
                           _tl242924243116_
                           _e242929243119_
                           _hd242928243122_
                           _tl242927243124_)
                          (___match252220252221_
                           _e242911243071_
                           _hd242910243074_
                           _tl242909243076_
                           _e242914243079_
                           _hd242913243082_
                           _tl242912243084_
                           _e242917243087_
                           _hd242916243090_
                           _tl242915243092_
                           _e242920243095_
                           _hd242919243098_
                           _tl242918243100_
                           _e242923243103_
                           _hd242922243106_
                           _tl242921243108_
                           _e242926243111_
                           _hd242925243114_
                           _tl242924243116_
                           _e242929243119_
                           _hd242928243122_
                           _tl242927243124_))))
                   (___match252110252111_
                    (lambda (_e242876243155_
                             _hd242875243158_
                             _tl242874243160_
                             _e242879243163_
                             _hd242878243166_
                             _tl242877243168_
                             _e242882243171_
                             _hd242881243174_
                             _tl242880243176_
                             _e242885243179_
                             _hd242884243182_
                             _tl242883243184_
                             _e242888243187_
                             _hd242887243190_
                             _tl242886243192_
                             _e242891243195_
                             _hd242890243198_
                             _tl242889243200_
                             _e242894243203_
                             _hd242893243206_
                             _tl242892243208_
                             _e242897243211_
                             _hd242896243214_
                             _tl242895243216_
                             _e242900243219_
                             _hd242899243222_
                             _tl242898243224_
                             _e242903243227_
                             _hd242902243230_
                             _tl242901243232_
                             _e242906243235_
                             _hd242905243238_
                             _tl242904243240_)
                      (let ((_L243243_ _hd242905243238_)
                            (_L243244_ _hd242902243230_)
                            (_L243245_ _hd242893243206_)
                            (_L243246_ _hd242884243182_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243246_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243246_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243245_
                                    _self242726_)))
                            (___kont251741251742_
                             _L243243_
                             _L243244_
                             _L243245_
                             _L243246_)
                            (___kont251747251748_)))))
                   (___match252102252103_
                    (lambda (_e242876243155_
                             _hd242875243158_
                             _tl242874243160_
                             _e242879243163_
                             _hd242878243166_
                             _tl242877243168_
                             _e242882243171_
                             _hd242881243174_
                             _tl242880243176_
                             _e242885243179_
                             _hd242884243182_
                             _tl242883243184_
                             _e242888243187_
                             _hd242887243190_
                             _tl242886243192_
                             _e242891243195_
                             _hd242890243198_
                             _tl242889243200_
                             _e242894243203_
                             _hd242893243206_
                             _tl242892243208_
                             _e242897243211_
                             _hd242896243214_
                             _tl242895243216_
                             _e242900243219_
                             _hd242899243222_
                             _tl242898243224_
                             _e242903243227_
                             _hd242902243230_
                             _tl242901243232_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242895243216_))
                          (let ((_e242906243235_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242895243216_))))
                            (let ((_tl242904243240_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242906243235_)))
                                  (_hd242905243238_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242906243235_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242904243240_))
                                  (___match252110252111_
                                   _e242876243155_
                                   _hd242875243158_
                                   _tl242874243160_
                                   _e242879243163_
                                   _hd242878243166_
                                   _tl242877243168_
                                   _e242882243171_
                                   _hd242881243174_
                                   _tl242880243176_
                                   _e242885243179_
                                   _hd242884243182_
                                   _tl242883243184_
                                   _e242888243187_
                                   _hd242887243190_
                                   _tl242886243192_
                                   _e242891243195_
                                   _hd242890243198_
                                   _tl242889243200_
                                   _e242894243203_
                                   _hd242893243206_
                                   _tl242892243208_
                                   _e242897243211_
                                   _hd242896243214_
                                   _tl242895243216_
                                   _e242900243219_
                                   _hd242899243222_
                                   _tl242898243224_
                                   _e242903243227_
                                   _hd242902243230_
                                   _tl242901243232_
                                   _e242906243235_
                                   _hd242905243238_
                                   _tl242904243240_)
                                  (___kont251747251748_))))
                          (___match252226252227_
                           _e242876243155_
                           _hd242875243158_
                           _tl242874243160_
                           _e242879243163_
                           _hd242878243166_
                           _tl242877243168_
                           _e242882243171_
                           _hd242881243174_
                           _tl242880243176_
                           _e242885243179_
                           _hd242884243182_
                           _tl242883243184_
                           _e242888243187_
                           _hd242887243190_
                           _tl242886243192_
                           _e242891243195_
                           _hd242890243198_
                           _tl242889243200_
                           _e242894243203_
                           _hd242893243206_
                           _tl242892243208_
                           _e242897243211_
                           _hd242896243214_
                           _tl242895243216_))))
                   (___match252024252025_
                    (lambda (_e242842243286_
                             _hd242841243289_
                             _tl242840243291_
                             _e242845243294_
                             _hd242844243297_
                             _tl242843243299_
                             _e242848243302_
                             _hd242847243305_
                             _tl242846243307_
                             _e242851243310_
                             _hd242850243313_
                             _tl242849243315_
                             _e242854243318_
                             _hd242853243321_
                             _tl242852243323_
                             _e242857243326_
                             _hd242856243329_
                             _tl242855243331_
                             _e242860243334_
                             _hd242859243337_
                             _tl242858243339_
                             _e242863243342_
                             _hd242862243345_
                             _tl242861243347_
                             _e242866243350_
                             _hd242865243353_
                             _tl242864243355_
                             _e242869243358_
                             _hd242868243361_
                             _tl242867243363_)
                      (let ((_L243366_ _hd242868243361_)
                            (_L243367_ _hd242859243337_)
                            (_L243368_ _hd242850243313_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243368_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L243368_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L243367_
                                    _self242726_)))
                            (___kont251739251740_
                             _L243366_
                             _L243367_
                             _L243368_)
                            (___match252228252229_
                             _e242842243286_
                             _hd242841243289_
                             _tl242840243291_
                             _e242845243294_
                             _hd242844243297_
                             _tl242843243299_
                             _e242848243302_
                             _hd242847243305_
                             _tl242846243307_
                             _e242851243310_
                             _hd242850243313_
                             _tl242849243315_
                             _e242854243318_
                             _hd242853243321_
                             _tl242852243323_
                             _e242857243326_
                             _hd242856243329_
                             _tl242855243331_
                             _e242860243334_
                             _hd242859243337_
                             _tl242858243339_
                             _e242863243342_
                             _hd242862243345_
                             _tl242861243347_)))))
                   (___match252022252023_
                    (lambda (_e242842243286_
                             _hd242841243289_
                             _tl242840243291_
                             _e242845243294_
                             _hd242844243297_
                             _tl242843243299_
                             _e242848243302_
                             _hd242847243305_
                             _tl242846243307_
                             _e242851243310_
                             _hd242850243313_
                             _tl242849243315_
                             _e242854243318_
                             _hd242853243321_
                             _tl242852243323_
                             _e242857243326_
                             _hd242856243329_
                             _tl242855243331_
                             _e242860243334_
                             _hd242859243337_
                             _tl242858243339_
                             _e242863243342_
                             _hd242862243345_
                             _tl242861243347_
                             _e242866243350_
                             _hd242865243353_
                             _tl242864243355_
                             _e242869243358_
                             _hd242868243361_
                             _tl242867243363_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl242861243347_))
                          (___match252024252025_
                           _e242842243286_
                           _hd242841243289_
                           _tl242840243291_
                           _e242845243294_
                           _hd242844243297_
                           _tl242843243299_
                           _e242848243302_
                           _hd242847243305_
                           _tl242846243307_
                           _e242851243310_
                           _hd242850243313_
                           _tl242849243315_
                           _e242854243318_
                           _hd242853243321_
                           _tl242852243323_
                           _e242857243326_
                           _hd242856243329_
                           _tl242855243331_
                           _e242860243334_
                           _hd242859243337_
                           _tl242858243339_
                           _e242863243342_
                           _hd242862243345_
                           _tl242861243347_
                           _e242866243350_
                           _hd242865243353_
                           _tl242864243355_
                           _e242869243358_
                           _hd242868243361_
                           _tl242867243363_)
                          (___match252102252103_
                           _e242842243286_
                           _hd242841243289_
                           _tl242840243291_
                           _e242845243294_
                           _hd242844243297_
                           _tl242843243299_
                           _e242848243302_
                           _hd242847243305_
                           _tl242846243307_
                           _e242851243310_
                           _hd242850243313_
                           _tl242849243315_
                           _e242854243318_
                           _hd242853243321_
                           _tl242852243323_
                           _e242857243326_
                           _hd242856243329_
                           _tl242855243331_
                           _e242860243334_
                           _hd242859243337_
                           _tl242858243339_
                           _e242863243342_
                           _hd242862243345_
                           _tl242861243347_
                           _e242866243350_
                           _hd242865243353_
                           _tl242864243355_
                           _e242869243358_
                           _hd242868243361_
                           _tl242867243363_))))
                   (___match252012252013_
                    (lambda (_e242842243286_
                             _hd242841243289_
                             _tl242840243291_
                             _e242845243294_
                             _hd242844243297_
                             _tl242843243299_
                             _e242848243302_
                             _hd242847243305_
                             _tl242846243307_
                             _e242851243310_
                             _hd242850243313_
                             _tl242849243315_
                             _e242854243318_
                             _hd242853243321_
                             _tl242852243323_
                             _e242857243326_
                             _hd242856243329_
                             _tl242855243331_
                             _e242860243334_
                             _hd242859243337_
                             _tl242858243339_
                             _e242863243342_
                             _hd242862243345_
                             _tl242861243347_
                             _e242866243350_
                             _hd242865243353_
                             _tl242864243355_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd242865243353_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242864243355_))
                              (let ((_e242869243358_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242864243355_))))
                                (let ((_tl242867243363_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242869243358_)))
                                      (_hd242868243361_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242869243358_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242867243363_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl242861243347_))
                                          (___match252024252025_
                                           _e242842243286_
                                           _hd242841243289_
                                           _tl242840243291_
                                           _e242845243294_
                                           _hd242844243297_
                                           _tl242843243299_
                                           _e242848243302_
                                           _hd242847243305_
                                           _tl242846243307_
                                           _e242851243310_
                                           _hd242850243313_
                                           _tl242849243315_
                                           _e242854243318_
                                           _hd242853243321_
                                           _tl242852243323_
                                           _e242857243326_
                                           _hd242856243329_
                                           _tl242855243331_
                                           _e242860243334_
                                           _hd242859243337_
                                           _tl242858243339_
                                           _e242863243342_
                                           _hd242862243345_
                                           _tl242861243347_
                                           _e242866243350_
                                           _hd242865243353_
                                           _tl242864243355_
                                           _e242869243358_
                                           _hd242868243361_
                                           _tl242867243363_)
                                          (___match252102252103_
                                           _e242842243286_
                                           _hd242841243289_
                                           _tl242840243291_
                                           _e242845243294_
                                           _hd242844243297_
                                           _tl242843243299_
                                           _e242848243302_
                                           _hd242847243305_
                                           _tl242846243307_
                                           _e242851243310_
                                           _hd242850243313_
                                           _tl242849243315_
                                           _e242854243318_
                                           _hd242853243321_
                                           _tl242852243323_
                                           _e242857243326_
                                           _hd242856243329_
                                           _tl242855243331_
                                           _e242860243334_
                                           _hd242859243337_
                                           _tl242858243339_
                                           _e242863243342_
                                           _hd242862243345_
                                           _tl242861243347_
                                           _e242866243350_
                                           _hd242865243353_
                                           _tl242864243355_
                                           _e242869243358_
                                           _hd242868243361_
                                           _tl242867243363_))
                                      (___match252226252227_
                                       _e242842243286_
                                       _hd242841243289_
                                       _tl242840243291_
                                       _e242845243294_
                                       _hd242844243297_
                                       _tl242843243299_
                                       _e242848243302_
                                       _hd242847243305_
                                       _tl242846243307_
                                       _e242851243310_
                                       _hd242850243313_
                                       _tl242849243315_
                                       _e242854243318_
                                       _hd242853243321_
                                       _tl242852243323_
                                       _e242857243326_
                                       _hd242856243329_
                                       _tl242855243331_
                                       _e242860243334_
                                       _hd242859243337_
                                       _tl242858243339_
                                       _e242863243342_
                                       _hd242862243345_
                                       _tl242861243347_))))
                              (___match252226252227_
                               _e242842243286_
                               _hd242841243289_
                               _tl242840243291_
                               _e242845243294_
                               _hd242844243297_
                               _tl242843243299_
                               _e242848243302_
                               _hd242847243305_
                               _tl242846243307_
                               _e242851243310_
                               _hd242850243313_
                               _tl242849243315_
                               _e242854243318_
                               _hd242853243321_
                               _tl242852243323_
                               _e242857243326_
                               _hd242856243329_
                               _tl242855243331_
                               _e242860243334_
                               _hd242859243337_
                               _tl242858243339_
                               _e242863243342_
                               _hd242862243345_
                               _tl242861243347_))
                          (___match252226252227_
                           _e242842243286_
                           _hd242841243289_
                           _tl242840243291_
                           _e242845243294_
                           _hd242844243297_
                           _tl242843243299_
                           _e242848243302_
                           _hd242847243305_
                           _tl242846243307_
                           _e242851243310_
                           _hd242850243313_
                           _tl242849243315_
                           _e242854243318_
                           _hd242853243321_
                           _tl242852243323_
                           _e242857243326_
                           _hd242856243329_
                           _tl242855243331_
                           _e242860243334_
                           _hd242859243337_
                           _tl242858243339_
                           _e242863243342_
                           _hd242862243345_
                           _tl242861243347_))))
                   (___match251944251945_
                    (lambda (_e242791243405_
                             _hd242790243408_
                             _tl242789243410_
                             _e242794243413_
                             _hd242793243416_
                             _tl242792243418_
                             _e242797243421_
                             _hd242796243424_
                             _tl242795243426_
                             _e242800243429_
                             _hd242799243432_
                             _tl242798243434_
                             _e242803243437_
                             _hd242802243440_
                             _tl242801243442_
                             _e242806243445_
                             _hd242805243448_
                             _tl242804243450_
                             _e242809243453_
                             _hd242808243456_
                             _tl242807243458_
                             _e242812243461_
                             _hd242811243464_
                             _tl242810243466_
                             _e242815243469_
                             _hd242814243472_
                             _tl242813243474_
                             _e242818243477_
                             _hd242817243480_
                             _tl242816243482_
                             _e242821243485_
                             _hd242820243488_
                             _tl242819243490_
                             _e242824243493_
                             _hd242823243496_
                             _tl242822243498_
                             _e242827243501_
                             _hd242826243504_
                             _tl242825243506_
                             ___splice251737251738_
                             _target242828243509_
                             _tl242830243511_)
                      (letrec ((_loop242831243514_
                                (lambda (_hd242829243517_ _args242835243519_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242829243517_))
                                      (let ((_e242832243522_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242829243517_))))
                                        (let ((_lp-tl242834243527_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242832243522_)))
                                              (_lp-hd242833243525_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242832243522_))))
                                          (let ((__tmp253100
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242833243525_
                                                         _args242835243519_))))
                                            (declare (not safe))
                                            (_loop242831243514_
                                             _lp-tl242834243527_
                                             __tmp253100))))
                                      (let ((_args242836243530_
                                             (reverse _args242835243519_)))
                                        (let ((_L243533_ _args242836243530_)
                                              (_L243534_ _hd242826243504_)
                                              (_L243535_ _hd242817243480_)
                                              (_L243536_ _hd242808243456_)
                                              (_L243537_ _hd242799243432_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243537_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243536_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243535_
                                                      _self242726_)))
                                              (___kont251735251736_
                                               _L243533_
                                               _L243534_
                                               _L243535_
                                               _L243536_
                                               _L243537_)
                                              (___kont251747251748_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242831243514_ _target242828243509_ '())))))
                   (___match251902251903_
                    (lambda (_e242791243405_
                             _hd242790243408_
                             _tl242789243410_
                             _e242794243413_
                             _hd242793243416_
                             _tl242792243418_
                             _e242797243421_
                             _hd242796243424_
                             _tl242795243426_
                             _e242800243429_
                             _hd242799243432_
                             _tl242798243434_
                             _e242803243437_
                             _hd242802243440_
                             _tl242801243442_
                             _e242806243445_
                             _hd242805243448_
                             _tl242804243450_
                             _e242809243453_
                             _hd242808243456_
                             _tl242807243458_
                             _e242812243461_
                             _hd242811243464_
                             _tl242810243466_
                             _e242815243469_
                             _hd242814243472_
                             _tl242813243474_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd242814243472_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl242813243474_))
                              (let ((_e242818243477_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl242813243474_))))
                                (let ((_tl242816243482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242818243477_)))
                                      (_hd242817243480_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242818243477_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl242816243482_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242810243466_))
                                          (let ((_e242821243485_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242810243466_))))
                                            (let ((_tl242819243490_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242821243485_)))
                                                  (_hd242820243488_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242821243485_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd242820243488_))
                                                  (let ((_e242824243493_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd242820243488_))))
                                                    (let ((_tl242822243498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242824243493_)))
                                                          (_hd242823243496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242824243493_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd242823243496_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd242823243496_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242822243498_))
                          (let ((_e242827243501_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242822243498_))))
                            (let ((_tl242825243506_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242827243501_)))
                                  (_hd242826243504_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242827243501_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl242825243506_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl242819243490_))
                                      (let ((___splice251737251738_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl242819243490_
                                                '0))))
                                        (let ((_tl242830243511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251737251738_
                                                  '1)))
                                              (_target242828243509_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice251737251738_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl242830243511_))
                                              (___match251944251945_
                                               _e242791243405_
                                               _hd242790243408_
                                               _tl242789243410_
                                               _e242794243413_
                                               _hd242793243416_
                                               _tl242792243418_
                                               _e242797243421_
                                               _hd242796243424_
                                               _tl242795243426_
                                               _e242800243429_
                                               _hd242799243432_
                                               _tl242798243434_
                                               _e242803243437_
                                               _hd242802243440_
                                               _tl242801243442_
                                               _e242806243445_
                                               _hd242805243448_
                                               _tl242804243450_
                                               _e242809243453_
                                               _hd242808243456_
                                               _tl242807243458_
                                               _e242812243461_
                                               _hd242811243464_
                                               _tl242810243466_
                                               _e242815243469_
                                               _hd242814243472_
                                               _tl242813243474_
                                               _e242818243477_
                                               _hd242817243480_
                                               _tl242816243482_
                                               _e242821243485_
                                               _hd242820243488_
                                               _tl242819243490_
                                               _e242824243493_
                                               _hd242823243496_
                                               _tl242822243498_
                                               _e242827243501_
                                               _hd242826243504_
                                               _tl242825243506_
                                               ___splice251737251738_
                                               _target242828243509_
                                               _tl242830243511_)
                                              (___kont251747251748_))))
                                      (___kont251747251748_))
                                  (___kont251747251748_))))
                          (___kont251747251748_))
                      (___kont251747251748_))
                  (___kont251747251748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251747251748_))))
                                          (___match252226252227_
                                           _e242791243405_
                                           _hd242790243408_
                                           _tl242789243410_
                                           _e242794243413_
                                           _hd242793243416_
                                           _tl242792243418_
                                           _e242797243421_
                                           _hd242796243424_
                                           _tl242795243426_
                                           _e242800243429_
                                           _hd242799243432_
                                           _tl242798243434_
                                           _e242803243437_
                                           _hd242802243440_
                                           _tl242801243442_
                                           _e242806243445_
                                           _hd242805243448_
                                           _tl242804243450_
                                           _e242809243453_
                                           _hd242808243456_
                                           _tl242807243458_
                                           _e242812243461_
                                           _hd242811243464_
                                           _tl242810243466_))
                                      (___match252226252227_
                                       _e242791243405_
                                       _hd242790243408_
                                       _tl242789243410_
                                       _e242794243413_
                                       _hd242793243416_
                                       _tl242792243418_
                                       _e242797243421_
                                       _hd242796243424_
                                       _tl242795243426_
                                       _e242800243429_
                                       _hd242799243432_
                                       _tl242798243434_
                                       _e242803243437_
                                       _hd242802243440_
                                       _tl242801243442_
                                       _e242806243445_
                                       _hd242805243448_
                                       _tl242804243450_
                                       _e242809243453_
                                       _hd242808243456_
                                       _tl242807243458_
                                       _e242812243461_
                                       _hd242811243464_
                                       _tl242810243466_))))
                              (___match252226252227_
                               _e242791243405_
                               _hd242790243408_
                               _tl242789243410_
                               _e242794243413_
                               _hd242793243416_
                               _tl242792243418_
                               _e242797243421_
                               _hd242796243424_
                               _tl242795243426_
                               _e242800243429_
                               _hd242799243432_
                               _tl242798243434_
                               _e242803243437_
                               _hd242802243440_
                               _tl242801243442_
                               _e242806243445_
                               _hd242805243448_
                               _tl242804243450_
                               _e242809243453_
                               _hd242808243456_
                               _tl242807243458_
                               _e242812243461_
                               _hd242811243464_
                               _tl242810243466_))
                          (___match252012252013_
                           _e242791243405_
                           _hd242790243408_
                           _tl242789243410_
                           _e242794243413_
                           _hd242793243416_
                           _tl242792243418_
                           _e242797243421_
                           _hd242796243424_
                           _tl242795243426_
                           _e242800243429_
                           _hd242799243432_
                           _tl242798243434_
                           _e242803243437_
                           _hd242802243440_
                           _tl242801243442_
                           _e242806243445_
                           _hd242805243448_
                           _tl242804243450_
                           _e242809243453_
                           _hd242808243456_
                           _tl242807243458_
                           _e242812243461_
                           _hd242811243464_
                           _tl242810243466_
                           _e242815243469_
                           _hd242814243472_
                           _tl242813243474_))))
                   (___match251834251835_
                    (lambda (_e242747243594_
                             _hd242746243597_
                             _tl242745243599_
                             _e242750243602_
                             _hd242749243605_
                             _tl242748243607_
                             _e242753243610_
                             _hd242752243613_
                             _tl242751243615_
                             _e242756243618_
                             _hd242755243621_
                             _tl242754243623_
                             _e242759243626_
                             _hd242758243629_
                             _tl242757243631_
                             _e242762243634_
                             _hd242761243637_
                             _tl242760243639_
                             _e242765243642_
                             _hd242764243645_
                             _tl242763243647_
                             _e242768243650_
                             _hd242767243653_
                             _tl242766243655_
                             _e242771243658_
                             _hd242770243661_
                             _tl242769243663_
                             _e242774243666_
                             _hd242773243669_
                             _tl242772243671_
                             ___splice251733251734_
                             _target242775243674_
                             _tl242777243676_)
                      (letrec ((_loop242778243679_
                                (lambda (_hd242776243682_ _args242782243684_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd242776243682_))
                                      (let ((_e242779243687_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd242776243682_))))
                                        (let ((_lp-tl242781243692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e242779243687_)))
                                              (_lp-hd242780243690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e242779243687_))))
                                          (let ((__tmp253101
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd242780243690_
                                                         _args242782243684_))))
                                            (declare (not safe))
                                            (_loop242778243679_
                                             _lp-tl242781243692_
                                             __tmp253101))))
                                      (let ((_args242783243695_
                                             (reverse _args242782243684_)))
                                        (let ((_L243698_ _args242783243695_)
                                              (_L243699_ _hd242773243669_)
                                              (_L243700_ _hd242764243645_)
                                              (_L243701_ _hd242755243621_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L243701_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L243700_
                                                      _self242726_)))
                                              (___kont251731251732_
                                               _L243698_
                                               _L243699_
                                               _L243700_
                                               _L243701_)
                                              (___match252022252023_
                                               _e242747243594_
                                               _hd242746243597_
                                               _tl242745243599_
                                               _e242750243602_
                                               _hd242749243605_
                                               _tl242748243607_
                                               _e242753243610_
                                               _hd242752243613_
                                               _tl242751243615_
                                               _e242756243618_
                                               _hd242755243621_
                                               _tl242754243623_
                                               _e242759243626_
                                               _hd242758243629_
                                               _tl242757243631_
                                               _e242762243634_
                                               _hd242761243637_
                                               _tl242760243639_
                                               _e242765243642_
                                               _hd242764243645_
                                               _tl242763243647_
                                               _e242768243650_
                                               _hd242767243653_
                                               _tl242766243655_
                                               _e242771243658_
                                               _hd242770243661_
                                               _tl242769243663_
                                               _e242774243666_
                                               _hd242773243669_
                                               _tl242772243671_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop242778243679_ _target242775243674_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx251729251730_))
                  (let ((_e242747243594_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx251729251730_))))
                    (let ((_tl242745243599_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242747243594_)))
                          (_hd242746243597_
                           (let ()
                             (declare (not safe))
                             (##car _e242747243594_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl242745243599_))
                          (let ((_e242750243602_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl242745243599_))))
                            (let ((_tl242748243607_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242750243602_)))
                                  (_hd242749243605_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242750243602_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd242749243605_))
                                  (let ((_e242753243610_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd242749243605_))))
                                    (let ((_tl242751243615_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e242753243610_)))
                                          (_hd242752243613_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e242753243610_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd242752243613_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd242752243613_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl242751243615_))
                                                  (let ((_e242756243618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl242751243615_))))
                                                    (let ((_tl242754243623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e242756243618_)))
                                                          (_hd242755243621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e242756243618_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl242754243623_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl242748243607_))
                      (let ((_e242759243626_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl242748243607_))))
                        (let ((_tl242757243631_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e242759243626_)))
                              (_hd242758243629_
                               (let ()
                                 (declare (not safe))
                                 (##car _e242759243626_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd242758243629_))
                              (let ((_e242762243634_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd242758243629_))))
                                (let ((_tl242760243639_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e242762243634_)))
                                      (_hd242761243637_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e242762243634_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd242761243637_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd242761243637_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl242760243639_))
                                              (let ((_e242765243642_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl242760243639_))))
                                                (let ((_tl242763243647_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e242765243642_)))
                                                      (_hd242764243645_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e242765243642_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl242763243647_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl242757243631_))
                                                          (let ((_e242768243650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl242757243631_))))
                    (let ((_tl242766243655_
                           (let ()
                             (declare (not safe))
                             (##cdr _e242768243650_)))
                          (_hd242767243653_
                           (let ()
                             (declare (not safe))
                             (##car _e242768243650_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd242767243653_))
                          (let ((_e242771243658_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd242767243653_))))
                            (let ((_tl242769243663_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e242771243658_)))
                                  (_hd242770243661_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e242771243658_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd242770243661_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd242770243661_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl242769243663_))
                                          (let ((_e242774243666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl242769243663_))))
                                            (let ((_tl242772243671_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e242774243666_)))
                                                  (_hd242773243669_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e242774243666_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl242772243671_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl242766243655_))
                                                      (let ((___splice251733251734_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl242766243655_ '0))))
                (let ((_tl242777243676_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251733251734_ '1)))
                      (_target242775243674_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice251733251734_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl242777243676_))
                      (___match251834251835_
                       _e242747243594_
                       _hd242746243597_
                       _tl242745243599_
                       _e242750243602_
                       _hd242749243605_
                       _tl242748243607_
                       _e242753243610_
                       _hd242752243613_
                       _tl242751243615_
                       _e242756243618_
                       _hd242755243621_
                       _tl242754243623_
                       _e242759243626_
                       _hd242758243629_
                       _tl242757243631_
                       _e242762243634_
                       _hd242761243637_
                       _tl242760243639_
                       _e242765243642_
                       _hd242764243645_
                       _tl242763243647_
                       _e242768243650_
                       _hd242767243653_
                       _tl242766243655_
                       _e242771243658_
                       _hd242770243661_
                       _tl242769243663_
                       _e242774243666_
                       _hd242773243669_
                       _tl242772243671_
                       ___splice251733251734_
                       _target242775243674_
                       _tl242777243676_)
                      (___match252022252023_
                       _e242747243594_
                       _hd242746243597_
                       _tl242745243599_
                       _e242750243602_
                       _hd242749243605_
                       _tl242748243607_
                       _e242753243610_
                       _hd242752243613_
                       _tl242751243615_
                       _e242756243618_
                       _hd242755243621_
                       _tl242754243623_
                       _e242759243626_
                       _hd242758243629_
                       _tl242757243631_
                       _e242762243634_
                       _hd242761243637_
                       _tl242760243639_
                       _e242765243642_
                       _hd242764243645_
                       _tl242763243647_
                       _e242768243650_
                       _hd242767243653_
                       _tl242766243655_
                       _e242771243658_
                       _hd242770243661_
                       _tl242769243663_
                       _e242774243666_
                       _hd242773243669_
                       _tl242772243671_))))
              (___match252022252023_
               _e242747243594_
               _hd242746243597_
               _tl242745243599_
               _e242750243602_
               _hd242749243605_
               _tl242748243607_
               _e242753243610_
               _hd242752243613_
               _tl242751243615_
               _e242756243618_
               _hd242755243621_
               _tl242754243623_
               _e242759243626_
               _hd242758243629_
               _tl242757243631_
               _e242762243634_
               _hd242761243637_
               _tl242760243639_
               _e242765243642_
               _hd242764243645_
               _tl242763243647_
               _e242768243650_
               _hd242767243653_
               _tl242766243655_
               _e242771243658_
               _hd242770243661_
               _tl242769243663_
               _e242774243666_
               _hd242773243669_
               _tl242772243671_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match252226252227_
                                                   _e242747243594_
                                                   _hd242746243597_
                                                   _tl242745243599_
                                                   _e242750243602_
                                                   _hd242749243605_
                                                   _tl242748243607_
                                                   _e242753243610_
                                                   _hd242752243613_
                                                   _tl242751243615_
                                                   _e242756243618_
                                                   _hd242755243621_
                                                   _tl242754243623_
                                                   _e242759243626_
                                                   _hd242758243629_
                                                   _tl242757243631_
                                                   _e242762243634_
                                                   _hd242761243637_
                                                   _tl242760243639_
                                                   _e242765243642_
                                                   _hd242764243645_
                                                   _tl242763243647_
                                                   _e242768243650_
                                                   _hd242767243653_
                                                   _tl242766243655_))))
                                          (___match252226252227_
                                           _e242747243594_
                                           _hd242746243597_
                                           _tl242745243599_
                                           _e242750243602_
                                           _hd242749243605_
                                           _tl242748243607_
                                           _e242753243610_
                                           _hd242752243613_
                                           _tl242751243615_
                                           _e242756243618_
                                           _hd242755243621_
                                           _tl242754243623_
                                           _e242759243626_
                                           _hd242758243629_
                                           _tl242757243631_
                                           _e242762243634_
                                           _hd242761243637_
                                           _tl242760243639_
                                           _e242765243642_
                                           _hd242764243645_
                                           _tl242763243647_
                                           _e242768243650_
                                           _hd242767243653_
                                           _tl242766243655_))
                                      (___match251902251903_
                                       _e242747243594_
                                       _hd242746243597_
                                       _tl242745243599_
                                       _e242750243602_
                                       _hd242749243605_
                                       _tl242748243607_
                                       _e242753243610_
                                       _hd242752243613_
                                       _tl242751243615_
                                       _e242756243618_
                                       _hd242755243621_
                                       _tl242754243623_
                                       _e242759243626_
                                       _hd242758243629_
                                       _tl242757243631_
                                       _e242762243634_
                                       _hd242761243637_
                                       _tl242760243639_
                                       _e242765243642_
                                       _hd242764243645_
                                       _tl242763243647_
                                       _e242768243650_
                                       _hd242767243653_
                                       _tl242766243655_
                                       _e242771243658_
                                       _hd242770243661_
                                       _tl242769243663_))
                                  (___match252226252227_
                                   _e242747243594_
                                   _hd242746243597_
                                   _tl242745243599_
                                   _e242750243602_
                                   _hd242749243605_
                                   _tl242748243607_
                                   _e242753243610_
                                   _hd242752243613_
                                   _tl242751243615_
                                   _e242756243618_
                                   _hd242755243621_
                                   _tl242754243623_
                                   _e242759243626_
                                   _hd242758243629_
                                   _tl242757243631_
                                   _e242762243634_
                                   _hd242761243637_
                                   _tl242760243639_
                                   _e242765243642_
                                   _hd242764243645_
                                   _tl242763243647_
                                   _e242768243650_
                                   _hd242767243653_
                                   _tl242766243655_))))
                          (___match252226252227_
                           _e242747243594_
                           _hd242746243597_
                           _tl242745243599_
                           _e242750243602_
                           _hd242749243605_
                           _tl242748243607_
                           _e242753243610_
                           _hd242752243613_
                           _tl242751243615_
                           _e242756243618_
                           _hd242755243621_
                           _tl242754243623_
                           _e242759243626_
                           _hd242758243629_
                           _tl242757243631_
                           _e242762243634_
                           _hd242761243637_
                           _tl242760243639_
                           _e242765243642_
                           _hd242764243645_
                           _tl242763243647_
                           _e242768243650_
                           _hd242767243653_
                           _tl242766243655_))))
                  (___match252164252165_
                   _e242747243594_
                   _hd242746243597_
                   _tl242745243599_
                   _e242750243602_
                   _hd242749243605_
                   _tl242748243607_
                   _e242753243610_
                   _hd242752243613_
                   _tl242751243615_
                   _e242756243618_
                   _hd242755243621_
                   _tl242754243623_
                   _e242759243626_
                   _hd242758243629_
                   _tl242757243631_
                   _e242762243634_
                   _hd242761243637_
                   _tl242760243639_
                   _e242765243642_
                   _hd242764243645_
                   _tl242763243647_))
              (___kont251747251748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont251747251748_))
                                          (___kont251747251748_))
                                      (___kont251747251748_))))
                              (___kont251747251748_))))
                      (___kont251747251748_))
                  (___kont251747251748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont251747251748_))
                                              (___kont251747251748_))
                                          (___kont251747251748_))))
                                  (___kont251747251748_))))
                          (___kont251747251748_))))
                  (___kont251747251748_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx241671_
               _self241672_
               _$t241673_
               _methods241674_
               _slots241675_
               _class-check241676_
               _struct-check241677_
               _struct-assert241678_)
        (letrec ((_force-e241680_
                  (lambda (_what242723_)
                    (let ((__tmp253102
                           (let ((__tmp253106
                                  (let ((__tmp253107
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp253107)))
                                 (__tmp253103
                                  (let ((__tmp253104
                                         (let ((__tmp253105
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what242723_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp253105))))
                                    (declare (not safe))
                                    (cons __tmp253104 '()))))
                             (declare (not safe))
                             (cons __tmp253106 __tmp253103))))
                      (declare (not safe))
                      (cons '%#call __tmp253102)))))
          (let* ((___stx252231252232_ _stx241671_)
                 (_g241688241910_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx252231252232_)))))
            (let ((___kont252233252234_
                   (lambda (_L242669_ _L242670_ _L242671_ _L242672_)
                     (let ((_$method242717_
                            (let ((__tmp253108
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242670_))))
                              (declare (not safe))
                              (table-ref _methods241674_ __tmp253108)))
                           (_args242718_
                            (map (lambda (_g242705242707_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242705242707_
                                      _self241672_
                                      _$t241673_
                                      _methods241674_
                                      _slots241675_
                                      _class-check241676_
                                      _struct-check241677_
                                      _struct-assert241678_)))
                                 (let ((__tmp253109
                                        (lambda (_g242709242712_
                                                 _g242710242714_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242709242712_
                                                  _g242710242714_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253109 '() _L242669_)))))
                       (let ((__tmp253110
                              (let ((__tmp253111
                                     (let ((__tmp253115
                                            (let ()
                                              (declare (not safe))
                                              (_force-e241680_
                                               _$method242717_)))
                                           (__tmp253112
                                            (let ((__tmp253113
                                                   (let ((__tmp253114
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self241672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253114))))
                                              (declare (not safe))
                                              (cons __tmp253113
                                                    _args242718_))))
                                       (declare (not safe))
                                       (cons __tmp253115 __tmp253112))))
                                (declare (not safe))
                                (cons '%#call __tmp253111))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253110 _stx241671_)))))
                  (___kont252237252238_
                   (lambda (_L242501_ _L242502_ _L242503_ _L242504_ _L242505_)
                     (let ((_$method242557_
                            (let ((__tmp253116
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242502_))))
                              (declare (not safe))
                              (table-ref _methods241674_ __tmp253116)))
                           (_args242558_
                            (map (lambda (_g242545242547_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g242545242547_
                                      _self241672_
                                      _$t241673_
                                      _methods241674_
                                      _slots241675_
                                      _class-check241676_
                                      _struct-check241677_
                                      _struct-assert241678_)))
                                 (let ((__tmp253117
                                        (lambda (_g242549242552_
                                                 _g242550242554_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g242549242552_
                                                  _g242550242554_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp253117 '() _L242501_)))))
                       (let ((__tmp253118
                              (let ((__tmp253119
                                     (let ((__tmp253125
                                            (let ((__tmp253126
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253126)))
                                           (__tmp253120
                                            (let ((__tmp253124
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e241680_
                                                      _$method242557_)))
                                                  (__tmp253121
                                                   (let ((__tmp253122
                                                          (let ((__tmp253123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241672_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253122
                                                           _args242558_))))
                                              (declare (not safe))
                                              (cons __tmp253124 __tmp253121))))
                                       (declare (not safe))
                                       (cons __tmp253125 __tmp253120))))
                                (declare (not safe))
                                (cons '%#call __tmp253119))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253118 _stx241671_)))))
                  (___kont252241252242_
                   (lambda (_L242332_ _L242333_ _L242334_)
                     (let* ((_$field242366_
                             (let ((__tmp253127
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L242332_))))
                               (declare (not safe))
                               (table-ref _slots241675_ __tmp253127)))
                            (__tmp253128
                             (let ((__tmp253129
                                    (let ((__tmp253136
                                           (let ((__tmp253137
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t241673_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp253137)))
                                          (__tmp253130
                                           (let ((__tmp253134
                                                  (let ((__tmp253135
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field242366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp253135)))
                                                 (__tmp253131
                                                  (let ((__tmp253132
                                                         (let ((__tmp253133
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self241672_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp253133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp253132 '()))))
                                             (declare (not safe))
                                             (cons __tmp253134 __tmp253131))))
                                      (declare (not safe))
                                      (cons __tmp253136 __tmp253130))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp253129))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp253128 _stx241671_))))
                  (___kont252243252244_
                   (lambda (_L242206_ _L242207_ _L242208_ _L242209_)
                     (let ((_$field242244_
                            (let ((__tmp253138
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L242207_))))
                              (declare (not safe))
                              (table-ref _slots241675_ __tmp253138)))
                           (_expr242245_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L242206_
                               _self241672_
                               _$t241673_
                               _methods241674_
                               _slots241675_
                               _class-check241676_
                               _struct-check241677_
                               _struct-assert241678_))))
                       (let ((__tmp253139
                              (let ((__tmp253140
                                     (let ((__tmp253148
                                            (let ((__tmp253149
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241673_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253149)))
                                           (__tmp253141
                                            (let ((__tmp253146
                                                   (let ((__tmp253147
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253147)))
                                                  (__tmp253142
                                                   (let ((__tmp253144
                                                          (let ((__tmp253145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241672_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253145)))
                 (__tmp253143
                  (let () (declare (not safe)) (cons _expr242245_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253144
                                                           __tmp253143))))
                                              (declare (not safe))
                                              (cons __tmp253146 __tmp253142))))
                                       (declare (not safe))
                                       (cons __tmp253148 __tmp253141))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253140))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253139 _stx241671_)))))
                  (___kont252245252246_
                   (lambda (_L242085_ _L242086_)
                     (let* ((_slot242108_
                             (##structure-ref
                              (let ((__tmp253150
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L242086_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253150))
                              '2
                              gxc#!accessor::t
                              '#f))
                            (_$field242110_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241675_ _slot242108_))))
                       (let ((__tmp253151
                              (let ((__tmp253152
                                     (let ((__tmp253159
                                            (let ((__tmp253160
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241673_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253160)))
                                           (__tmp253153
                                            (let ((__tmp253157
                                                   (let ((__tmp253158
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253158)))
                                                  (__tmp253154
                                                   (let ((__tmp253155
                                                          (let ((__tmp253156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241672_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253156))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253155 '()))))
                                              (declare (not safe))
                                              (cons __tmp253157 __tmp253154))))
                                       (declare (not safe))
                                       (cons __tmp253159 __tmp253153))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp253152))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253151 _stx241671_)))))
                  (___kont252247252248_
                   (lambda (_L241986_ _L241987_ _L241988_)
                     (let* ((_slot242017_
                             (##structure-ref
                              (let ((__tmp253161
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L241988_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp253161))
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_$field242019_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots241675_ _slot242017_)))
                            (_expr242021_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L241986_
                                _self241672_
                                _$t241673_
                                _methods241674_
                                _slots241675_
                                _class-check241676_
                                _struct-check241677_
                                _struct-assert241678_))))
                       (let ((__tmp253162
                              (let ((__tmp253163
                                     (let ((__tmp253171
                                            (let ((__tmp253172
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t241673_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp253172)))
                                           (__tmp253164
                                            (let ((__tmp253169
                                                   (let ((__tmp253170
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field242019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp253170)))
                                                  (__tmp253165
                                                   (let ((__tmp253167
                                                          (let ((__tmp253168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self241672_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp253168)))
                 (__tmp253166
                  (let () (declare (not safe)) (cons _expr242021_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp253167
                                                           __tmp253166))))
                                              (declare (not safe))
                                              (cons __tmp253169 __tmp253165))))
                                       (declare (not safe))
                                       (cons __tmp253171 __tmp253164))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp253163))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp253162 _stx241671_)))))
                  (___kont252249252250_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx241671_
                        _self241672_
                        _$t241673_
                        _methods241674_
                        _slots241675_
                        _class-check241676_
                        _struct-check241677_
                        _struct-assert241678_)))))
              (let* ((___match252730252731_
                      (lambda (_e241884241922_
                               _hd241883241925_
                               _tl241882241927_
                               _e241887241930_
                               _hd241886241933_
                               _tl241885241935_
                               _e241890241938_
                               _hd241889241941_
                               _tl241888241943_
                               _e241893241946_
                               _hd241892241949_
                               _tl241891241951_
                               _e241896241954_
                               _hd241895241957_
                               _tl241894241959_
                               _e241899241962_
                               _hd241898241965_
                               _tl241897241967_
                               _e241902241970_
                               _hd241901241973_
                               _tl241900241975_
                               _e241905241978_
                               _hd241904241981_
                               _tl241903241983_)
                        (let ((_L241986_ _hd241904241981_)
                              (_L241987_ _hd241901241973_)
                              (_L241988_ _hd241892241949_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L241987_
                                      _self241672_))
                                   (let ((__tmp253173
                                          (let ((__tmp253174
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L241988_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253174))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253173
                                      'gxc#!mutator::t)))
                              (___kont252247252248_
                               _L241986_
                               _L241987_
                               _L241988_)
                              (___kont252249252250_)))))
                     (___match252728252729_
                      (lambda (_e241884241922_
                               _hd241883241925_
                               _tl241882241927_
                               _e241887241930_
                               _hd241886241933_
                               _tl241885241935_
                               _e241890241938_
                               _hd241889241941_
                               _tl241888241943_
                               _e241893241946_
                               _hd241892241949_
                               _tl241891241951_
                               _e241896241954_
                               _hd241895241957_
                               _tl241894241959_
                               _e241899241962_
                               _hd241898241965_
                               _tl241897241967_
                               _e241902241970_
                               _hd241901241973_
                               _tl241900241975_
                               _e241905241978_
                               _hd241904241981_
                               _tl241903241983_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241903241983_))
                            (___match252730252731_
                             _e241884241922_
                             _hd241883241925_
                             _tl241882241927_
                             _e241887241930_
                             _hd241886241933_
                             _tl241885241935_
                             _e241890241938_
                             _hd241889241941_
                             _tl241888241943_
                             _e241893241946_
                             _hd241892241949_
                             _tl241891241951_
                             _e241896241954_
                             _hd241895241957_
                             _tl241894241959_
                             _e241899241962_
                             _hd241898241965_
                             _tl241897241967_
                             _e241902241970_
                             _hd241901241973_
                             _tl241900241975_
                             _e241905241978_
                             _hd241904241981_
                             _tl241903241983_)
                            (___kont252249252250_))))
                     (___match252722252723_
                      (lambda (_e241884241922_
                               _hd241883241925_
                               _tl241882241927_
                               _e241887241930_
                               _hd241886241933_
                               _tl241885241935_
                               _e241890241938_
                               _hd241889241941_
                               _tl241888241943_
                               _e241893241946_
                               _hd241892241949_
                               _tl241891241951_
                               _e241896241954_
                               _hd241895241957_
                               _tl241894241959_
                               _e241899241962_
                               _hd241898241965_
                               _tl241897241967_
                               _e241902241970_
                               _hd241901241973_
                               _tl241900241975_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241894241959_))
                            (let ((_e241905241978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241894241959_))))
                              (let ((_tl241903241983_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241905241978_)))
                                    (_hd241904241981_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241905241978_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241903241983_))
                                    (___match252730252731_
                                     _e241884241922_
                                     _hd241883241925_
                                     _tl241882241927_
                                     _e241887241930_
                                     _hd241886241933_
                                     _tl241885241935_
                                     _e241890241938_
                                     _hd241889241941_
                                     _tl241888241943_
                                     _e241893241946_
                                     _hd241892241949_
                                     _tl241891241951_
                                     _e241896241954_
                                     _hd241895241957_
                                     _tl241894241959_
                                     _e241899241962_
                                     _hd241898241965_
                                     _tl241897241967_
                                     _e241902241970_
                                     _hd241901241973_
                                     _tl241900241975_
                                     _e241905241978_
                                     _hd241904241981_
                                     _tl241903241983_)
                                    (___kont252249252250_))))
                            (___kont252249252250_))))
                     (___match252668252669_
                      (lambda (_e241860242029_
                               _hd241859242032_
                               _tl241858242034_
                               _e241863242037_
                               _hd241862242040_
                               _tl241861242042_
                               _e241866242045_
                               _hd241865242048_
                               _tl241864242050_
                               _e241869242053_
                               _hd241868242056_
                               _tl241867242058_
                               _e241872242061_
                               _hd241871242064_
                               _tl241870242066_
                               _e241875242069_
                               _hd241874242072_
                               _tl241873242074_
                               _e241878242077_
                               _hd241877242080_
                               _tl241876242082_)
                        (let ((_L242085_ _hd241877242080_)
                              (_L242086_ _hd241868242056_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242085_
                                      _self241672_))
                                   (let ((__tmp253175
                                          (let ((__tmp253176
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L242086_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp253176))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp253175
                                      'gxc#!accessor::t)))
                              (___kont252245252246_ _L242085_ _L242086_)
                              (___kont252249252250_)))))
                     (___match252666252667_
                      (lambda (_e241860242029_
                               _hd241859242032_
                               _tl241858242034_
                               _e241863242037_
                               _hd241862242040_
                               _tl241861242042_
                               _e241866242045_
                               _hd241865242048_
                               _tl241864242050_
                               _e241869242053_
                               _hd241868242056_
                               _tl241867242058_
                               _e241872242061_
                               _hd241871242064_
                               _tl241870242066_
                               _e241875242069_
                               _hd241874242072_
                               _tl241873242074_
                               _e241878242077_
                               _hd241877242080_
                               _tl241876242082_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241870242066_))
                            (___match252668252669_
                             _e241860242029_
                             _hd241859242032_
                             _tl241858242034_
                             _e241863242037_
                             _hd241862242040_
                             _tl241861242042_
                             _e241866242045_
                             _hd241865242048_
                             _tl241864242050_
                             _e241869242053_
                             _hd241868242056_
                             _tl241867242058_
                             _e241872242061_
                             _hd241871242064_
                             _tl241870242066_
                             _e241875242069_
                             _hd241874242072_
                             _tl241873242074_
                             _e241878242077_
                             _hd241877242080_
                             _tl241876242082_)
                            (___match252722252723_
                             _e241860242029_
                             _hd241859242032_
                             _tl241858242034_
                             _e241863242037_
                             _hd241862242040_
                             _tl241861242042_
                             _e241866242045_
                             _hd241865242048_
                             _tl241864242050_
                             _e241869242053_
                             _hd241868242056_
                             _tl241867242058_
                             _e241872242061_
                             _hd241871242064_
                             _tl241870242066_
                             _e241875242069_
                             _hd241874242072_
                             _tl241873242074_
                             _e241878242077_
                             _hd241877242080_
                             _tl241876242082_))))
                     (___match252612252613_
                      (lambda (_e241825242118_
                               _hd241824242121_
                               _tl241823242123_
                               _e241828242126_
                               _hd241827242129_
                               _tl241826242131_
                               _e241831242134_
                               _hd241830242137_
                               _tl241829242139_
                               _e241834242142_
                               _hd241833242145_
                               _tl241832242147_
                               _e241837242150_
                               _hd241836242153_
                               _tl241835242155_
                               _e241840242158_
                               _hd241839242161_
                               _tl241838242163_
                               _e241843242166_
                               _hd241842242169_
                               _tl241841242171_
                               _e241846242174_
                               _hd241845242177_
                               _tl241844242179_
                               _e241849242182_
                               _hd241848242185_
                               _tl241847242187_
                               _e241852242190_
                               _hd241851242193_
                               _tl241850242195_
                               _e241855242198_
                               _hd241854242201_
                               _tl241853242203_)
                        (let ((_L242206_ _hd241854242201_)
                              (_L242207_ _hd241851242193_)
                              (_L242208_ _hd241842242169_)
                              (_L242209_ _hd241833242145_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242209_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242209_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242208_
                                      _self241672_)))
                              (___kont252243252244_
                               _L242206_
                               _L242207_
                               _L242208_
                               _L242209_)
                              (___kont252249252250_)))))
                     (___match252604252605_
                      (lambda (_e241825242118_
                               _hd241824242121_
                               _tl241823242123_
                               _e241828242126_
                               _hd241827242129_
                               _tl241826242131_
                               _e241831242134_
                               _hd241830242137_
                               _tl241829242139_
                               _e241834242142_
                               _hd241833242145_
                               _tl241832242147_
                               _e241837242150_
                               _hd241836242153_
                               _tl241835242155_
                               _e241840242158_
                               _hd241839242161_
                               _tl241838242163_
                               _e241843242166_
                               _hd241842242169_
                               _tl241841242171_
                               _e241846242174_
                               _hd241845242177_
                               _tl241844242179_
                               _e241849242182_
                               _hd241848242185_
                               _tl241847242187_
                               _e241852242190_
                               _hd241851242193_
                               _tl241850242195_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241844242179_))
                            (let ((_e241855242198_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241844242179_))))
                              (let ((_tl241853242203_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241855242198_)))
                                    (_hd241854242201_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241855242198_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241853242203_))
                                    (___match252612252613_
                                     _e241825242118_
                                     _hd241824242121_
                                     _tl241823242123_
                                     _e241828242126_
                                     _hd241827242129_
                                     _tl241826242131_
                                     _e241831242134_
                                     _hd241830242137_
                                     _tl241829242139_
                                     _e241834242142_
                                     _hd241833242145_
                                     _tl241832242147_
                                     _e241837242150_
                                     _hd241836242153_
                                     _tl241835242155_
                                     _e241840242158_
                                     _hd241839242161_
                                     _tl241838242163_
                                     _e241843242166_
                                     _hd241842242169_
                                     _tl241841242171_
                                     _e241846242174_
                                     _hd241845242177_
                                     _tl241844242179_
                                     _e241849242182_
                                     _hd241848242185_
                                     _tl241847242187_
                                     _e241852242190_
                                     _hd241851242193_
                                     _tl241850242195_
                                     _e241855242198_
                                     _hd241854242201_
                                     _tl241853242203_)
                                    (___kont252249252250_))))
                            (___match252728252729_
                             _e241825242118_
                             _hd241824242121_
                             _tl241823242123_
                             _e241828242126_
                             _hd241827242129_
                             _tl241826242131_
                             _e241831242134_
                             _hd241830242137_
                             _tl241829242139_
                             _e241834242142_
                             _hd241833242145_
                             _tl241832242147_
                             _e241837242150_
                             _hd241836242153_
                             _tl241835242155_
                             _e241840242158_
                             _hd241839242161_
                             _tl241838242163_
                             _e241843242166_
                             _hd241842242169_
                             _tl241841242171_
                             _e241846242174_
                             _hd241845242177_
                             _tl241844242179_))))
                     (___match252526252527_
                      (lambda (_e241791242252_
                               _hd241790242255_
                               _tl241789242257_
                               _e241794242260_
                               _hd241793242263_
                               _tl241792242265_
                               _e241797242268_
                               _hd241796242271_
                               _tl241795242273_
                               _e241800242276_
                               _hd241799242279_
                               _tl241798242281_
                               _e241803242284_
                               _hd241802242287_
                               _tl241801242289_
                               _e241806242292_
                               _hd241805242295_
                               _tl241804242297_
                               _e241809242300_
                               _hd241808242303_
                               _tl241807242305_
                               _e241812242308_
                               _hd241811242311_
                               _tl241810242313_
                               _e241815242316_
                               _hd241814242319_
                               _tl241813242321_
                               _e241818242324_
                               _hd241817242327_
                               _tl241816242329_)
                        (let ((_L242332_ _hd241817242327_)
                              (_L242333_ _hd241808242303_)
                              (_L242334_ _hd241799242279_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242334_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L242334_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L242333_
                                      _self241672_)))
                              (___kont252241252242_
                               _L242332_
                               _L242333_
                               _L242334_)
                              (___match252730252731_
                               _e241791242252_
                               _hd241790242255_
                               _tl241789242257_
                               _e241794242260_
                               _hd241793242263_
                               _tl241792242265_
                               _e241797242268_
                               _hd241796242271_
                               _tl241795242273_
                               _e241800242276_
                               _hd241799242279_
                               _tl241798242281_
                               _e241803242284_
                               _hd241802242287_
                               _tl241801242289_
                               _e241806242292_
                               _hd241805242295_
                               _tl241804242297_
                               _e241809242300_
                               _hd241808242303_
                               _tl241807242305_
                               _e241812242308_
                               _hd241811242311_
                               _tl241810242313_)))))
                     (___match252524252525_
                      (lambda (_e241791242252_
                               _hd241790242255_
                               _tl241789242257_
                               _e241794242260_
                               _hd241793242263_
                               _tl241792242265_
                               _e241797242268_
                               _hd241796242271_
                               _tl241795242273_
                               _e241800242276_
                               _hd241799242279_
                               _tl241798242281_
                               _e241803242284_
                               _hd241802242287_
                               _tl241801242289_
                               _e241806242292_
                               _hd241805242295_
                               _tl241804242297_
                               _e241809242300_
                               _hd241808242303_
                               _tl241807242305_
                               _e241812242308_
                               _hd241811242311_
                               _tl241810242313_
                               _e241815242316_
                               _hd241814242319_
                               _tl241813242321_
                               _e241818242324_
                               _hd241817242327_
                               _tl241816242329_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl241810242313_))
                            (___match252526252527_
                             _e241791242252_
                             _hd241790242255_
                             _tl241789242257_
                             _e241794242260_
                             _hd241793242263_
                             _tl241792242265_
                             _e241797242268_
                             _hd241796242271_
                             _tl241795242273_
                             _e241800242276_
                             _hd241799242279_
                             _tl241798242281_
                             _e241803242284_
                             _hd241802242287_
                             _tl241801242289_
                             _e241806242292_
                             _hd241805242295_
                             _tl241804242297_
                             _e241809242300_
                             _hd241808242303_
                             _tl241807242305_
                             _e241812242308_
                             _hd241811242311_
                             _tl241810242313_
                             _e241815242316_
                             _hd241814242319_
                             _tl241813242321_
                             _e241818242324_
                             _hd241817242327_
                             _tl241816242329_)
                            (___match252604252605_
                             _e241791242252_
                             _hd241790242255_
                             _tl241789242257_
                             _e241794242260_
                             _hd241793242263_
                             _tl241792242265_
                             _e241797242268_
                             _hd241796242271_
                             _tl241795242273_
                             _e241800242276_
                             _hd241799242279_
                             _tl241798242281_
                             _e241803242284_
                             _hd241802242287_
                             _tl241801242289_
                             _e241806242292_
                             _hd241805242295_
                             _tl241804242297_
                             _e241809242300_
                             _hd241808242303_
                             _tl241807242305_
                             _e241812242308_
                             _hd241811242311_
                             _tl241810242313_
                             _e241815242316_
                             _hd241814242319_
                             _tl241813242321_
                             _e241818242324_
                             _hd241817242327_
                             _tl241816242329_))))
                     (___match252514252515_
                      (lambda (_e241791242252_
                               _hd241790242255_
                               _tl241789242257_
                               _e241794242260_
                               _hd241793242263_
                               _tl241792242265_
                               _e241797242268_
                               _hd241796242271_
                               _tl241795242273_
                               _e241800242276_
                               _hd241799242279_
                               _tl241798242281_
                               _e241803242284_
                               _hd241802242287_
                               _tl241801242289_
                               _e241806242292_
                               _hd241805242295_
                               _tl241804242297_
                               _e241809242300_
                               _hd241808242303_
                               _tl241807242305_
                               _e241812242308_
                               _hd241811242311_
                               _tl241810242313_
                               _e241815242316_
                               _hd241814242319_
                               _tl241813242321_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd241814242319_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241813242321_))
                                (let ((_e241818242324_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241813242321_))))
                                  (let ((_tl241816242329_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241818242324_)))
                                        (_hd241817242327_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241818242324_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241816242329_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl241810242313_))
                                            (___match252526252527_
                                             _e241791242252_
                                             _hd241790242255_
                                             _tl241789242257_
                                             _e241794242260_
                                             _hd241793242263_
                                             _tl241792242265_
                                             _e241797242268_
                                             _hd241796242271_
                                             _tl241795242273_
                                             _e241800242276_
                                             _hd241799242279_
                                             _tl241798242281_
                                             _e241803242284_
                                             _hd241802242287_
                                             _tl241801242289_
                                             _e241806242292_
                                             _hd241805242295_
                                             _tl241804242297_
                                             _e241809242300_
                                             _hd241808242303_
                                             _tl241807242305_
                                             _e241812242308_
                                             _hd241811242311_
                                             _tl241810242313_
                                             _e241815242316_
                                             _hd241814242319_
                                             _tl241813242321_
                                             _e241818242324_
                                             _hd241817242327_
                                             _tl241816242329_)
                                            (___match252604252605_
                                             _e241791242252_
                                             _hd241790242255_
                                             _tl241789242257_
                                             _e241794242260_
                                             _hd241793242263_
                                             _tl241792242265_
                                             _e241797242268_
                                             _hd241796242271_
                                             _tl241795242273_
                                             _e241800242276_
                                             _hd241799242279_
                                             _tl241798242281_
                                             _e241803242284_
                                             _hd241802242287_
                                             _tl241801242289_
                                             _e241806242292_
                                             _hd241805242295_
                                             _tl241804242297_
                                             _e241809242300_
                                             _hd241808242303_
                                             _tl241807242305_
                                             _e241812242308_
                                             _hd241811242311_
                                             _tl241810242313_
                                             _e241815242316_
                                             _hd241814242319_
                                             _tl241813242321_
                                             _e241818242324_
                                             _hd241817242327_
                                             _tl241816242329_))
                                        (___match252728252729_
                                         _e241791242252_
                                         _hd241790242255_
                                         _tl241789242257_
                                         _e241794242260_
                                         _hd241793242263_
                                         _tl241792242265_
                                         _e241797242268_
                                         _hd241796242271_
                                         _tl241795242273_
                                         _e241800242276_
                                         _hd241799242279_
                                         _tl241798242281_
                                         _e241803242284_
                                         _hd241802242287_
                                         _tl241801242289_
                                         _e241806242292_
                                         _hd241805242295_
                                         _tl241804242297_
                                         _e241809242300_
                                         _hd241808242303_
                                         _tl241807242305_
                                         _e241812242308_
                                         _hd241811242311_
                                         _tl241810242313_))))
                                (___match252728252729_
                                 _e241791242252_
                                 _hd241790242255_
                                 _tl241789242257_
                                 _e241794242260_
                                 _hd241793242263_
                                 _tl241792242265_
                                 _e241797242268_
                                 _hd241796242271_
                                 _tl241795242273_
                                 _e241800242276_
                                 _hd241799242279_
                                 _tl241798242281_
                                 _e241803242284_
                                 _hd241802242287_
                                 _tl241801242289_
                                 _e241806242292_
                                 _hd241805242295_
                                 _tl241804242297_
                                 _e241809242300_
                                 _hd241808242303_
                                 _tl241807242305_
                                 _e241812242308_
                                 _hd241811242311_
                                 _tl241810242313_))
                            (___match252728252729_
                             _e241791242252_
                             _hd241790242255_
                             _tl241789242257_
                             _e241794242260_
                             _hd241793242263_
                             _tl241792242265_
                             _e241797242268_
                             _hd241796242271_
                             _tl241795242273_
                             _e241800242276_
                             _hd241799242279_
                             _tl241798242281_
                             _e241803242284_
                             _hd241802242287_
                             _tl241801242289_
                             _e241806242292_
                             _hd241805242295_
                             _tl241804242297_
                             _e241809242300_
                             _hd241808242303_
                             _tl241807242305_
                             _e241812242308_
                             _hd241811242311_
                             _tl241810242313_))))
                     (___match252446252447_
                      (lambda (_e241740242373_
                               _hd241739242376_
                               _tl241738242378_
                               _e241743242381_
                               _hd241742242384_
                               _tl241741242386_
                               _e241746242389_
                               _hd241745242392_
                               _tl241744242394_
                               _e241749242397_
                               _hd241748242400_
                               _tl241747242402_
                               _e241752242405_
                               _hd241751242408_
                               _tl241750242410_
                               _e241755242413_
                               _hd241754242416_
                               _tl241753242418_
                               _e241758242421_
                               _hd241757242424_
                               _tl241756242426_
                               _e241761242429_
                               _hd241760242432_
                               _tl241759242434_
                               _e241764242437_
                               _hd241763242440_
                               _tl241762242442_
                               _e241767242445_
                               _hd241766242448_
                               _tl241765242450_
                               _e241770242453_
                               _hd241769242456_
                               _tl241768242458_
                               _e241773242461_
                               _hd241772242464_
                               _tl241771242466_
                               _e241776242469_
                               _hd241775242472_
                               _tl241774242474_
                               ___splice252239252240_
                               _target241777242477_
                               _tl241779242479_)
                        (letrec ((_loop241780242482_
                                  (lambda (_hd241778242485_ _args241784242487_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241778242485_))
                                        (let ((_e241781242490_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241778242485_))))
                                          (let ((_lp-tl241783242495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241781242490_)))
                                                (_lp-hd241782242493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241781242490_))))
                                            (let ((__tmp253177
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241782242493_
                                                           _args241784242487_))))
                                              (declare (not safe))
                                              (_loop241780242482_
                                               _lp-tl241783242495_
                                               __tmp253177))))
                                        (let ((_args241785242498_
                                               (reverse _args241784242487_)))
                                          (let ((_L242501_ _args241785242498_)
                                                (_L242502_ _hd241775242472_)
                                                (_L242503_ _hd241766242448_)
                                                (_L242504_ _hd241757242424_)
                                                (_L242505_ _hd241748242400_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242505_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242504_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242503_
                                                        _self241672_)))
                                                (___kont252237252238_
                                                 _L242501_
                                                 _L242502_
                                                 _L242503_
                                                 _L242504_
                                                 _L242505_)
                                                (___kont252249252250_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241780242482_ _target241777242477_ '())))))
                     (___match252404252405_
                      (lambda (_e241740242373_
                               _hd241739242376_
                               _tl241738242378_
                               _e241743242381_
                               _hd241742242384_
                               _tl241741242386_
                               _e241746242389_
                               _hd241745242392_
                               _tl241744242394_
                               _e241749242397_
                               _hd241748242400_
                               _tl241747242402_
                               _e241752242405_
                               _hd241751242408_
                               _tl241750242410_
                               _e241755242413_
                               _hd241754242416_
                               _tl241753242418_
                               _e241758242421_
                               _hd241757242424_
                               _tl241756242426_
                               _e241761242429_
                               _hd241760242432_
                               _tl241759242434_
                               _e241764242437_
                               _hd241763242440_
                               _tl241762242442_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd241763242440_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl241762242442_))
                                (let ((_e241767242445_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl241762242442_))))
                                  (let ((_tl241765242450_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241767242445_)))
                                        (_hd241766242448_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241767242445_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl241765242450_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241759242434_))
                                            (let ((_e241770242453_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241759242434_))))
                                              (let ((_tl241768242458_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241770242453_)))
                                                    (_hd241769242456_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241770242453_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd241769242456_))
                                                    (let ((_e241773242461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd241769242456_))))
                                                      (let ((_tl241771242466_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241773242461_)))
                    (_hd241772242464_
                     (let () (declare (not safe)) (##car _e241773242461_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd241772242464_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd241772242464_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241771242466_))
                            (let ((_e241776242469_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241771242466_))))
                              (let ((_tl241774242474_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241776242469_)))
                                    (_hd241775242472_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241776242469_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl241774242474_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl241768242458_))
                                        (let ((___splice252239252240_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl241768242458_
                                                  '0))))
                                          (let ((_tl241779242479_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252239252240_
                                                    '1)))
                                                (_target241777242477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice252239252240_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl241779242479_))
                                                (___match252446252447_
                                                 _e241740242373_
                                                 _hd241739242376_
                                                 _tl241738242378_
                                                 _e241743242381_
                                                 _hd241742242384_
                                                 _tl241741242386_
                                                 _e241746242389_
                                                 _hd241745242392_
                                                 _tl241744242394_
                                                 _e241749242397_
                                                 _hd241748242400_
                                                 _tl241747242402_
                                                 _e241752242405_
                                                 _hd241751242408_
                                                 _tl241750242410_
                                                 _e241755242413_
                                                 _hd241754242416_
                                                 _tl241753242418_
                                                 _e241758242421_
                                                 _hd241757242424_
                                                 _tl241756242426_
                                                 _e241761242429_
                                                 _hd241760242432_
                                                 _tl241759242434_
                                                 _e241764242437_
                                                 _hd241763242440_
                                                 _tl241762242442_
                                                 _e241767242445_
                                                 _hd241766242448_
                                                 _tl241765242450_
                                                 _e241770242453_
                                                 _hd241769242456_
                                                 _tl241768242458_
                                                 _e241773242461_
                                                 _hd241772242464_
                                                 _tl241771242466_
                                                 _e241776242469_
                                                 _hd241775242472_
                                                 _tl241774242474_
                                                 ___splice252239252240_
                                                 _target241777242477_
                                                 _tl241779242479_)
                                                (___kont252249252250_))))
                                        (___kont252249252250_))
                                    (___kont252249252250_))))
                            (___kont252249252250_))
                        (___kont252249252250_))
                    (___kont252249252250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252249252250_))))
                                            (___match252728252729_
                                             _e241740242373_
                                             _hd241739242376_
                                             _tl241738242378_
                                             _e241743242381_
                                             _hd241742242384_
                                             _tl241741242386_
                                             _e241746242389_
                                             _hd241745242392_
                                             _tl241744242394_
                                             _e241749242397_
                                             _hd241748242400_
                                             _tl241747242402_
                                             _e241752242405_
                                             _hd241751242408_
                                             _tl241750242410_
                                             _e241755242413_
                                             _hd241754242416_
                                             _tl241753242418_
                                             _e241758242421_
                                             _hd241757242424_
                                             _tl241756242426_
                                             _e241761242429_
                                             _hd241760242432_
                                             _tl241759242434_))
                                        (___match252728252729_
                                         _e241740242373_
                                         _hd241739242376_
                                         _tl241738242378_
                                         _e241743242381_
                                         _hd241742242384_
                                         _tl241741242386_
                                         _e241746242389_
                                         _hd241745242392_
                                         _tl241744242394_
                                         _e241749242397_
                                         _hd241748242400_
                                         _tl241747242402_
                                         _e241752242405_
                                         _hd241751242408_
                                         _tl241750242410_
                                         _e241755242413_
                                         _hd241754242416_
                                         _tl241753242418_
                                         _e241758242421_
                                         _hd241757242424_
                                         _tl241756242426_
                                         _e241761242429_
                                         _hd241760242432_
                                         _tl241759242434_))))
                                (___match252728252729_
                                 _e241740242373_
                                 _hd241739242376_
                                 _tl241738242378_
                                 _e241743242381_
                                 _hd241742242384_
                                 _tl241741242386_
                                 _e241746242389_
                                 _hd241745242392_
                                 _tl241744242394_
                                 _e241749242397_
                                 _hd241748242400_
                                 _tl241747242402_
                                 _e241752242405_
                                 _hd241751242408_
                                 _tl241750242410_
                                 _e241755242413_
                                 _hd241754242416_
                                 _tl241753242418_
                                 _e241758242421_
                                 _hd241757242424_
                                 _tl241756242426_
                                 _e241761242429_
                                 _hd241760242432_
                                 _tl241759242434_))
                            (___match252514252515_
                             _e241740242373_
                             _hd241739242376_
                             _tl241738242378_
                             _e241743242381_
                             _hd241742242384_
                             _tl241741242386_
                             _e241746242389_
                             _hd241745242392_
                             _tl241744242394_
                             _e241749242397_
                             _hd241748242400_
                             _tl241747242402_
                             _e241752242405_
                             _hd241751242408_
                             _tl241750242410_
                             _e241755242413_
                             _hd241754242416_
                             _tl241753242418_
                             _e241758242421_
                             _hd241757242424_
                             _tl241756242426_
                             _e241761242429_
                             _hd241760242432_
                             _tl241759242434_
                             _e241764242437_
                             _hd241763242440_
                             _tl241762242442_))))
                     (___match252336252337_
                      (lambda (_e241696242565_
                               _hd241695242568_
                               _tl241694242570_
                               _e241699242573_
                               _hd241698242576_
                               _tl241697242578_
                               _e241702242581_
                               _hd241701242584_
                               _tl241700242586_
                               _e241705242589_
                               _hd241704242592_
                               _tl241703242594_
                               _e241708242597_
                               _hd241707242600_
                               _tl241706242602_
                               _e241711242605_
                               _hd241710242608_
                               _tl241709242610_
                               _e241714242613_
                               _hd241713242616_
                               _tl241712242618_
                               _e241717242621_
                               _hd241716242624_
                               _tl241715242626_
                               _e241720242629_
                               _hd241719242632_
                               _tl241718242634_
                               _e241723242637_
                               _hd241722242640_
                               _tl241721242642_
                               ___splice252235252236_
                               _target241724242645_
                               _tl241726242647_)
                        (letrec ((_loop241727242650_
                                  (lambda (_hd241725242653_ _args241731242655_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd241725242653_))
                                        (let ((_e241728242658_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd241725242653_))))
                                          (let ((_lp-tl241730242663_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e241728242658_)))
                                                (_lp-hd241729242661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e241728242658_))))
                                            (let ((__tmp253178
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd241729242661_
                                                           _args241731242655_))))
                                              (declare (not safe))
                                              (_loop241727242650_
                                               _lp-tl241730242663_
                                               __tmp253178))))
                                        (let ((_args241732242666_
                                               (reverse _args241731242655_)))
                                          (let ((_L242669_ _args241732242666_)
                                                (_L242670_ _hd241722242640_)
                                                (_L242671_ _hd241713242616_)
                                                (_L242672_ _hd241704242592_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L242672_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L242671_
                                                        _self241672_)))
                                                (___kont252233252234_
                                                 _L242669_
                                                 _L242670_
                                                 _L242671_
                                                 _L242672_)
                                                (___match252524252525_
                                                 _e241696242565_
                                                 _hd241695242568_
                                                 _tl241694242570_
                                                 _e241699242573_
                                                 _hd241698242576_
                                                 _tl241697242578_
                                                 _e241702242581_
                                                 _hd241701242584_
                                                 _tl241700242586_
                                                 _e241705242589_
                                                 _hd241704242592_
                                                 _tl241703242594_
                                                 _e241708242597_
                                                 _hd241707242600_
                                                 _tl241706242602_
                                                 _e241711242605_
                                                 _hd241710242608_
                                                 _tl241709242610_
                                                 _e241714242613_
                                                 _hd241713242616_
                                                 _tl241712242618_
                                                 _e241717242621_
                                                 _hd241716242624_
                                                 _tl241715242626_
                                                 _e241720242629_
                                                 _hd241719242632_
                                                 _tl241718242634_
                                                 _e241723242637_
                                                 _hd241722242640_
                                                 _tl241721242642_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop241727242650_ _target241724242645_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx252231252232_))
                    (let ((_e241696242565_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx252231252232_))))
                      (let ((_tl241694242570_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241696242565_)))
                            (_hd241695242568_
                             (let ()
                               (declare (not safe))
                               (##car _e241696242565_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl241694242570_))
                            (let ((_e241699242573_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl241694242570_))))
                              (let ((_tl241697242578_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241699242573_)))
                                    (_hd241698242576_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241699242573_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd241698242576_))
                                    (let ((_e241702242581_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd241698242576_))))
                                      (let ((_tl241700242586_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e241702242581_)))
                                            (_hd241701242584_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e241702242581_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd241701242584_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd241701242584_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl241700242586_))
                                                    (let ((_e241705242589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl241700242586_))))
                                                      (let ((_tl241703242594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e241705242589_)))
                    (_hd241704242592_
                     (let () (declare (not safe)) (##car _e241705242589_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl241703242594_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl241697242578_))
                        (let ((_e241708242597_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl241697242578_))))
                          (let ((_tl241706242602_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e241708242597_)))
                                (_hd241707242600_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e241708242597_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd241707242600_))
                                (let ((_e241711242605_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd241707242600_))))
                                  (let ((_tl241709242610_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e241711242605_)))
                                        (_hd241710242608_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e241711242605_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd241710242608_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd241710242608_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl241709242610_))
                                                (let ((_e241714242613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl241709242610_))))
                                                  (let ((_tl241712242618_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e241714242613_)))
                                                        (_hd241713242616_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e241714242613_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl241712242618_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl241706242602_))
                                                            (let ((_e241717242621_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl241706242602_))))
                      (let ((_tl241715242626_
                             (let ()
                               (declare (not safe))
                               (##cdr _e241717242621_)))
                            (_hd241716242624_
                             (let ()
                               (declare (not safe))
                               (##car _e241717242621_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd241716242624_))
                            (let ((_e241720242629_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd241716242624_))))
                              (let ((_tl241718242634_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e241720242629_)))
                                    (_hd241719242632_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e241720242629_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd241719242632_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd241719242632_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl241718242634_))
                                            (let ((_e241723242637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl241718242634_))))
                                              (let ((_tl241721242642_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e241723242637_)))
                                                    (_hd241722242640_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e241723242637_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl241721242642_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl241715242626_))
                                                        (let ((___splice252235252236_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl241715242626_ '0))))
                  (let ((_tl241726242647_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252235252236_ '1)))
                        (_target241724242645_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice252235252236_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl241726242647_))
                        (___match252336252337_
                         _e241696242565_
                         _hd241695242568_
                         _tl241694242570_
                         _e241699242573_
                         _hd241698242576_
                         _tl241697242578_
                         _e241702242581_
                         _hd241701242584_
                         _tl241700242586_
                         _e241705242589_
                         _hd241704242592_
                         _tl241703242594_
                         _e241708242597_
                         _hd241707242600_
                         _tl241706242602_
                         _e241711242605_
                         _hd241710242608_
                         _tl241709242610_
                         _e241714242613_
                         _hd241713242616_
                         _tl241712242618_
                         _e241717242621_
                         _hd241716242624_
                         _tl241715242626_
                         _e241720242629_
                         _hd241719242632_
                         _tl241718242634_
                         _e241723242637_
                         _hd241722242640_
                         _tl241721242642_
                         ___splice252235252236_
                         _target241724242645_
                         _tl241726242647_)
                        (___match252524252525_
                         _e241696242565_
                         _hd241695242568_
                         _tl241694242570_
                         _e241699242573_
                         _hd241698242576_
                         _tl241697242578_
                         _e241702242581_
                         _hd241701242584_
                         _tl241700242586_
                         _e241705242589_
                         _hd241704242592_
                         _tl241703242594_
                         _e241708242597_
                         _hd241707242600_
                         _tl241706242602_
                         _e241711242605_
                         _hd241710242608_
                         _tl241709242610_
                         _e241714242613_
                         _hd241713242616_
                         _tl241712242618_
                         _e241717242621_
                         _hd241716242624_
                         _tl241715242626_
                         _e241720242629_
                         _hd241719242632_
                         _tl241718242634_
                         _e241723242637_
                         _hd241722242640_
                         _tl241721242642_))))
                (___match252524252525_
                 _e241696242565_
                 _hd241695242568_
                 _tl241694242570_
                 _e241699242573_
                 _hd241698242576_
                 _tl241697242578_
                 _e241702242581_
                 _hd241701242584_
                 _tl241700242586_
                 _e241705242589_
                 _hd241704242592_
                 _tl241703242594_
                 _e241708242597_
                 _hd241707242600_
                 _tl241706242602_
                 _e241711242605_
                 _hd241710242608_
                 _tl241709242610_
                 _e241714242613_
                 _hd241713242616_
                 _tl241712242618_
                 _e241717242621_
                 _hd241716242624_
                 _tl241715242626_
                 _e241720242629_
                 _hd241719242632_
                 _tl241718242634_
                 _e241723242637_
                 _hd241722242640_
                 _tl241721242642_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match252728252729_
                                                     _e241696242565_
                                                     _hd241695242568_
                                                     _tl241694242570_
                                                     _e241699242573_
                                                     _hd241698242576_
                                                     _tl241697242578_
                                                     _e241702242581_
                                                     _hd241701242584_
                                                     _tl241700242586_
                                                     _e241705242589_
                                                     _hd241704242592_
                                                     _tl241703242594_
                                                     _e241708242597_
                                                     _hd241707242600_
                                                     _tl241706242602_
                                                     _e241711242605_
                                                     _hd241710242608_
                                                     _tl241709242610_
                                                     _e241714242613_
                                                     _hd241713242616_
                                                     _tl241712242618_
                                                     _e241717242621_
                                                     _hd241716242624_
                                                     _tl241715242626_))))
                                            (___match252728252729_
                                             _e241696242565_
                                             _hd241695242568_
                                             _tl241694242570_
                                             _e241699242573_
                                             _hd241698242576_
                                             _tl241697242578_
                                             _e241702242581_
                                             _hd241701242584_
                                             _tl241700242586_
                                             _e241705242589_
                                             _hd241704242592_
                                             _tl241703242594_
                                             _e241708242597_
                                             _hd241707242600_
                                             _tl241706242602_
                                             _e241711242605_
                                             _hd241710242608_
                                             _tl241709242610_
                                             _e241714242613_
                                             _hd241713242616_
                                             _tl241712242618_
                                             _e241717242621_
                                             _hd241716242624_
                                             _tl241715242626_))
                                        (___match252404252405_
                                         _e241696242565_
                                         _hd241695242568_
                                         _tl241694242570_
                                         _e241699242573_
                                         _hd241698242576_
                                         _tl241697242578_
                                         _e241702242581_
                                         _hd241701242584_
                                         _tl241700242586_
                                         _e241705242589_
                                         _hd241704242592_
                                         _tl241703242594_
                                         _e241708242597_
                                         _hd241707242600_
                                         _tl241706242602_
                                         _e241711242605_
                                         _hd241710242608_
                                         _tl241709242610_
                                         _e241714242613_
                                         _hd241713242616_
                                         _tl241712242618_
                                         _e241717242621_
                                         _hd241716242624_
                                         _tl241715242626_
                                         _e241720242629_
                                         _hd241719242632_
                                         _tl241718242634_))
                                    (___match252728252729_
                                     _e241696242565_
                                     _hd241695242568_
                                     _tl241694242570_
                                     _e241699242573_
                                     _hd241698242576_
                                     _tl241697242578_
                                     _e241702242581_
                                     _hd241701242584_
                                     _tl241700242586_
                                     _e241705242589_
                                     _hd241704242592_
                                     _tl241703242594_
                                     _e241708242597_
                                     _hd241707242600_
                                     _tl241706242602_
                                     _e241711242605_
                                     _hd241710242608_
                                     _tl241709242610_
                                     _e241714242613_
                                     _hd241713242616_
                                     _tl241712242618_
                                     _e241717242621_
                                     _hd241716242624_
                                     _tl241715242626_))))
                            (___match252728252729_
                             _e241696242565_
                             _hd241695242568_
                             _tl241694242570_
                             _e241699242573_
                             _hd241698242576_
                             _tl241697242578_
                             _e241702242581_
                             _hd241701242584_
                             _tl241700242586_
                             _e241705242589_
                             _hd241704242592_
                             _tl241703242594_
                             _e241708242597_
                             _hd241707242600_
                             _tl241706242602_
                             _e241711242605_
                             _hd241710242608_
                             _tl241709242610_
                             _e241714242613_
                             _hd241713242616_
                             _tl241712242618_
                             _e241717242621_
                             _hd241716242624_
                             _tl241715242626_))))
                    (___match252666252667_
                     _e241696242565_
                     _hd241695242568_
                     _tl241694242570_
                     _e241699242573_
                     _hd241698242576_
                     _tl241697242578_
                     _e241702242581_
                     _hd241701242584_
                     _tl241700242586_
                     _e241705242589_
                     _hd241704242592_
                     _tl241703242594_
                     _e241708242597_
                     _hd241707242600_
                     _tl241706242602_
                     _e241711242605_
                     _hd241710242608_
                     _tl241709242610_
                     _e241714242613_
                     _hd241713242616_
                     _tl241712242618_))
                (___kont252249252250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont252249252250_))
                                            (___kont252249252250_))
                                        (___kont252249252250_))))
                                (___kont252249252250_))))
                        (___kont252249252250_))
                    (___kont252249252250_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont252249252250_))
                                                (___kont252249252250_))
                                            (___kont252249252250_))))
                                    (___kont252249252250_))))
                            (___kont252249252250_))))
                    (___kont252249252250_))))))))))
